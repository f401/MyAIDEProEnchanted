#!/usr/bin/env python3
"""rolefill2.py —— 对"确实没有 oracle 对应"的成员按**作用**命名（`role:` 前缀）。

模板（全部只用可观察事实，逐条写进证据列）：

字段
  S1 静态 final、类型就是本类、`<clinit>` 里由单个字符串初始化  → 用该字符串的 SN 形式
     （`"/*"` → `SLASH_STAR`，`"*/"` → `STAR_SLASH`，`"byte"` → `TYPE_BYTE` 之类不在此列）
  S2 其余                                                      → `<类型简单名>Field`（冲突加序号）

方法
  M1 方法体里恰好 new 一个内部类 X                             → `create<X>`
  M2 只读字段 f（已定名）+ return                              → `get<F>`
  M3 只写字段 f（已定名）                                      → `set<F>`
  M4 返回 boolean 且形参唯一                                   → `is<Param>`
  M5 调用已定名的 parse*/visit*/update*/check* 且返回同值       → 同名 + `Helper`（避免与真名冲突）
  M6 其它                                                      → `<verb><Par0Simple>`，verb 按返回类型
     （V→`update`、Z→`check`、其它→`get`），Par0 取第一个内部类形参

只在**本类内名字不冲突**时落地；证据列写成 `role:模板 Mx + 依据`。
"""
import os
import re
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from bytefp import disassemble, parse, load_tsv_map

PRIM = {'Z': 'boolean', 'B': 'byte', 'C': 'char', 'S': 'short', 'I': 'int',
        'J': 'long', 'F': 'float', 'D': 'double'}
SNAKE = re.compile(r'[^A-Za-z0-9]+')


def sn_from_string(s):
    """把字符串常量变成常量名：'/*' → SLASH_STAR, 'byte' → BYTE"""
    m = {'/': 'SLASH', '*': 'STAR', '<': 'LT', '>': 'GT', '=': 'EQ', '(': 'LPAREN',
         ')': 'RPAREN', '{': 'LBRACE', '}': 'RBRACE', '[': 'LBRACKET', ']': 'RBRACKET',
         ';': 'SEMICOLON', ':': 'COLON', ',': 'COMMA', '?': 'QUESTION', '!': 'EXCLAMATION',
         '.': 'DOT', '&': 'AND', '|': 'PIPE', '@': 'AT', '-': 'MINUS', '+': 'PLUS'}
    out = []
    for ch in s:
        if ch.isalnum():
            out.append(ch.upper())
        elif ch == ' ':
            out.append('SPACE')
        elif ch in m:
            out.append(m[ch])
        else:
            out.append('X%02X' % ord(ch))
    name = '_'.join(x for x in out if x)
    return re.sub(r'_+', '_', name).strip('_') or 'CONST'


def cap(s):
    return s[:1].upper() + s[1:]


def load_members(path):
    fmap, mmap = {}, {}
    cur = None
    for ln in open(path, encoding='utf-8'):
        if not ln.startswith('\t'):
            t = ln.split()
            cur = t[0] if t else None
            continue
        t = ln.strip().split()
        if not cur or len(t) < 2:
            continue
        if len(t) == 2:
            fmap[(cur, t[0])] = t[1]
        else:
            mmap[(cur, t[0], t[1])] = t[2]
    return fmap, mmap


def params_of(desc):
    par = desc[desc.index('(') + 1:desc.rindex(')')]
    out = []
    for m in re.finditer(r'L([\w/$]+);|\[+[ZBCSIJFD]|[ZBCSIJFD]', par):
        v = m.group(0)
        out.append(m.group(1).replace('/', '.') if v.startswith('L')
                   else (v if v.startswith('[') else PRIM.get(v, v)))
    return tuple(out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--limit', type=int, default=60)
    ap.add_argument('--report', default='')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    H = os.path.expanduser('~')
    P = parse(disassemble(ex('base/merged_ok.jar'), a.prefix,
                          os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'), 'merged_ok.jar'))))
    fmap, mmap = load_members(os.path.join(part, 'members.tsrg'))
    cmap = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    def fold(tn):
        t2 = tn.replace('.', '/')
        if not (t2.startswith('org/c/a/a') or t2.startswith('org/jd/core')):
            return None                      # 基本类型/JDK 类型：推不出作用
        if t2 in cmap:
            return cmap[t2].rsplit('/', 1)[-1]
        return None
    import pickle
    pb, _ob = pickle.load(open(os.path.join(H, 'tmp', 'bcache.pkl'), 'rb'))

    # 祖先链：用于"不覆盖已有覆写名"（覆写必须与祖先同名，宁可不命名）
    norm = lambda x: (x or '').replace('.', '/')
    chain_of = {}
    for k, c in P.items():
        out, seen, todo = [], set(), [norm(c.get('sup'))] + [norm(x) for x in (c.get('ifaces') or [])]
        while todo:
            q = todo.pop()
            if not q or q in seen:
                continue
            seen.add(q)
            out.append(q)
            a2 = P.get(q)
            if a2:
                todo.extend([norm(a2.get('sup'))] + [norm(x) for x in (a2.get('ifaces') or [])])
        chain_of[k] = out
    anc_decl = collections.defaultdict(set)
    for k, c in P.items():
        for acc, n, ps in c['methods']:
            anc_decl[k].add((n, tuple(ps)))
    def is_override(pk, n, ps):
        for a2 in chain_of.get(pk, []):
            for acc, n2, ps2 in P.get(a2, {}).get('methods', []):
                if n2 == n and tuple(ps2) == tuple(ps):
                    return True
        return False

    rows = []
    for pk, c in P.items():
        if not pk.startswith(a.prefix):
            continue
        have_f = {n for (c2, n) in fmap if c2 == pk} | {v for (c2, n), v in fmap.items() if c2 == pk}
        taken = {v for (c2, o, d), v in mmap.items() if c2 == pk}
        # ---- 字段
        clinit = c['mbody'].get(('<clinit>', ())) or []
        const_of, strings = {}, []
        for t in clinit:
            if t[0] == 'S':
                strings.append(t[1])
            elif t[0] == 'new':
                strings = []
            elif t[0] == 'F' and t[1] == 'putstatic':
                if len(strings) == 1:
                    const_of[t[4]] = strings[0]
                strings = []
        for acc, typ, nm in c['fields']:
            if nm in have_f or nm in taken:
                continue
            tn = typ.replace('.', '/').rsplit('/', 1)[-1]
            folded = fold(typ)
            if 'static' in acc and tn == pk.rsplit('/', 1)[-1] and nm in const_of:
                cand = sn_from_string(const_of[nm])
                ev = "role:模板 S1 —— 静态常量字段（类型就是本类）在 <clinit> 里由字符串 %r 初始化，按该字符串命名" % const_of[nm]
            else:
                if folded and folded not in ('String', 'Boolean', 'Integer', 'Object', 'StringBuilder'):
                    cand = folded[:1].lower() + folded[1:]
                    ev = 'role:模板 S2 —— 无 oracle 对应字段；类型折叠后是 %s，按"该字段持有的类型"命名' % folded
                elif tn in ('HashMap', 'LinkedHashMap', 'Map'):
                    cand = 'cache'
                    ev = 'role:模板 T3 —— 无 oracle 对应字段；类型 %s（容器），按"缓存"作用命名（同类依次编号）' % tn
                elif tn in ('HashSet', 'LinkedHashSet', 'Set'):
                    cand = 'names'
                    ev = 'role:模板 T3 —— 无 oracle 对应字段；类型 %s（集合），按"名字集合"作用命名（同类依次编号）' % tn
                elif tn in ('List', 'ArrayList', 'DefaultList'):
                    cand = 'items'
                    ev = 'role:模板 T3 —— 无 oracle 对应字段；类型 %s（列表），按"元素列表"作用命名（同类依次编号）' % tn
                else:
                    continue          # 基本类型/字符串：推不出作用，留白
            if '$' in cand or cand in taken or cand in have_f:
                base_c, k = cand, 2
                while ('%s%d' % (base_c, k)) in taken or ('%s%d' % (base_c, k)) in have_f:
                    k += 1
                if '$' in cand:
                    continue
                cand = '%s%d' % (base_c, k)
            rows.append((pk, 'f', nm, '', cand, ev))
            taken.add(cand)
        # ---- 方法
        have_m = {(n, d) for (c2, n, d) in mmap if c2 == pk}
        for sig, body in c['mbody'].items():
            if sig is None:
                continue
            nm, ps = sig
            ctor = pk.replace('/', '.')
            if nm in ('<init>', '<clinit>', ctor, 'toString', 'equals', 'hashCode'):
                continue
            descs = ['(' + ''.join('L%s;' % x.replace('.', '/') if x not in 'ZBCSIJFD' else x
                                   for x in ps) + ')']
            ds = [d for (n, d) in pb.get(pk, {}).get('methods', []) and
                  [(n, d) for acc, n, d in pb[pk]['methods']] if n == nm and d.startswith(descs[0])]
            if not ds:
                continue
            d0 = ds[0]
            if (nm, d0) in have_m:
                continue
            news = [t[1].replace('.', '/').rsplit('/', 1)[-1] for t in body if t[0] == 'new']
            gets = [t[4] for t in body if t[0] == 'F' and t[1] == 'getfield']
            puts = [t[4] for t in body if t[0] == 'F' and t[1] == 'putfield']
            ret = d0[d0.index(')') + 1:]
            cand, ev = None, None
            if len(set(news)) == 1 and news[0] not in ('StringBuilder', 'AssertionError', 'HashMap',
                                                       'HashSet', 'ArrayList', 'Object', 'String'):
                fn = fold(news[0])
                if fn and fn not in ('StringBuilder', 'AssertionError'):
                    cand = 'create' + cap(fn)
                    ev = 'role:模板 M1 —— 方法体只构造一个 %s（折叠后是 %s），按"创建什么"命名' % (news[0], fn)
            elif len(set(gets)) == 1 and not puts and ret != 'V':
                f = fmap.get((pk, gets[0]))
                if f:
                    cand = 'get' + cap(f)
                    ev = 'role:模板 M2 —— 只读已定名字段 %s 后返回' % f
            elif len(set(puts)) == 1 and not gets:
                f = fmap.get((pk, puts[0]))
                if f:
                    cand = 'set' + cap(f)
                    ev = 'role:模板 M3 —— 只写已定名字段 %s' % f
            if not cand and len([t for t in body if t[0] == 'M' and t[4] != '<init>']) == 1 \
                    and [t for t in body if t[0] == 'M' and t[4] != '<init>']:
                t0 = [t for t in body if t[0] == 'M' and t[4] != '<init>'][0]
                o2 = t0[2].replace('.', '/')
                rn = None
                for (c2, n2, d2), v2 in mmap.items():
                    if c2 == o2 and n2 == t0[4]:
                        rn = v2
                        break
                BAD = {'compare', 'add', 'addAll', 'get', 'equals', 'hashCode', 'toString',
                       'iterator', 'size', 'length', 'set', 'remove', 'contains', 'put', 'pop', 'push'}
                if rn and rn not in BAD:      # 纯委托给 JDK 契约名（compare/add…）的多半是桥方法，跳过
                    cand = rn
                    ev = 'role:模板 M5 —— 方法体只有一次调用（%s.%s），纯委托 ⇒ 与之同名' % (o2.rsplit('/', 1)[-1], rn)
            if is_override(pk, nm, ps):
                continue            # 覆写：必须与祖先同名，交给 hinher；这里不猜
            if not cand:
                # ---- M7 兜底：按"方法体第一个已定名调用的动词 + 主要类型"命名
                verb = None
                for t in body:
                    if t[0] == 'M' and t[4] != '<init>':
                        o2 = t[2].replace('.', '/')
                        rn = None
                        for (c2, n2, d2), v2 in mmap.items():
                            if c2 == o2 and n2 == t[4]:
                                rn = v2
                                break
                        if rn:
                            m2 = re.match(r'^(parse|visit|update|check|create|make|get|set|add|remove|'
                                          r'convert|search|init|reduce|bind|load|find|accept|print|append|'
                                          r'write|merge|split|sort|build|apply|resolve|replace)', rn)
                            if m2:
                                verb = m2.group(1)
                                break
                kinds = [fold(x) for x in news] + [fold(x) for x in ps if x.startswith('org.c.a.a')]
                kinds = [x for x in kinds if x]
                if not verb:
                    verb = 'update' if ret == 'V' else ('check' if ret == 'Z' else 'get')
                if not kinds:
                    continue
                cand = verb + cap(kinds[0])
                ev = ('role:模板 M7（兜底）—— 无 oracle 对应方法；动词取自方法体第一个已定名调用的动作'
                      '（否则按返回类型 %s），名词取它创建/接收的主要类型 %s' % (ret, kinds[0]))
            have_names = {n2 for (n2, d2) in have_m} | taken
            if '$' in cand:
                continue
            if cand in have_names:
                base_c, k = cand, 2
                while ('%s%d' % (base_c, k)) in have_names:
                    k += 1
                cand = '%s%d' % (base_c, k)
            rows.append((pk, 'm', nm, d0, cand, ev))
            taken.add(cand)
    rows = [r for r in rows if r[4] and re.match(r'^[A-Za-z_$][A-Za-z0-9_$]*$', r[4])]
    print('按作用命名 %d 条' % len(rows))
    for r in rows[:a.limit]:
        print('   %-26s %-6s %-6s %-40s → %s' % (r[0].replace(a.prefix + '/', '~'), r[1], r[2], r[4], r[5][:46]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\tkind\told\tdesc\tnew\tevidence\n')
            for r in rows:
                w.write('%s\t%s\t%s\t%s\t%s\t%s\n' % r)
    if a.apply and rows:
        path = os.path.join(part, 'members.tsrg')
        blocks = collections.defaultdict(list)
        order = []
        cur = None
        for ln in open(path, encoding='utf-8'):
            if not ln.startswith('\t'):
                t = ln.split()
                cur = t[0] if t else None
                order.append(cur)
                blocks[cur].append(ln.rstrip('\n'))
            else:
                blocks[cur].append(ln.rstrip('\n'))
        n = 0
        for pk, kind, old, desc, cand, ev in rows:
            if kind == 'f':
                blocks[pk].append('\t%s %s' % (old, cand))
            else:
                blocks[pk].append('\t%s %s %s' % (old, desc, cand))
            n += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('写入 +%d' % n)


if __name__ == '__main__':
    main()
