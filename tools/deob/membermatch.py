#!/usr/bin/env python3
"""membermatch.py —— 成员级批量定名（**类身份已知**时的通用引擎）。

适用场景：类名没被混淆（或已定名），只有字段名/方法名被 ProGuard/R8 改名，
例如本仓库的 jsch（`com/jcraft/jsch/*` 类名原样保留，成员变成 `j6/DW/FH…`）。

判据三层，逐层收紧，全部可复现（写进报告 TSV 的 evidence 列）：

  1. `desc:` —— 描述符桶唯一（**证明**，不是形状巧合）
     改名不改描述符；同一类内 (旧名, 描述符) → (新名, 描述符) 是单射；
     ProGuard 只会删成员、不会凭空加（桥/合成除外，另标 synthetic）。
     ⇒ 某描述符在探针侧与 oracle 侧各只有一个非合成成员时，二者必为同一成员。

  2. `body:` —— 方法体 token 对齐（重载消歧）
     两边归一成同名 token 串：字符串常量 / 整数常量 / 调用与字段引用（owner+名+描述符）/
     类型字面量，丢掉寄存器号、分支、偏移。打分 = 序列相似度 × 0.5 + 多重集 Jaccard × 0.5，
     逐轮迭代（先定下来的成员名会让"跨类调用"这个 token 变得可对齐），
     取"互为最优 + 领先第二名"的对，分数与领先幅度写进证据。

  3. `usg:` —— 字段访问签名
     字段没有方法体 → 用"哪些（已对齐的）方法以读/写方式碰过它"当指纹，与 oracle 侧对比。

另外提供 `verify_graph()`：把"探针里 A 调 B"与"oracle 里 A' 调 B'"逐条对照，
不一致即说明某个成员名判错（可复现的全局自证）。
"""
import collections
import difflib
import os
import re
import struct
import zipfile

import jvm
import smali

REF = re.compile(r'L([\w/$]+);->([\w$<>]+)(\([^)]*\)\S+|:\S+)')
STR = re.compile(r'^const-string(?:/jumbo)?\s+\S+\s*,\s*"(.*)"\s*$')
INT_OPS = ('const/4', 'const/16', 'const', 'const/high16')
TYPE_OPS = ('new-instance', 'const-class', 'check-cast', 'instance-of',
            'new-array', 'filled-new-array', 'array-length-type')
# 小整数：iconst / bipush / sipush 与 dex 的 const-* 对齐；0/1 太常见，会稀释信号
def _keep_int(v):
    return 2 <= abs(v) <= 0xffff


def _unescape(s):
    out = []
    i = 0
    while i < len(s):
        c = s[i]
        if c == '\\' and i + 1 < len(s):
            n = s[i+1]
            out.append({'n': '\n', 't': '\t', 'r': '\r', '"': '"', "'": "'",
                        '\\': '\\'}.get(n, n))
            i += 2
            continue
        out.append(c)
        i += 1
    return ''.join(out)


def _short(owner):
    return owner.rsplit('/', 1)[-1]


def _tok(kind, owner, key):
    return '%s|%s|%s' % (kind, _short(owner), key)


def _key(kind, owner, name, desc, lookup, obf):
    """token 里的第三段：混淆者查映射（查不到时退化为描述符），非混淆者原样用名字。"""
    if kind in ('c', 'f') and owner in obf:
        got = lookup.get((kind, owner, name, desc if kind == 'c' else ''))
        # 映射还没建立时退化成"描述符通道"，这样名字通道至少不会把分数拉到 0
        return got if got else desc
    return name if kind in ('c', 'f') else desc


# ---------------------------------------------------------------- 探针侧（smali）
def smali_seq(body, lookup, obf):
    """→ (名字通道 token, 描述符通道 token, [(kind, owner, name, desc)])

    两个通道：名字通道在"映射已知"时才命中；描述符通道永远命中（改名不改描述符）。
    """
    na, de, refs = [], [], []
    for line in body.split('\n'):
        s = line.strip()
        if not s or s[0] in '.:#':
            continue
        op = s.split(None, 1)[0]
        m = REF.search(s)
        if m and (op.startswith(('invoke', 'iget', 'iput', 'sget', 'sput'))):
            owner, name, desc = m.group(1), m.group(2), m.group(3)
            kind = 'f' if desc.startswith(':') else 'c'
            desc = desc[1:] if desc.startswith(':') else desc
            refs.append((kind, owner, name, desc))
            na.append(_tok(kind, owner, _key(kind, owner, name, desc, lookup, obf)))
            de.append(_tok(kind, owner, desc))
            continue
        if op in INT_OPS:
            try:
                v = int(s.rsplit(',', 1)[1].strip(), 0)
            except ValueError:
                continue
            if _keep_int(v):
                na.append('i|%d' % v)
                de.append('i|%d' % v)
            continue
        if op.startswith('const-string'):
            ms = STR.match(s)
            if ms:
                na.append('s|' + _unescape(ms.group(1)))
                de.append('s|' + _unescape(ms.group(1)))
            continue
        if op.split('/')[0] in TYPE_OPS or op.startswith(('new-', 'const-class')):
            mt = re.search(r'L([\w/$]+);', s)
            if mt:
                na.append(_tok('t', mt.group(1), ''))
                de.append(_tok('t', mt.group(1), ''))
    return na, de, refs


# ---------------------------------------------------------------- oracle 侧（class）
def oracle_seq(cl, code):
    na, de, refs = [], [], []
    for _off, op, ops in jvm.insns(code):
        if op in (0x12, 0x13):
            idx = ops[0] if op == 0x12 else struct.unpack_from('>H', ops)[0]
            c = jvm.const_of(cl, idx)
            if c and c[0] == 'S':
                na.append('s|' + c[1])
                de.append('s|' + c[1])
            elif c and c[0] == 'I' and _keep_int(c[1]):
                na.append('i|%d' % c[1])
                de.append('i|%d' % c[1])
            elif idx in cl.get('clsidx', {}):
                na.append(_tok('t', cl['utf'][cl['clsidx'][idx]], ''))
                de.append(_tok('t', cl['utf'][cl['clsidx'][idx]], ''))
            continue
        if 0xb2 <= op <= 0xb5 or 0xb6 <= op <= 0xb9:
            idx = struct.unpack_from('>H', ops)[0]
            rm = cl['refmap'].get(idx)
            if not rm:
                continue
            kind = 'f' if op <= 0xb5 else 'c'
            owner, name, desc = rm[0], rm[1], rm[2]
            refs.append((kind, owner, name, desc))
            na.append(_tok(kind, owner, name))
            de.append(_tok(kind, owner, desc))
            continue
        if 0x02 <= op <= 0x08:
            v = op - 0x03
            if _keep_int(v):
                na.append('i|%d' % v)
                de.append('i|%d' % v)
            continue
        if op == 0x10:
            v = struct.unpack_from('>b', ops)[0]
            if _keep_int(v):
                na.append('i|%d' % v)
                de.append('i|%d' % v)
            continue
        if op == 0x11:
            v = struct.unpack_from('>h', ops)[0]
            if _keep_int(v):
                na.append('i|%d' % v)
                de.append('i|%d' % v)
            continue
        if op in (0xbb, 0xbd, 0xc0, 0xc1, 0xc5):
            idx = struct.unpack_from('>H', ops)[0]
            if idx in cl.get('clsidx', {}):
                na.append(_tok('t', cl['utf'][cl['clsidx'][idx]], ''))
                de.append(_tok('t', cl['utf'][cl['clsidx'][idx]], ''))
    return na, de, refs


# ---------------------------------------------------------------- 打分
def _sim(a, b):
    if not a and not b:
        return 1.0
    if not a or not b:
        return 0.0
    r = difflib.SequenceMatcher(None, a, b, autojunk=False).ratio()
    ca, cb = collections.Counter(a), collections.Counter(b)
    uni = sum((ca | cb).values())
    j = sum((ca & cb).values()) / uni if uni else 1.0
    return 0.5 * r + 0.5 * j


def score(pair_a, pair_b, use_name=None):
    """pair = (名字通道, 描述符通道)。

    `use_name=None` 时按"探针侧名字通道是否有信息"自动选：
      * 没信息（还没定下任何成员名）→ 只用描述符通道（改名不改描述符，这一路永远可比）；
      * 有信息（至少一个引用已按真名对上）→ 名字通道占 0.65，描述符通道 0.35。
        名字通道能区分"读哪个字段/调哪个方法"这类描述符相同的情况。
    """
    sn = _sim(pair_a[0], pair_b[0])
    sd = _sim(pair_a[1], pair_b[1])
    if use_name is None:
        use_name = pair_a[0] != pair_a[1]
    return 0.65 * sn + 0.35 * sd if use_name else sd


def _unused(a, b):
    if not a and not b:
        return 1.0
    if not a or not b:
        return 0.0
    r = difflib.SequenceMatcher(None, a, b, autojunk=False).ratio()
    ca, cb = collections.Counter(a), collections.Counter(b)
    uni = sum((ca | cb).values())
    j = sum((ca & cb).values()) / uni if uni else 1.0
    return 0.5 * r + 0.5 * j


def callsites_probe(pst, cls, lookup, obf):
    """→ {(owner, 名, 描述符): {(调用者类, 调用者真名, 第几次)}}（探针侧，名字走映射）"""
    out = collections.defaultdict(set)
    for (n, d, st, syn) in pst['methods']:
        caller = lookup.get(('c', cls, n, d), n)
        cnt = collections.Counter()
        for (kind, owner, name, desc) in smali_seq(pst['body'][(n, d)], lookup, obf)[2]:
            real = _key(kind, owner, name, desc, lookup, obf)
            k = (owner, real, desc)
            out[k].add((cls, caller, cnt[k]))
            cnt[k] += 1
    return out


def callsites_oracle(ocl, cls):
    out = collections.defaultdict(set)
    for m in ocl['members']:
        if m['kind'] != 'm' or not m['code']:
            continue
        cnt = collections.Counter()
        for (kind, owner, name, desc) in oracle_seq(ocl, m['code'])[2]:
            k = (owner, name, desc)
            out[k].add((cls, m['name'], cnt[k]))
            cnt[k] += 1
    return out


def merge_calls(*dicts):
    out = collections.defaultdict(set)
    for d in dicts:
        for k, v in d.items():
            out[k] |= v
    return out


def merge_counts(*counters):
    out = collections.Counter()
    for c in counters:
        out.update(c)
    return out


def assign(plist, olist, scorefn):
    """贪心 + 互为最优/领先幅度 → [(i, j, sc, lead_p, lead_o)]"""
    if not plist or not olist:
        return []
    M = [[scorefn(p, o) for o in olist] for p in plist]
    pairs = sorted(((M[i][j], i, j) for i in range(len(plist)) for j in range(len(olist))),
                   reverse=True)
    used_i, used_j, out = set(), set(), []
    for sc, i, j in pairs:
        if i in used_i or j in used_j:
            continue
        alt_i = max([M[i][k] for k in range(len(olist)) if k not in used_j and k != j] or [0.0])
        alt_j = max([M[k][j] for k in range(len(plist)) if k not in used_i and k != i] or [0.0])
        out.append((i, j, sc, sc - alt_i, sc - alt_j))
        used_i.add(i)
        used_j.add(j)
    return out


# ---------------------------------------------------------------- 单类匹配
def match_class(cls, pst, ocl, lookup, obf, min_score=0.30, min_lead=0.12,
                p_call=None, o_call=None, votes=None, taken=None):
    """返回 dict(method=[...], field=[...], todo=[...])；method 项含 kind/score/lead。"""
    res = dict(method=[], field=[], todo=[])
    om = [m for m in ocl['members'] if m['kind'] == 'm']
    pm = pst['methods']
    taken = taken or {}
    ob = collections.defaultdict(list)
    for m in om:
        ob[m['desc']].append(m)
    pb = collections.defaultdict(list)
    for (n, d, st, syn) in pm:
        pb[d].append((n, st, syn))
    ocache = {}
    seqp, informative = {}, {}
    for (n, d, st, syn) in pm:
        seq = smali_seq(pst['body'][(n, d)], lookup, obf)[:2]
        seqp[(n, d)] = seq
        informative[(n, d)] = seq[0] != seq[1]

    def emit(pn, pd, ometh, ev, sc=None, lead=None):
        res['method'].append(dict(probe=pn, desc=pd, real=ometh['name'], ev=ev,
                                  score=sc, lead=lead,
                                  bodyless=not (seqp.get((pn, pd)) or ([],))[0]))

    for d, pl in pb.items():
        all_ol = ob.get(d, [])
        ol = [m for m in all_ol if m['name'] not in taken.get((cls, d), ())]
        if not all_ol:
            for (n, st, syn) in pl:
                if not syn and not n.startswith('<'):
                    res['todo'].append(dict(kind='method', probe=n, desc=d, why='no-oracle-descriptor'))
            continue
        if not ol:
            continue
        # 构造器/静态块：名字不变，直接按 (名, 描述符) 对上
        for (n, st, syn) in [x for x in pl if x[0].startswith('<')]:
            hit = [m for m in ol if m['name'] == n]
            if len(hit) == 1:
                res['method'].append(dict(probe=n, desc=d, real=n, ev='ctor', score=1.0, lead=1.0))
                ol = [m for m in ol if m is not hit[0]]
        pl = [x for x in pl if not x[0].startswith('<')]
        if not pl or not ol:
            continue
        if len(pl) == 1 and len(ol) == 1:
            (n, st, syn) = pl[0]
            m = ol[0]
            if bool(m['acc'] & 8) != st:
                res['todo'].append(dict(kind='method', probe=n, desc=d, why='static-mismatch',
                                        note='oracle=%s' % m['name']))
            elif not (m['acc'] & 0x1000) and not syn:
                emit(n, d, m, 'desc:', 1.0, 1.0)
            continue
        # 重载：按方法体 token 对齐
        # 探针名本身就在候选里 ⇒ 那是 identity（不需要映射），别让它被别的探针抢走
        ident = {x[0] for x in pl}
        cands = [m for m in ol if not (m['acc'] & 0x1000) and m['name'] not in ident]
        # 只让"还没定名"的探针参与（已定的在 seen 里，别再掺和进来破坏 1:1 判断）
        psel = [x for x in pl if not x[2] and not lookup.get(('c', cls, x[0], d))]
        if not cands:
            continue
        if not cands or not psel:
            continue
        # 调用集包含：某个探针的"已定名调用"只有唯一候选都包含 ⇒ 直接定死
        for _ in range(3):
            locked = []
            for (pn, st0, _sy0) in psel:
                need = probe_callees(pst, cls, pn, d, lookup)
                if len(need) < 3:   # 1~2 条调用的"包含"太容易撞（实测会把别的成员挤掉）
                    continue
                sub = narrow_by_callees(ocl, cands, need, ocache)
                if len(sub) == 1 and bool(sub[0]['acc'] & 8) == st0:
                    emit(pn, d, sub[0], 'call:包含', 1.0, 1.0)
                    locked.append(pn)
                    cands = [m for m in cands if m is not sub[0]]
            if not locked:
                break
            psel = [x for x in psel if x[0] not in locked]
            if not psel or not cands:
                break
        if not psel or not cands:
            continue
        oseq = {m['name'] + m['desc']: oracle_seq(ocl, m['code'] or b'')[:2] for m in cands}
        vmax = max([votes.get(('c', cls, d, pn, o['name']), 0) for (pn, _s, _y) in psel
                    for o in cands] or [0]) if votes else 0

        def pair_score(p, o):
            base = score(seqp[(p[0], d)], oseq[o['name'] + o['desc']], informative[(p[0], d)])
            if vmax:
                base = 0.65 * base + 0.35 * votes.get(('c', cls, d, p[0], o['name']), 0) / vmax
            if p_call is None:
                return base
            a = p_call.get((cls, p[0], d), set())
            b = o_call.get((cls, o['name'], o['desc']), set())
            if not a or not b:
                return base
            return 0.7 * base + 0.3 * (len(a & b) / len(a | b))

        got = assign(psel, cands, pair_score)
        for i, j, sc, lp, lo in got:
            n, st, syn = psel[i]
            m = cands[j]
            if bool(m['acc'] & 8) != st:
                res['todo'].append(dict(kind='method', probe=n, desc=d, why='static-mismatch',
                                        note='oracle=%s' % m['name']))
                continue
            if sc >= min_score and lp >= min_lead and lo >= min_lead:
                emit(n, d, m, 'body:%.2f/%+.2f' % (sc, min(lp, lo)), sc, min(lp, lo))
            elif m['name'] == n:
                pass          # 探针名本来就是真名（`run`/`close`/`flush` 这类），不需要映射
            else:
                res['todo'].append(dict(kind='method', probe=n, desc=d, why='body-weak',
                                        note='best=%s %.2f (lead %.2f/%.2f)' % (m['name'], sc, lp, lo)))
    return res


def match_fields(cls, pst, ocl, p_usage, o_usage, lookup, votes=None, taken=None,
                 p_src=None, o_src=None):
    """字段：描述符桶唯一 → 直接对上；否则用读写签名（usg）打分。

    → (匹配列表, 待人工列表)
    """
    res, todo = [], []
    of = [m for m in ocl['members'] if m['kind'] == 'f']
    pf = pst['fields']
    taken = taken or {}
    ob = collections.defaultdict(list)
    for m in of:
        ob[(m['desc'], bool(m['acc'] & 8))].append(m)
    pb = collections.defaultdict(list)
    for (n, d, st, syn) in pf:
        pb[(d, st)].append((n, syn))
    for key, pl in pb.items():
        all_ol = ob.get(key, [])
        ol = [m for m in all_ol if m['name'] not in taken.get(cls, ())]
        if not all_ol:
            for (n, syn) in pl:
                if not syn:
                    todo.append(dict(kind='field', probe=n, desc=key[0], why='no-oracle-descriptor'))
            continue
        if not ol:
            continue
        if len(pl) == 1 and len(ol) == 1:
            res.append(dict(probe=pl[0][0], desc=key[0], real=ol[0]['name'], ev='desc:',
                            score=1.0, lead=1.0))
            continue
        cands = list(ol)                      # 合成字段（this$0 / val$handle…）也是真名，要能配
        psel = list(pl)
        if not cands or not psel:
            continue
        mx = max([votes.get(('f', cls, key[0], pn, o['name']), 0) for (pn, _s) in psel
                  for o in cands] or [0]) if votes else 0

        def field_score(p, o):
            usg = _usg_score(p_usage.get((cls, p[0], key[0]), set()),
                             o_usage.get((cls, o['name'], o['desc']), set()))
            if not mx:
                return usg
            return 0.5 * usg + 0.5 * votes.get(('f', cls, key[0], p[0], o['name']), 0) / mx

        got = assign(psel, cands, field_score)
        for i, j, sc, lp, lo in got:
            if sc >= 0.5 and min(lp, lo) >= 0.1:
                res.append(dict(probe=psel[i][0], desc=key[0], real=cands[j]['name'],
                                ev='usg:%.2f/%+.2f' % (sc, min(lp, lo)), score=sc,
                                lead=min(lp, lo)))
            elif cands[j]['name'] != psel[i][0]:
                todo.append(dict(kind='field', probe=psel[i][0], desc=key[0], why='usage-weak',
                                 note='best=%s %.2f (lead %.2f/%.2f)' % (
                                     cands[j]['name'], sc, lp, lo)))
        done = {cands[j]['name'] for _i, j, *_ in got}
        for m in cands:
            if m['name'] not in done and not any(psel[i][0] == m['name'] for i, *_ in got):
                pass
    return res, todo


def _usg_score(a, b):
    if not a and not b:
        return 0.0
    return len(a & b) / len(a | b)


# ---------------------------------------------------------------- 找到 oracle 类
def oracle_lookup(oracle_jars):
    """→ (按类名找 (label, jar) 的函数, 全部 oracle 类名集合)"""
    zs = [(l, zipfile.ZipFile(p)) for l, p in oracle_jars]
    names = {}
    for l, z in zs:
        for n in z.namelist():
            if n.endswith('.class') and not n.startswith('META-INF'):
                names.setdefault(n[:-6], l)

    def find(cls):
        for l, z in zs:
            try:
                return l, z.read(cls + '.class')
            except KeyError:
                continue
        return None, None
    return find, names


def probe_classes(roots, pkg):
    """遍历 smali 根下 pkg 目录 → {类描述符: 文件路径}"""
    out = {}
    sub = pkg.replace('.', '/')
    for r in roots:
        base = os.path.join(r, sub)
        if not os.path.isdir(base):
            continue
        for dp, _dn, fs in os.walk(base):
            for f in fs:
                if not f.endswith('.smali'):
                    continue
                fp = os.path.join(dp, f)
                st = smali.parse(fp)
                if st:
                    out[st['descriptor']] = fp
    return out


def _order_votes_of(P, O, sink):
    """把同一方法体内、同一 (owner, 描述符) 组的访问序列逐个位置投票。

    只要求"两侧位置对齐且一致"：第 i 个访问在两边必须是同一成员。重复访问同一成员
    也允许——只要``p[i]==p[j] ⇔ o[i]==o[j]``，整组就还是可用的（D8 只打乱声明顺序，
    不打乱方法体里的语句顺序）。
    """
    for key, pl in P.items():
        ol = O.get(key)
        if not ol or len(pl) != len(ol):
            continue
        d = {}
        ok = True
        for a, b in zip(pl, ol):
            if a in d and d[a] != b:
                ok = False
                break
            d[a] = b
        if not ok or len(set(d.values())) != len(d):
            continue
        for a, b in d.items():
            sink[key + (a, b)] += 1


def order_votes(cls, pst, ocl, lookup, oseq_cache):
    """→ Counter{('f'|'c', owner, 描述符, 探针名, oracle 名): 票数}

    两种用途同源：
      * `f`：字段——`Channel.<init>` 里 24 次赋值的先后顺序 ↔ oracle 构造器同一顺序，
        直接定出 `lwsize_max/lwsize/lmpsize/rmpsize…`；
      * `c`：方法——同一方法里依次调用的几个同描述符方法（`setPty/setXForwarding/setAgentForwarding`
        一类的开关注入），顺序同样是源码顺序。
    """
    votes = collections.Counter()
    om = {m['name'] + m['desc']: m for m in ocl['members'] if m['kind'] == 'm'}
    for (n, d, st, syn) in pst['methods']:
        real = lookup.get(('c', cls, n, d)) or (n if n.startswith('<') else None)
        if not real:
            continue
        m = om.get(real + d)
        if not m or not m['code']:
            continue
        pk = (cls, real, d)
        if pk not in oseq_cache:
            oseq_cache[pk] = oracle_seq(ocl, m['code'])[2]
        P = collections.defaultdict(list)
        for (kind, owner, name, desc) in smali_seq(pst['body'][(n, d)], {}, set())[2]:
            P[(kind, owner, desc)].append(name)
        O = collections.defaultdict(list)
        for (kind, owner, name, desc) in oseq_cache[pk]:
            O[(kind, owner, desc)].append(name)
        _order_votes_of(P, O, votes)
    return votes


def field_sources_probe(pst, cls, lookup, obf=None):
    """字段"赋值来源"签名：写这个字段之前紧邻的那条 token（已定名调用 / 字符串 / 整数 / 读的字段）。

    `V_S = kex.getV_S()` 这种赋值在两侧是同构的（调用名一旦定下来就可比），
    专治"同描述符一串字段 + 方法体写得不像"的情况（Session 的 6 个 `byte[]`、
    Proxy 的 `proxy_host/user/passwd`、ChannelX11 的 cookie/table）。
    """
    out = collections.defaultdict(set)
    for (n, d, st, syn) in pst['methods']:
        last = None
        for line in pst['body'][(n, d)].split('\n'):
            t = line.strip()
            if not t or t[0] in '.:#':
                continue
            op = t.split(None, 1)[0]
            m = REF.search(t)
            if op.startswith('invoke') and m:
                owner, name, desc = m.group(1), m.group(2), m.group(3)
                last = ('c', _key('c', owner, name, desc.lstrip(':'), lookup, obf or set()), desc)
                continue
            if op.startswith('const-string'):
                ms = STR.match(t)
                last = ('s', _unescape(ms.group(1)) if ms else '?', '')
                continue
            if op.startswith(('iget', 'sget')) and m:
                last = ('r', _key('f', m.group(1), m.group(2), '', lookup, obf or set()), '')
                continue
            if op.startswith(('iput', 'sput')) and m:
                owner, name, fdesc = m.group(1), m.group(2), m.group(3).lstrip(':')
                if last:
                    out[(owner, name, fdesc)].add(last)
                last = None
                continue
            if op in INT_OPS:
                last = ('i', t.rsplit(',', 1)[-1].strip(), '')
                continue
    return out


def field_sources_oracle(ocl, cls):
    out = collections.defaultdict(set)
    for m in ocl['members']:
        if m['kind'] != 'm' or not m['code']:
            continue
        last = None
        for _off, op, ops in jvm.insns(m['code']):
            if 0xb6 <= op <= 0xb9:
                rm = ocl['refmap'].get(struct.unpack_from('>H', ops)[0])
                if rm:
                    last = ('c', rm[1], rm[2])
                continue
            if op in (0x12, 0x13):
                idx = ops[0] if op == 0x12 else struct.unpack_from('>H', ops)[0]
                c = jvm.const_of(ocl, idx)
                if c:
                    last = ('s' if c[0] == 'S' else 'i', c[1], '')
                continue
            if op in (0xb2, 0xb4):
                rm = ocl['refmap'].get(struct.unpack_from('>H', ops)[0])
                if rm:
                    last = ('r', rm[1], '')
                continue
            if op in (0xb3, 0xb5):
                rm = ocl['refmap'].get(struct.unpack_from('>H', ops)[0])
                if rm and last:
                    out[(rm[0], rm[1], rm[2])].add(last)
                last = None
    return out


def usage_probe(pst, cls, lookup):
    """字段读写签名（探针侧）：{(owner,名,描述符): {(调用者类, 调用者真名, 读/写)}}"""
    out = collections.defaultdict(set)
    for (n, d, st, syn) in pst['methods']:
        caller = lookup.get(('c', cls, n, d), n)
        for line in pst['body'][(n, d)].split('\n'):
            s = line.strip()
            if not s.startswith(('iget', 'iput', 'sget', 'sput')):
                continue
            m = REF.search(s)
            if not m:
                continue
            kind = 'w' if s.startswith(('iput', 'sput')) else 'r'
            out[(m.group(1), m.group(2), m.group(3).lstrip(':'))].add((cls, caller, kind))
    return out


def usage_oracle(ocl, cls):
    out = collections.defaultdict(set)
    for m in ocl['members']:
        if m['kind'] != 'm' or not m['code']:
            continue
        for _off, op, ops in jvm.insns(m['code']):
            if not (0xb2 <= op <= 0xb5):
                continue
            rm = ocl['refmap'].get(struct.unpack_from('>H', ops)[0])
            if rm:
                out[(rm[0], rm[1], rm[2])].add(
                    (cls, m['name'], 'w' if op in (0xb3, 0xb5) else 'r'))
    return out


def run(P, pkg, part=None, apply=False, report=None, rounds=8, sweeps=3,
        min_score=0.30, min_lead=0.12, log=print):
    """批量定名主流程。

    一次 `sweep` 内部（单调、只增不改判）：

      0. **字段预跑**：用「构造器里赋值的先后顺序」把同描述符的一组字段对齐
         （`Channel.<init>` 24 次赋值与 oracle 构造器逐个位置对应），只需要构造器的对应；
      1. **方法**：描述符桶唯一 → 证明；重载用 body token + 调用顺序票 + 调用点指纹；
      2. **字段**：描述符桶唯一 → 证明；否则用读写签名 + 同序票；
      3. 重复 1~2 直到没有新命中。

    一次 sweep 会把"抢跑"的错误锁死（例如 `Channel.write/write_ext` 在 `IO.put/put_ext`
    定名前就配错了），所以外面再套**多遍扫描**：每遍结束把 `desc:` 级别的**证明**结果
    补进种子（种子不参与改判），重跑一遍——越跑信息越全，几遍内收敛。
    """
    find, _onames = oracle_lookup(P.oracle_jars)
    roots = P.probe_roots or ([P.probe_dir] if P.probe_dir else [])
    classes = probe_classes(roots, pkg)
    if not classes:
        raise SystemExit('在 probe_roots 下没找到 %s：%s' % (pkg, roots))
    obf = set(classes)
    parsed, ocls = {}, {}
    for c in sorted(classes):
        parsed[c] = smali.parse(classes[c])
        _label, raw = find(c)
        if raw is not None:
            ocls[c] = jvm.parse(raw)
    log('探针类 %d（oracle 命中 %d）' % (len(parsed), len(ocls)))
    log('探针方法 %d（非合成）/ 字段 %d' % (
        sum(1 for c in ocls for m in parsed[c]['methods'] if not m[3]),
        sum(len(parsed[c]['fields']) for c in ocls)))

    seed_rows = seed_from_truth(P, part, pkg)
    o_call = merge_calls(*[callsites_oracle(ocls[c], c) for c in ocls])
    o_usage = merge_calls(*[usage_oracle(ocls[c], c) for c in ocls])
    o_src = merge_calls(*[field_sources_oracle(ocls[c], c) for c in ocls])
    oseq_cache = {}
    if seed_rows:
        log('沿用已有真相 %d 行（%d 个类块）' % (
            len(seed_rows), len({x[0] for x in seed_rows})))

    def _is_m(kind):
        return kind in ('m', 'method')

    def base_of(extra):
        d = {}
        for (cls, kind, old, desc, new) in seed_rows + extra:
            m = _is_m(kind)
            d[('c' if m else 'f', cls, old, desc if m else '')] = new
        return d

    def sweep(extra, want_todo):
        locked_m, locked_f = collections.defaultdict(set), collections.defaultdict(set)
        for (cls, kind, old, desc, new) in seed_rows + extra:
            if _is_m(kind):
                locked_m[(cls, desc)].add(new)
            else:
                locked_f[cls].add(new)
        base_lookup = base_of(extra)
        rows_m, rows_f, todo = [], [], []
        seen_m, seen_f = set(), set()
        for (cls, kind, old, desc, new) in seed_rows + extra:
            (seen_m if _is_m(kind) else seen_f).add((cls, old, desc))
        taken_m = collections.defaultdict(set, {k: set(v) for k, v in locked_m.items()})
        taken_f = collections.defaultdict(set, {k: set(v) for k, v in locked_f.items()})

        def lookup_now():
            d = dict(base_lookup)
            for r in rows_m + rows_f:
                d[('c' if r['kind'] == 'method' else 'f', r['cls'], r['probe'],
                   r['desc'] if r['kind'] == 'method' else '')] = r['real']
            return d

        def run_fields(lookup, first):
            p_usage = merge_calls(*[usage_probe(parsed[c], c, lookup) for c in ocls])
            p_src = merge_calls(*[field_sources_probe(parsed[c], c, lookup, obf) for c in ocls])
            votes = merge_counts(*[order_votes(c, parsed[c], ocls[c], lookup, oseq_cache)
                                   for c in ocls])
            n = 0
            for c in sorted(ocls):
                fr, ft = match_fields(c, parsed[c], ocls[c], p_usage, o_usage, lookup, votes,
                                      taken_f, p_src, o_src)
                for r in fr:
                    k = (c, r['probe'], r['desc'])
                    if k in seen_f:
                        continue
                    seen_f.add(k)
                    taken_f[c].add(r['real'])
                    if r['real'] != r['probe']:
                        rows_f.append(dict(cls=c, kind='field', **r))
                        n += 1
                if first and want_todo:
                    todo.extend(dict(cls=c, **t) for t in ft)
            return n

        pre = run_fields(base_lookup, True)
        for rnd in range(rounds):
            lookup = lookup_now()
            p_call = merge_calls(*[callsites_probe(parsed[c], c, lookup, obf) for c in ocls])
            votes = merge_counts(*[order_votes(c, parsed[c], ocls[c], lookup, oseq_cache)
                                   for c in ocls])
            new_m = 0
            for c in sorted(ocls):
                got = match_class(c, parsed[c], ocls[c], lookup, obf, min_score, min_lead,
                                  p_call, o_call, votes, taken_m)
                for r in got['method']:
                    k = (c, r['probe'], r['desc'])
                    if k in seen_m:
                        continue
                    seen_m.add(k)
                    if r['real'] != r['probe']:
                        taken_m[(c, r['desc'])].add(r['real'])
                        rows_m.append(dict(cls=c, kind='method', **r))
                        new_m += 1
                if rnd == 0 and want_todo:
                    todo.extend(dict(cls=c, **t) for t in got['todo'])
            new_f = run_fields(lookup_now(), False)
            if not new_m and not new_f:
                break
        return rows_m, rows_f, todo, pre

    extra, prev_key, rows_m, rows_f, todo = [], None, [], [], []
    for sw in range(sweeps):
        rows_m, rows_f, todo, pre = sweep(extra, sw >= 0)
        key = frozenset((r['cls'], r['kind'], r['probe'], r['desc'], r['real'])
                        for r in rows_m + rows_f)
        log('  第 %d 遍：方法 %d / 字段 %d（字段预跑 %d）' % (sw + 1, len(rows_m),
                                                          len(rows_f), pre))
        if key == prev_key:
            break
        prev_key = key
        # 把"证明级"（桶唯一）结果并进种子，下一遍在更全的名字空间里重算
        proof = [(r['cls'], r['kind'], r['probe'], r['desc'], r['real'])
                 for r in rows_m + rows_f if r['ev'] == 'ctor' or r['ev'].startswith('desc')]
        known = {(x[0], x[1], x[2], x[3]) for x in extra}
        extra += [x for x in proof if (x[0], x[1], x[2], x[3]) not in known]

    locked_all = collections.defaultdict(set)
    for (c, k, old, d, new) in seed_rows + extra:
        if _is_m(k):
            locked_all[(c, d)].add(new)
    if ocls:
        full_lookup = {('c' if _is_m(k) else 'f', c, old, d if _is_m(k) else ''): new
                       for (c, k, old, d, new) in seed_rows + extra}
        for r in rows_m:
            full_lookup[('c', r['cls'], r['probe'], r['desc'])] = r['real']
        for r in rows_f:
            full_lookup[('f', r['cls'], r['probe'], '')] = r['real']
        fixed = repair_by_graph(parsed, ocls, rows_m + rows_f, full_lookup, locked_all,
                                oseq_cache, log=log)
        if fixed:
            log('  按调用图修复 %d 个方法名' % fixed)

    def _key(cls, kind, name, desc):
        return (cls, kind, name, desc if kind == 'method' else '')

    seed_dicts, have = [], set()
    for (c, k, old, d, new) in seed_rows + extra:
        kind = 'method' if _is_m(k) else 'field'
        key = _key(c, kind, old, d)
        if key in have:
            continue
        have.add(key)
        seed_dicts.append(dict(cls=c, kind=kind, probe=old, desc=d, real=new,
                               ev='seed' if (c, k, old, d, new) in set(seed_rows) else 'seed:proof',
                               score=None, lead=None))
    all_rows = seed_dicts + rows_m + rows_f
    # 顺序：先把覆写家族补全（FART 按 (名,描述符) 认覆写）→ 再统一/撤掉冲突 → 最后同类去重。
    # 不能反过来：撤掉之后如果又跑闭包，会把刚撤掉的名字从别的类再灌回来（死循环）。
    lookup_final = {}
    for r in all_rows:
        lookup_final[('c' if r['kind'] == 'method' else 'f', r['cls'], r['probe'],
                      r['desc'] if r['kind'] == 'method' else '')] = r['real']
    eliminate(parsed, ocls, all_rows, lookup_final, log=log)
    closure_overrides(parsed, all_rows, log=log)        # 子类 → 祖先
    closure_down(parsed, ocls, all_rows, log=log)       # 祖先（已证明）→ 子类/实现类
    closure_overrides(parsed, all_rows, log=log)        # 再补一次向上（向下补出来的行也占位）
    # 排除法/传播都可能引入"差一位"的错（例如 `setP ↔ setG`），再用调用图复核一次
    lookup_final = {}
    for r in all_rows:
        lookup_final[('c' if r['kind'] == 'method' else 'f', r['cls'], r['probe'],
                      r['desc'] if r['kind'] == 'method' else '')] = r['real']
    fixed = repair_by_graph(parsed, ocls, all_rows, lookup_final, locked_all, oseq_cache, log=log)
    if fixed:
        log('  按调用图复核：又改判 %d 条' % fixed)
        lookup_final = {}
        for r in all_rows:
            lookup_final[('c' if r['kind'] == 'method' else 'f', r['cls'], r['probe'],
                          r['desc'] if r['kind'] == 'method' else '')] = r['real']
        eliminate(parsed, ocls, all_rows, lookup_final, log=log)   # 改判后可能又空出"最后一名"
        closure_overrides(parsed, all_rows, log=log)
        closure_down(parsed, ocls, all_rows, log=log)
    unify_families(parsed, all_rows, log=log)
    dedupe_targets(all_rows, log=log)
    todo, gap_stat = report_gap(parsed, ocls, all_rows, todo, log=log)
    stats = dict(classes=len(classes),
                 methods=sum(len(v['methods']) for v in parsed.values()),
                 fields=sum(len(v['fields']) for v in parsed.values()),
                 mapped_m=len([r for r in all_rows if r['kind'] == 'method']),
                 mapped_f=len([r for r in all_rows if r['kind'] == 'field']))
    if report:
        write_report(report, all_rows, todo)
    if apply:
        write_members(P, part, pkg, all_rows, log=log)
    return all_rows, todo, stats


def repair_by_graph(parsed, ocls, rows, lookup, locked_m, oseq_cache, rounds=3, log=None):
    """按调用图修正在"名字还不全"时抢跑定错的方法名。

    对每个**非证明级**的方法，把它的引用按最终映射译成 (种类, owner, 名, 描述符)，
    与 oracle 同一描述符桶里每个候选方法的引用集比，取"对上条数最多"的那个；
    只有严格更好（多对上 ≥1 条，且不增加未对上条数）才改判。
    这一步是纯语义一致性优化，专治 `Channel.write ↔ write_ext` 这种互换。
    """
    from collections import Counter
    changed = 0
    for _ in range(rounds):
        step = 0
        orefs = {}
        for c in ocls:
            for m in ocls[c]['members']:
                if m['kind'] == 'm' and m['code']:
                    orefs[(c, m['name'], m['desc'])] = {
                        (x[0], x[2], x[3]) for x in oracle_seq(ocls[c], m['code'])[2]}
        used = {(r['cls'], r['real'], r['desc']) for r in rows if r['kind'] == 'method'}
        for r in rows:
            if r['kind'] != 'method' or r['ev'] in ('seed', 'seed:proof', 'usg', 'desc:') \
                    or r['ev'].startswith('desc'):
                continue
            c = r['cls']
            if c not in ocls:
                continue
            cur_key = (c, r['real'], r['desc'])
            cur_set = orefs.get(cur_key)
            if cur_set is None:
                continue
            probe_refs = []
            for (kind, owner, name, desc) in smali_seq(parsed[c]['body'][(r['probe'], r['desc'])],
                                                       {}, set())[2]:
                tgt = (lookup.get(('c', owner, name, desc)) if kind == 'c'
                       else lookup.get(('f', owner, name, '')))
                if tgt is None:
                    if owner in ocls:
                        continue
                    tgt = name
                probe_refs.append((kind, tgt, desc))
            if not probe_refs:
                continue
            cur_hit = sum(1 for x in probe_refs if x in cur_set)
            best = (cur_hit, r['real'])
            for m in ocls[c]['members']:
                if m['kind'] != 'm' or m['desc'] != r['desc'] or m['name'] == r['real']:
                    continue
                if m['name'] in locked_m.get((c, r['desc']), ()):
                    continue
                if (c, m['name'], m['desc']) in used:
                    continue
                hit = sum(1 for x in probe_refs
                          if x in orefs.get((c, m['name'], m['desc']), ()))
                if hit > best[0]:
                    best = (hit, m['name'])
            if best[1] != r['real']:
                used.discard(cur_key)
                used.add((c, best[1], r['desc']))
                if log:
                    log('    改判 %s %s%s → %s（对上引用 %d→%d）' % (
                        c, r['probe'], r['desc'], best[1], cur_hit, best[0]))
                r['real'] = best[1]
                r['ev'] = 'graph:%d' % best[0]
                lookup[('c', c, r['probe'], r['desc'])] = best[1]
                step += 1
        changed += step
        if not step:
            break
    return changed


def _supers(parsed, cls):
    """探针类的直接父类/接口（描述符 → 类名；只返回本 job 里存在的类）。"""
    pst = parsed.get(cls)
    if not pst:
        return []
    out = []
    for d in [pst.get('super')] + list(pst.get('ifaces') or []):
        if not d:
            continue
        if d.startswith('L') and d.endswith(';'):
            d = d[1:-1]
        if d in parsed:
            out.append(d)
    return out


def closure_overrides(parsed, rows, log=None):
    """**覆写家族必须同名**：子类成员定了名，祖先/接口里同名同描述符的声明必须跟着定。

    不补的后果就是门 4 `inherit_check` 的 MISSING：FART 沿继承链兜底时会给出未映射的名字，
    运行期变成"调到了父类实现"或 `AbstractMethodError`。
    """
    decl = collections.defaultdict(set)
    for c, pst in parsed.items():
        for (n, d, st, syn) in pst['methods']:
            decl[c].add((n, d))
    idx = {(r['cls'], r['probe'], r['desc']): r for r in rows if r['kind'] == 'method'}
    added = 0
    changed = True
    while changed:
        changed = False
        for r in list(rows):
            if r['kind'] != 'method' or r['real'] == r['probe']:
                continue
            stack, seen = list(_supers(parsed, r['cls'])), set()
            while stack:
                anc = stack.pop()
                if anc in seen:
                    continue
                seen.add(anc)
                key = (anc, r['probe'], r['desc'])
                if (r['probe'], r['desc']) in decl[anc] and key not in idx:
                    nr = dict(cls=anc, kind='method', probe=r['probe'], desc=r['desc'],
                              real=r['real'], ev='ovr:覆写家族同名', score=None, lead=None)
                    rows.append(nr)
                    idx[key] = nr
                    added += 1
                    changed = True
                stack.extend(_supers(parsed, anc))
    if added and log:
        log('  覆写家族闭包：补 %d 条（祖先/接口同名同描述符）' % added)
    return added


def probe_callees(pst, cls, name, desc, lookup):
    """探针方法里**已定名**的调用/字段读（集合）。没定名的不进集合 —— 宁缺毋滥。"""
    out = set()
    for (kind, owner, n, d) in smali_seq(pst['body'][(name, desc)], {}, set())[2]:
        if kind != 'c':            # 只看**调用**：字段读常常被 AIDE 扁平化（`io.in` → `io_in`），会误伤
            continue
        real = lookup.get(('c', owner, n, d))
        if real:
            out.add(real)
    return out


def oracle_callees(ocl, m):
    if not m.get('code'):
        return set()
    return {x[2] for x in oracle_seq(ocl, m['code'])[2] if x[0] == 'c'}


def narrow_by_callees(ocl, cands, need, ocache):
    """**调用集包含**过滤：探针里已定名的调用/字段读，候选的 body 必须都有。

    比"整体相似度"锋利得多：`ChannelSftp.rm` 与 `rmdir` 的 body 只差一条 `sendREMOVE`
    vs `sendRMDIR`（18 条 token 里 1 条），相似度只差 0.06，会被 `--min-lead` 挡掉；
    用"包含"就一句话判死 —— 探针调了 `sendRMDIR`，`rm` 的 body 里没有它。
    """
    if not need:
        return cands
    keep = []
    for o in cands:
        if not o.get('code'):       # 抽象方法没有 body，谈不上"包含"
            continue
        k = o['name'] + o['desc']
        if k not in ocache:
            ocache[k] = oracle_callees(ocl, o)
        if need <= ocache[k]:
            keep.append(o)
    return keep or cands


def eliminate(parsed, ocls, rows, lookup, log=None, min_score=0.05):
    """**排除法**：同一描述符桶里，探针侧只剩 1 个没定名、oracle 侧也只剩 1 个没被占用 ⇒ 就是它。

    这是双射的直接推论（改名不改描述符、同类内一一对应），前提是两边剩余数量相等；
    再加一条兜底：方法体 token 至少有一点重合（`score > min_score`），挡掉
    "一边 AIDE 新增、一边被 ProGuard 删掉"正好抵消的巧合。
    """
    added = 0
    for _ in range(6):
        step = 0
        for c in sorted(ocls):
            pst, ocl = parsed.get(c), ocls.get(c)
            if not pst or not ocl:
                continue
            used_m = {(r['probe'], r['desc']) for r in rows
                      if r['kind'] == 'method' and r['cls'] == c}
            used_f = {r['probe'] for r in rows if r['kind'] == 'field' and r['cls'] == c}
            # 方法的重载合法：占用按 (新名, 描述符) 算，不能只比名字
            got_names = {(r['real'], r['desc']) for r in rows
                         if r['cls'] == c and r['kind'] == 'method'}
            got_fnames = {r['real'] for r in rows if r['cls'] == c and r['kind'] == 'field'}
            ob, fb = collections.defaultdict(list), collections.defaultdict(list)
            for m in ocl['members']:
                if m['kind'] == 'm':
                    ob[m['desc']].append(m)
                else:
                    fb[(m['desc'], bool(m['acc'] & 8))].append(m)
            pb, pfb = collections.defaultdict(list), collections.defaultdict(list)
            for (n, d, st, syn) in pst['methods']:
                if not syn and not n.startswith('<'):
                    pb[d].append((n, st))
            for (n, d, st, syn) in pst['fields']:
                pfb[(d, st)].append(n)
            # 方法
            for d, plist in pb.items():
                free_p = [x for x in plist if (x[0], d) not in used_m]
                cands = [m for m in ob.get(d, [])
                         if (m['name'], m['desc']) not in got_names and m['name'] not in
                         {n for (n, dd, st, sy) in pst['methods'] if dd == d}]
                if len(free_p) == 1 and len(cands) == 1:
                    n, st = free_p[0]
                    m = cands[0]
                    if bool(m['acc'] & 8) != st or not m['code']:
                        continue
                    sc = score(smali_seq(pst['body'][(n, d)], lookup, set())[:2],
                               oracle_seq(ocl, m['code'])[:2])
                    if sc <= min_score:
                        continue
                    rows.append(dict(cls=c, kind='method', probe=n, desc=d, real=m['name'],
                                     ev='elim:%.2f' % sc, score=sc, lead=None))
                    used_m.add((n, d))
                    got_names.add((m['name'], m['desc']))
                    step += 1
            # 字段
            for key, plist in pfb.items():
                free_p = [x for x in plist if x not in used_f]
                cands = [m for m in fb.get(key, [])
                         if m['name'] not in got_fnames and m['name'] not in set(plist)]
                if len(free_p) == 1 and len(cands) == 1:
                    rows.append(dict(cls=c, kind='field', probe=free_p[0], desc=key[0],
                                     real=cands[0]['name'], ev='elim:', score=None, lead=None))
                    used_f.add(free_p[0])
                    got_fnames.add(cands[0]['name'])
                    step += 1
        added += step
        if not step:
            break
    if added and log:
        log('  排除法：补 %d 条（同桶只剩一个没定名）' % added)
    return added


def _ev_rank(r):
    """证据强度：有方法体一致性 > 桶唯一 > 覆写外推。

    空方法体（抽象方法/接口）用 `body` 打出来的分数没有意义（两边都空或者一边空），
    这种行降到最低，免得在覆写族里打赢真正有 body 的类；但 `desc:`（桶唯一）仍是证明。
    """
    ev = r.get('ev') or ''
    if r.get('bodyless') and (ev.startswith(('body', 'elim', 'graph'))):
        return 1
    if ev.startswith('graph'):
        return 5
    if ev.startswith('body'):
        return 4 if (r.get('score') or 0) >= 0.8 else 3
    if ev.startswith('desc'):
        return 3
    if ev.startswith('ovr'):
        return 1
    return 0


def unify_families(parsed, rows, log=None):
    """**同一条继承链上同名同描述符必须同新名**（FART 按 (名,描述符) 认覆写）。

    冲突时只有"证据明显更强"的一方才算赢，其余情况**整族撤掉映射**（留混淆名）——
    宁可留空，也不让 FART 把两个名字对到同一个覆写槽上（那就是运行期 `AbstractMethodError`
    或"调到父类实现"）。
    """
    idx = {}
    for r in rows:
        if r['kind'] == 'method' and r['real'] != r['probe']:
            idx[(r['cls'], r['probe'], r['desc'])] = r
    decl = {}
    for c, pst in parsed.items():
        decl[c] = {(n, d) for (n, d, st, syn) in pst['methods']}
    # 冲突分组：并查集（键 = (类, 名, 描述符)）
    parent = {}

    def find(x):
        parent.setdefault(x, x)
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(a, b):
        ra, rb = find(a), find(b)
        if ra != rb:
            parent[rb] = ra

    for c, pst in parsed.items():
        for anc in _supers(parsed, c):
            for (n, d) in decl.get(c, ()):
                if (n, d) not in decl.get(anc, ()):
                    continue
                ka, kb = (c, n, d), (anc, n, d)
                ra = idx.get(ka)
                rb = idx.get(kb)
                if ra and rb:
                    union(ka, kb)   # 名字一样也要连通：撤掉时要整族一起撤
    groups = collections.defaultdict(list)
    for k in list(parent):
        groups[find(k)].append(k)
    dropped = won = 0
    for root, keys in groups.items():
        rs = [idx[k] for k in keys if k in idx]
        if not rs:
            continue
        if len({r['real'] for r in rs}) == 1:
            continue
        best = max(rs, key=_ev_rank)
        top = [r for r in rs if _ev_rank(r) == _ev_rank(best)]
        decide = _ev_rank(best) >= 4 and len({r['real'] for r in top}) == 1 \
            and all(_ev_rank(r) < _ev_rank(best) for r in rs if r['real'] != best['real'])
        if decide:
            for r in rs:
                if r['real'] != best['real']:
                    if log:
                        log('    覆写族统一：%s %s%s 用 %s（原 %s，证据 %s 更强）' % (
                            r['cls'], r['probe'], r['desc'], best['real'], r['real'], best['ev']))
                    r['real'] = best['real']
                    r['ev'] = 'ovr:%s' % best['ev']
                    won += 1
        else:
            for r in rs:
                if log:
                    log('    覆写族冲突无法判定：%s %s%s（%s）↔ 同族 %s —— 整族撤掉' % (
                        r['cls'], r['probe'], r['desc'], r['real'],
                        ', '.join(sorted({x['real'] for x in rs}))))
                r['real'] = r['probe']
                r['drop'] = True
                dropped += 1
    if dropped or won:
        rows[:] = [r for r in rows if not r.get('drop')]
    if log and (dropped or won):
        log('  覆写族收尾：统一 %d 条 / 撤掉 %d 条' % (won, dropped))
    return won, dropped


def dedupe_targets(rows, log=None):
    """同类内"新名 + 描述符"只能有一条（否则 D8 `multiple definitions` / 门 2 dup）。

    同名同描述符落到同一新名时，保留证据强的一条，其余撤掉（留混淆名）。
    """
    groups = collections.defaultdict(list)
    for r in rows:
        if r['kind'] == 'method' and r['real'] != r['probe']:
            groups[(r['cls'], r['desc'], r['real'])].append(r)
        elif r['kind'] == 'field':
            groups[(r['cls'], '', r['real'])].append(r)
    dropped = 0
    for (cls, desc, real), rs in groups.items():
        if len(rs) < 2:
            continue
        best = max(rs, key=_ev_rank)
        for r in rs:
            if r is best:
                continue
            if log:
                log('    重复目标：%s %s%s 与 %s%s 都要叫 %s —— 撤掉前者（证据 %s < %s）' % (
                    cls, r['probe'], desc, best['probe'], desc, real,
                    r.get('ev'), best.get('ev')))
            r['drop'] = True
            dropped += 1
    if dropped:
        rows[:] = [r for r in rows if not r.get('drop')]
        if log:
            log('  去重目标：撤掉 %d 条' % dropped)
    return dropped


def closure_down(parsed, ocls, rows, log=None, min_rank=3):
    """**祖先已证明 ⇒ 覆写者同名**：接口/父类的方法名定了，子类和实现类里同名同描述符的
    声明必须跟着定（Java 语义，覆写不允许换名字；FART 也按 (名,描述符) 认覆写）。

    只从"证据够硬"的行往下推（`desc:` 桶唯一 = 证明），避免把弱猜测沿继承链放大。
    """
    subs = collections.defaultdict(set)
    for c in parsed:
        for anc in _supers(parsed, c):
            subs[anc].add(c)
    decl = {c: {(n, d) for (n, d, st, syn) in pst['methods']} for c, pst in parsed.items()}
    mapped = {(r['cls'], r['probe'], r['desc']) for r in rows if r['kind'] == 'method'}
    added = 0
    for r in [x for x in rows if x['kind'] == 'method' and x['real'] != x['probe']
              and _ev_rank(x) >= min_rank]:
        stack = list(subs.get(r['cls'], ()))
        seen = set()
        while stack:
            sub = stack.pop()
            if sub in seen:
                continue
            seen.add(sub)
            k = (sub, r['probe'], r['desc'])
            if (r['probe'], r['desc']) in decl.get(sub, ()) and k not in mapped:
                rows.append(dict(cls=sub, kind='method', probe=r['probe'], desc=r['desc'],
                                 real=r['real'], ev='ovr:继承自 %s' % r['cls'].rsplit('/', 1)[-1],
                                 score=None, lead=None))
                mapped.add(k)
                added += 1
            stack.extend(subs.get(sub, ()))
    if added and log:
        log('  覆写向下传播：补 %d 条（祖先名字已证明）' % added)
    return added


def report_gap(parsed, ocls, rows, todo, log=None):
    """按**最终状态**重算剩余缺口（原来只在第一轮记 TODO，定上的还挂在里面，数字很难看）。"""
    mapped_m = {(r['cls'], r['probe'], r['desc']) for r in rows if r['kind'] == 'method'}
    mapped_f = {(r['cls'], r['probe']) for r in rows if r['kind'] == 'field'}
    gaps, ident, stat = [], [0], collections.Counter()
    for c, pst in sorted(parsed.items()):
        ocl = ocls.get(c)
        if not ocl:
            continue
        ob, fb = collections.defaultdict(list), collections.defaultdict(list)
        for m in ocl['members']:
            if m['kind'] == 'm':
                ob[m['desc']].append(m)
            else:
                fb[(m['desc'], bool(m['acc'] & 8))].append(m)
        for (n, d, st, syn) in pst['methods']:
            if syn or n.startswith('<') or (c, n, d) in mapped_m:
                continue
            cands = [m for m in ob.get(d, []) if not (m['acc'] & 0x1000)]
            if any(m['name'] == n for m in cands):
                ident[0] += 1
                stat['identity（探针名本来就是真名）'] += 1
                continue
            if not cands:
                gaps.append(dict(cls=c, kind='method', probe=n, desc=d,
                                 why='no-oracle-descriptor', note='AIDE 改过签名'))
            else:
                gaps.append(dict(cls=c, kind='method', probe=n, desc=d, why='ambiguous',
                                 note='%d 个同描述符候选：%s' % (
                                     len(cands), ','.join(m['name'] for m in cands)[:80])))
        for (n, d, st, syn) in pst['fields']:
            if syn or (c, n) in mapped_f:
                continue
            cands = [m for m in fb.get((d, st), []) if not (m['acc'] & 0x1000)]
            if any(m['name'] == n for m in cands):
                ident[0] += 1
                stat['identity（探针名本来就是真名）'] += 1
                continue
            if not cands:
                gaps.append(dict(cls=c, kind='field', probe=n, desc=d,
                                 why='no-oracle-descriptor', note='oracle 里没有同描述符字段'))
            else:
                gaps.append(dict(cls=c, kind='field', probe=n, desc=d, why='ambiguous',
                                 note='%d 个同描述符候选：%s' % (
                                     len(cands), ','.join(m['name'] for m in cands)[:80])))
    if log:
        log('  最终缺口：%d 条待人工 + %d 条 identity（无需映射）' % (len(gaps), ident[0]))
    return gaps, stat


def report_path(P, part_name, pkg):
    """报告落在**该 part 自己的目录**下：`jobs/<依赖>/out/members_<包>.tsv`。

    没有指定 part（单工程）时退回工程的 `out_dir`。理由见 `jobs/README.md`：
    一个依赖一个目录、自包含，别把某个 job 的核对报告塞进 `process/out`。
    """
    name = 'members_%s.tsv' % pkg.replace('/', '_')
    for p in P.parts:
        hit = (part_name and p['name'] == part_name) or \
              (not part_name and p['probe_prefix'] and pkg.startswith(p['probe_prefix']))
        if hit and p['dir']:
            return os.path.join(p['dir'], 'out', name)
    return os.path.join(P.out_dir, name)


def seed_from_truth(P, part_name, pkg):
    """把目标 part 里**已经存在**的成员映射读出来当种子/占位（手判过的行不被覆盖）。"""
    import mapping
    part = None
    for p in P.parts:
        if part_name and p['name'] == part_name:
            part = p
            break
        if not part_name and p['probe_prefix'] and pkg.startswith(p['probe_prefix']):
            part = p
    if part is None or not part['member_map']:
        return []
    mm = mapping.MemberMap(part['member_map']).load()
    out = []
    for probe, kind, name, desc, new in mm.iter_members():
        out.append((probe, 'm' if kind == 'm' else 'f', name, desc, new))
    return out


def write_report(path, rows, todo):
    os.makedirs(os.path.dirname(os.path.abspath(path)) or '.', exist_ok=True)
    with open(path, 'w', encoding='utf-8') as f:
        f.write('# 类\t种类\t旧名\t描述符\t新名\t证据\t分数\t领先\n')
        for r in sorted(rows, key=lambda x: (x['cls'], x['kind'], x['desc'], x['real'])):
            f.write('%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' % (
                r['cls'], r['kind'], r['probe'], r['desc'], r['real'], r['ev'],
                '' if r.get('score') is None else '%.2f' % r['score'],
                '' if r.get('lead') is None else '%.2f' % r['lead']))
        for t in todo:
            f.write('%s\t%s\t%s\t%s\t\tTODO:%s\t\t%s\n' % (
                t['cls'], t['kind'], t['probe'], t['desc'], t['why'], t.get('note', '')))
    return path


def write_members(P, part_name, pkg, rows, log=print):
    """把结果写进对应 part 的 members.tsrg（类块按需建，目标名=类名自身）。"""
    import mapping
    part = None
    for p in P.parts:
        if part_name and p['name'] == part_name:
            part = p
            break
        if not part_name and p['probe_prefix'] and pkg.startswith(p['probe_prefix']):
            part = p
    if part is None or not part['member_map']:
        raise SystemExit('找不到可写的 members.tsrg（--part 指定）')
    mm = mapping.MemberMap(part['member_map']).load()
    # 类名没被混淆时也要有一行类映射：TSRG2 的成员行必须挂在类行下面
    cm = None
    if part['class_map']:
        cm = mapping.ClassMap(part['class_map'], P.probe_prefix, P.class_map_prefix).load()
    n = 0
    for r in rows:
        if r['real'] == r['probe']:
            continue
        mm.ensure_block(r['cls'], r['cls'], part['member_map'])
        if r['kind'] == 'method':
            st = mm.set(r['cls'], 'm', r['probe'], r['desc'], r['real'])
        else:
            st = mm.set(r['cls'], 'f', r['probe'], '', r['real'])
        if st in ('ADD', 'OK'):
            n += 1
        if cm is not None:
            cm.set(r['cls'], r['cls'],
                   'identity:类名未被混淆；本类块只用来挂成员行（成员是双侧同时改的）',
                   part_path=part['class_map'])
    mm.save()
    if cm is not None:
        cm.save()
    log('写入 %s：%d 行成员映射（%d 个类块）' % (part['member_map'], n, len(mm.order)))
    return n


def verify_graph(P, pkg, log=print, limit=40, min_bad=0.3, jdkref=False):
    """全局自证：把"探针里 A 用到 B"与"oracle 里 A' 用到 B'"逐条对照。

    引用按 (种类, owner, 名, 描述符) 归一：owner 走类映射、名走成员映射、描述符本来就一致。
    只要某个方法里**已映射的引用**在 oracle 对应方法里找不到，就说明有名字判错——
    这是可复现的全局一致性检查，比逐条读 body 更容易抓到"错一位"。
    """
    import mapping
    cm = mapping.ClassMap(P.class_map, P.probe_prefix, P.class_map_prefix).load() if P.class_map else None
    mm = mapping.MemberMap(P.member_map).load() if P.member_map else None
    if mm is None:
        raise SystemExit('需要 members.tsrg')
    mmap, fmap = mm.index()
    cmap = cm.dict if cm else {}
    find, _ = oracle_lookup(P.oracle_jars)
    roots = P.probe_roots or ([P.probe_dir] if P.probe_dir else [])
    classes = probe_classes(roots, pkg)
    bad, n, badrefs, allrefs = [], 0, 0, 0
    for c in sorted(classes):
        pst = smali.parse(classes[c])
        label, raw = find(cmap.get(c, c))
        if raw is None:
            continue
        ocl = jvm.parse(raw)
        oseq = {}
        for m in ocl['members']:
            if m['kind'] == 'm' and m['code']:
                oseq[m['name'] + m['desc']] = set(
                    (r[0], r[2], r[3]) for r in oracle_seq(ocl, m['code'])[2])
        for (pn, pd, st, syn) in pst['methods']:
            real = mmap.get((c, pn, pd))
            if not real or (real + pd) not in oseq:
                continue
            mine, sure = set(), 0
            for (kind, owner, name, desc) in smali_seq(pst['body'][(pn, pd)], {}, set())[2]:
                if kind == 'c':
                    tgt = mmap.get((owner, name, desc))
                else:
                    tgt = fmap.get((owner, name))
                if not tgt:
                    if cmap.get(owner, owner) in classes:
                        continue            # 本 job 的类但还没定名 → 无法判定，不计分
                    if not jdkref:
                        continue            # JDK/Android 的引用差异多半是 AIDE 魔改，噪声大，默认不看
                    tgt = name
                sure += 1
                mine.add((kind, tgt, desc))
            if not mine:
                continue
            n += 1
            miss = {x for x in mine if x not in oseq[real + pd]}
            allrefs += len(mine)
            badrefs += len(miss)
            if miss and len(miss) > len(mine) * min_bad:
                bad.append((c, pn, pd, real, sorted(miss)[:3], len(miss), len(mine)))
    log('调用图自证：%d 个方法 / %d 条已定名引用，未对上 %d 条（%.1f%%），可疑方法 %d 个' % (
        n, allrefs, badrefs, 100.0 * badrefs / max(1, allrefs), len(bad)))
    for b in bad[:limit]:
        log('   %s %s%s → %s  未对上 %d/%d 例：%s' % (b[0], b[1], b[2], b[3], b[5], b[6], b[4]))
    return bad
