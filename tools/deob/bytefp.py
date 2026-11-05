#!/usr/bin/env python3
"""bytefp.py —— 用 `javap -p -c` 反汇编做**字节码指纹**类级匹配（jd-core 收尾用）。

为什么需要它：`model/javasyntax/*` 有大量"同形"类（字段类型/成员计数完全一样），
`shape:`/`csp:`/创建点签名三把钥匙都定不住（见 jobs/jdcore/README.md）。但**方法体的
指令流**混淆改不了：把两侧 jar 都交给 `javap -p -c`，逐条指令归一化后比相似度。

归一化（两侧同一套）：
  1. 类型名：内部类名经已定映射折成 oracle 真名；未定名折成 `~`（占位符，两侧一致）。
  2. 成员名：探针侧被混淆 → `~`；已定名（members.tsrg）保留真名，oracle 侧对称处理。
  3. 局部变量槽位：`aload_0..3`/`istore_2` 一律折成 `aload`/`istore`（dx 与 javac 分配不同）。
  4. `javap` 对自身类引用不写 owner（`// Method a:()V`）→ 按"当前类"补回。

打分（6 项加权，缺项按权重归一）：
  指令多重集 0.22 · 成员描述符多重集 0.12 · 常量串 0.05 · **方法级最佳对齐 0.36** ·
  整数字面量 0.07 · 子类/实现者多重集 0.08 · 创建点签名 0.10

标定（把 283 个已定名类当留一验证集）：rank-1 命中 241/283=85.2%；
门槛 thr=0.30 + margin=0.06 时覆盖 218/283、**精度 97.2%**；thr=0.55 时精度 100%。
所以本工具只输出"候选 + 分数 + 余量"，落库前一律再过 `validate`/`inherit`。

用法:
  python3 tools/deob/bytefp.py -p process/deob.json --part ../jobs/jdcore \
      [--report f.tsv] [--apply] [--thr 0.30] [--margin 0.06] [--test]
"""
import os
import re
import sys
import json
import pickle
import argparse
import collections
import subprocess

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

RE_HDR = re.compile(r'^(?:public |protected |private |final |abstract |synthetic |interface '
                    r'|enum |static |strictfp |annotation )*(?:class|interface|enum|@interface) ([\w.$]+)')
RE_INST = re.compile(r'^\s+(\d+): (\w+)\s*(.*)$')
RE_CMT = re.compile(r'//\s*(.*)$')
RE_KIND = re.compile(r'^(class|Method|InterfaceMethod|Field|String|int|long|float|double)\s+(.*)$')
SLASH = re.compile(r'([A-Za-z0-9_$]+(?:/[A-Za-z0-9_$]+)+)')
RE_REG = re.compile(r'^([ailfd])(load|store)_[0-3]$')
KIND = 0x0200 | 0x0400 | 0x4000        # interface | abstract | enum


# ----------------------------------------------------------------------------- 反汇编
def disassemble(jar, prefix, cache):
    """javap 整个包的类 → 一个文本文件（有缓存）"""
    if os.path.exists(cache) and os.path.getmtime(cache) > os.path.getmtime(jar):
        return cache
    import zipfile
    names = [n[:-6] for n in zipfile.ZipFile(jar).namelist()
             if n.endswith('.class') and n[:-6].startswith(prefix)]
    tmp = cache + '.dir'
    os.makedirs(tmp, exist_ok=True)
    with zipfile.ZipFile(jar) as z:
        for n in zipfile.ZipFile(jar).namelist():
            if n.endswith('.class') and n[:-6].startswith(prefix):
                p = os.path.join(tmp, n)
                os.makedirs(os.path.dirname(p), exist_ok=True)
                open(p, 'wb').write(z.read(n))
    arg = [n.replace('/', '.') for n in names]
    out = []
    for i in range(0, len(arg), 200):
        out.append(subprocess.run(['javap', '-p', '-c', '-cp', tmp] + arg[i:i + 200],
                                  capture_output=True, text=True).stdout)
    open(cache, 'w', encoding='utf-8').write(''.join(out))
    return cache


def parse(path):
    out = {}
    cur = curm = None
    incode = False
    for ln in open(path, encoding='utf-8', errors='replace'):
        ln = ln.rstrip('\n')
        s = ln.strip()
        if not s:
            continue
        if ln.startswith('  ') and s.startswith('Code:'):
            incode = True
            continue
        m = RE_INST.match(ln)
        if m and incode:
            op, rest = m.group(2), m.group(3).strip()
            cmt = RE_CMT.search(rest)
            kind = RE_KIND.match(cmt.group(1)) if cmt else None
            if op in ('ldc', 'ldc_w', 'ldc2_w'):
                if kind:
                    k, v = kind.group(1), kind.group(2)
                    if k == 'String':
                        tok = ('S', v)
                        out[cur]['strs'].add(v)
                    elif k in ('int', 'long'):
                        try:
                            tok = ('I', int(v))
                            out[cur]['ints'][int(v)] += 1
                        except ValueError:
                            tok = ('I', v)
                    elif k == 'class':
                        tok = ('C', v)
                    else:
                        tok = ('?', k)
                else:
                    tok = (op,)
            elif op in ('getfield', 'putfield', 'getstatic', 'putstatic'):
                body = kind.group(2) if kind and kind.group(1) == 'Field' else None
                if body and ':' in body:
                    head, typ = body.split(':', 1)
                    own, name = head.split('.', 1) if '.' in head else (cur, head)
                    tok = ('F', op, own, typ, name.strip('"'))
                else:
                    tok = (op,)
            elif op in ('invokevirtual', 'invokespecial', 'invokestatic', 'invokeinterface',
                        'invokedynamic'):
                body = kind.group(2) if kind else None
                if body and ':' in body:
                    head, desc = body.split(':', 1)
                    own, name = head.split('.', 1) if '.' in head else (cur, head)
                    tok = ('M', op, own, desc, name.strip('"'))
                else:
                    tok = (op,)
            elif op in ('new', 'checkcast', 'instanceof', 'anewarray'):
                tok = (op, kind.group(2)) if kind and kind.group(1) == 'class' else (op,)
            elif op in ('bipush', 'sipush', 'iinc'):
                v = rest.split()[0] if rest else ''
                try:
                    tok = (op, int(v))
                    out[cur]['ints'][int(v)] += 1
                except ValueError:
                    tok = (op, v)
            else:
                m2 = RE_REG.match(op)
                tok = (m2.group(1),) if m2 else (op,)
            out[cur]['inst'][tok] += 1
            out[cur]['mbody'].setdefault(curm, []).append(tok)
            continue
        m = RE_HDR.match(ln)
        if m:
            cur = m.group(1).replace('.', '/')
            incode = False
            curm = None
            sup = None
            ifs = []
            hdr = re.sub(r'<[^<>]*(?:<[^<>]*>[^<>]*)*>', '', ln)   # 去掉泛型形参（里面的 extends 是上界）
            me = re.search(r'\bextends\s+([\w.$]+(?:\s*,\s*[\w.$]+)*)', hdr)
            if me:
                ext = [x.strip().replace('.', '/') for x in me.group(1).split(',')]
                sup = ext[0]
                ifs = ext[1:] if len(ext) > 1 else []
            mi = re.search(r'\bimplements\s+(.+?)\s*\{?$', hdr)
            if mi:
                ifs = [x.strip().replace('.', '/') for x in mi.group(1).rstrip('{ ').split(',') if x.strip()]
            acc = ln
            out[cur] = dict(fields=[], methods=[], inst=collections.Counter(),
                            strs=set(), ints=collections.Counter(), mbody={},
                            sup=sup, ifaces=ifs, decl=acc)
            continue
        if ln.startswith('  ') and not ln.startswith('    '):
            incode = False
            d = s
            if d.endswith(';') and '(' in d:
                body = d[:-1]
                i = body.index('(')
                j = body.rindex(')')
                head = body[:i].split()
                params = tuple(x.strip() for x in body[i + 1:j].split(',') if x.strip())
                out[cur]['methods'].append((' '.join(head[:-1]), head[-1], params))
                curm = (head[-1], params)
            elif d.startswith('static {') or d.startswith('{'):
                # javap 把静态/实例初始化块打印成 `static {};` / `{};`（没有参数列表），
                # 之前会落到"字段"分支、把 Code 挂到上一个方法上 —— 初始化块的字符串常量
                # （常量表的 new X("<名字>") 就在里面）是给静态字段定名的关键证据。
                curm = ('<clinit>', ()) if d.startswith('static') else ('<init>', ())
            elif d.endswith(';'):
                head = d[:-1].split()
                if len(head) >= 2:
                    out[cur]['fields'].append((' '.join(head[:-1]), head[-2], head[-1]))
    return out


# ----------------------------------------------------------------------------- 折叠
def load_tsv_map(path):
    k = {}
    for ln in open(path, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[0]:
            k[t[0]] = t[1]
    return k


def load_members(path):
    pm, om, cur = {}, set(), None
    if not os.path.exists(path):
        return pm, om
    for ln in open(path, encoding='utf-8'):
        if not ln.startswith('\t'):
            t = ln.split()
            cur = tuple(t[:2]) if len(t) >= 2 else None
            continue
        t = ln.strip().split()
        if t and cur and len(t) >= 2:
            pm[(cur[0], t[0])] = t[1]
            om.add((cur[1], t[1]))
    return pm, om


class Fold:
    def __init__(self, cls, pkg, memname, knownmem):
        self.cls = cls
        self.memname = memname
        self.knownmem = knownmem
        self.pfx = sorted(pkg.items(), key=lambda x: -len(x[0]))

    def name(self, n):
        if not n:
            return n
        if '.' in n and '/' not in n:
            n = n.replace('.', '/')
        if n in self.cls:
            return self.cls[n]
        if n.startswith('org/c/a/a'):           # 探针内部未定名
            for p, o in self.pfx:
                if n == p or n.startswith(p + '/'):
                    return o + '/~'
            return '~'
        return n

    def desc(self, d):
        return SLASH.sub(lambda m: self.name(m.group(1)), d) if d else d

    def mname(self, side, own, name):
        if side == 'p':
            return self.memname.get((own, name))
        return name if (own, name) in self.knownmem else None

    def tok(self, t, side, ownself):
        if t[0] in ('F', 'M'):
            own, name = t[2], t[4]
            rn = self.mname(side, own, name)
            return (t[0], t[1], self.name(own), self.desc(t[3]), rn or '~')
        if t[0] == 'C':
            return ('C', self.name(t[1]))
        return t


def fold_class(c, cls, f, side, own):
    fs, ms = collections.Counter(), collections.Counter()
    for acc, typ, nm in c['fields']:
        rn = f.mname(side, own, nm) or '~'
        fs[(('static' in acc), f.desc(typ.replace('.', '/')), rn)] += 1
    for acc, nm, params in c['methods']:
        rn = f.mname(side, own, nm)
        if not rn:
            rn = '<init>' if nm == own.replace('/', '.') else ('<clinit>' if nm == '{}' else '~')
        ms[(('static' in acc), f.desc('/'.join(params).replace('.', '/')), rn)] += 1
    inst = collections.Counter()
    for t, v in c['inst'].items():
        inst[f.tok(t, side, own)] += v
    return fs, ms, inst


_PRIM_DESC = {'boolean': 'Z', 'byte': 'B', 'char': 'C', 'short': 'S', 'int': 'I',
              'long': 'J', 'float': 'F', 'double': 'D', 'void': 'V'}


def desc_from_params(ps):
    """javap 的形参名（'int' / 'java.lang.String' / 'int[]'）→ JVM 描述符形参串。

    坑：老代码用 `x not in 'ZBCSIJFD'` 判断基本类型，因为 'int' 是 'ZBCSIJFD' 的子串，
    会被误判成引用类型包成 `Lint;` —— 于是所有**带基本类型形参**的接口覆写都匹配不上。
    """
    out = ''
    for x in ps:
        if x in _PRIM_DESC:
            out += _PRIM_DESC[x]
        elif x.startswith('[') or x.endswith('[]'):
            base = x.rstrip('[]').lstrip('[')
            dims = x.count('[') + x.count('[]')
            out += '[' * dims + (_PRIM_DESC.get(base) or 'L' + base.replace('.', '/') + ';')
        elif x.endswith('...'):
            out += '[L' + x[:-3].replace('.', '/') + ';'
        else:
            out += 'L' + x.replace('.', '/') + ';'
    return out


def jac(a, b):
    if not a and not b:
        return None
    if isinstance(a, set) or isinstance(b, set):
        return len(a & b) / len(a | b)
    return sum((a & b).values()) / sum((a | b).values())


# ----------------------------------------------------------------------------- 特征
def align(pa, ob):
    """方法级最佳对齐：探针每个方法体找 oracle 里最像的方法体，取平均"""
    if not pa or not ob:
        return None
    return sum(max((jac(a, b) or 0) for b in ob) for a in pa) / len(pa)


def site_map(bodies, fnames, side, f):
    """创建点签名：<被创建类> → {(创建者, 构造器描述符): 次数}"""
    out = collections.defaultdict(collections.Counter)
    for n, bodies_ in bodies.items():
        for v in bodies_:
            for t in v:
                if t[0] == 'M' and t[4] == '<init>' and t[2] in fnames:
                    out[t[2]][(f.name(n), f.desc(t[3]))] += 1
    return out


def parents_map(meta, f, internal):
    out = collections.defaultdict(collections.Counter)
    for n, (acc, sup, ifs) in meta.items():
        for par in ((sup,) if sup else ()) + tuple(ifs or ()):
            out[par][f.name(n)] += 1
    return out


class Feats:
    def __init__(self, P, O, meta, mapping, pkg, mem, km):
        f = Fold(mapping, pkg, mem, km)
        self.f = f
        self.pf = {k: fold_class(v, mapping, f, 'p', k) for k, v in P.items()}
        self.of = {k: fold_class(v, mapping, f, 'o', k) for k, v in O.items()}
        self.PM = {k: [collections.Counter(f.tok(t, 'p', k) for t in v) for v in c['mbody'].values()]
                   for k, c in P.items()}
        self.OM = {k: [collections.Counter(f.tok(t, 'o', k) for t in v) for v in c['mbody'].values()]
                   for k, c in O.items()}
        self.ps = site_map({k: c['mbody'].values() for k, c in P.items()}, P, 'p', f)
        self.os = site_map({k: c['mbody'].values() for k, c in O.items()}, O, 'o', f)
        # 父子关系一律用 javap 头（`extends`/`implements`），比 jvmbody 稳；
        # 接口的 `extends A, B` 也已展开成多条。
        pmeta = {k: (0, c.get('sup'), c.get('ifaces') or []) for k, c in P.items()}
        ometa = {k: (0, c.get('sup'), c.get('ifaces') or []) for k, c in O.items()}
        self.ph = parents_map(pmeta, f, P)
        self.oh = parents_map(ometa, f, O)
        self.P, self.O = P, O

    def comps(self, pk, ok):
        a, b = self.pf[pk], self.of[ok]
        e = collections.Counter()
        return [
            jac(a[2], b[2]) or 0,                                  # 指令多重集
            jac(a[0] + a[1], b[0] + b[1]) or 0,                     # 成员描述符
            jac(self.P[pk]['strs'], self.O[ok]['strs']) or 0,       # 常量串
            align(self.PM[pk], self.OM[ok]) or 0,                   # 方法级对齐
            jac(self.P[pk]['ints'], self.O[ok]['ints']) or 0,       # 整数字面量
            jac(self.ph.get(pk) or e, self.oh.get(ok) or e) or 0,   # 子类/实现者
            jac(self.ps.get(pk) or e, self.os.get(ok) or e) or 0,   # 创建点签名
        ]


W = (0.22, 0.12, 0.05, 0.36, 0.07, 0.08, 0.10)


def total(c):
    return sum(x * w for x, w in zip(c, W))


def cheap(F, pk, ok):
    a, b = F.pf[pk], F.of[ok]
    return (0.55 * (jac(a[2], b[2]) or 0) + 0.25 * (jac(a[0] + a[1], b[0] + b[1]) or 0)
            + 0.12 * (jac(F.P[pk]['strs'], F.O[ok]['strs']) or 0)
            + 0.08 * (jac(F.P[pk]['ints'], F.O[ok]['ints']) or 0))


def emp_pkg(cls, pkg):
    """经验包对齐：已知类反查 oracle 包，多数票覆盖 pkg_map（pkg_map 有 5 行是旧的）"""
    emp = collections.defaultdict(collections.Counter)
    for p, o in cls.items():
        emp[p.rsplit('/', 1)[0]][o.rsplit('/', 1)[0]] += 1
    out = dict(pkg)
    for p, c in emp.items():
        out[p] = c.most_common(1)[0][0]
    return out, emp


def run(P, O, meta, cls, pkg, mem, km, thr=0.30, margin=0.06, iters=25, verbose=True):
    mapping = dict(cls)
    pkg, emp = emp_pkg(cls, pkg)
    cand = {}
    ev = {}
    for it in range(iters):
        taken = set(mapping.values())
        F = Feats(P, O, meta, mapping, pkg, mem, km)
        free = collections.defaultdict(list)
        for x in O:
            if x not in taken:
                free[x.rsplit('/', 1)[0]].append(x)
        cand = {}
        for pk in P:
            if pk in mapping:
                continue
            pool = free.get(pkg.get(pk.rsplit('/', 1)[0])) or [x for x in O if x not in taken]
            base = sorted(((cheap(F, pk, ok), ok) for ok in pool), reverse=True)[:10]
            row = []
            for _, ok in base:
                c = F.comps(pk, ok)
                row.append((total(c),) + tuple(round(x, 3) for x in c) + (ok,))
            row.sort(reverse=True)
            if row:
                cand[pk] = row[:4]
        pairs = []
        for pk, r in cand.items():
            s1 = r[0][0]
            s2 = r[1][0] if len(r) > 1 else 0.0
            if s1 >= thr and s1 - s2 >= margin:
                pairs.append((s1 - s2, s1, pk, r[0][8]))
        pairs.sort(reverse=True)
        add = 0
        for mg, s1, pk, ok in pairs:
            if pk in mapping or ok in taken:
                continue
            mapping[pk] = ok
            taken.add(ok)
            ev[pk] = (s1, mg, cand[pk][0][1:8])
            add += 1
        if verbose:
            print('  iter %d +%d → %d/%d' % (it, add, len(mapping), len(P)))
        if not add:
            break
    return mapping, cand, pkg, ev


# ----------------------------------------------------------------------------- 包内全指派
def best_assignment(F, ps, os_, limit=9):
    """包内 N↔N：穷举最优指派（N≤9），返回 (总分, 指派, 次优总分)"""
    import itertools
    if len(ps) != len(os_) or not ps or len(ps) > limit:
        return None
    M = [[total(F.comps(p, o)) for o in os_] for p in ps]
    best = (-1, None, -1)
    for perm in itertools.permutations(range(len(os_))):
        s = sum(M[i][perm[i]] for i in range(len(ps)))
        if s > best[0]:
            best = (s, perm, best[0])
        elif s > best[2]:
            best = (best[0], best[1], s)
    return best[0], {ps[i]: os_[best[1][i]] for i in range(len(ps))}, best[2]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--thr', type=float, default=0.30)
    ap.add_argument('--margin', type=float, default=0.06)
    ap.add_argument('--iters', type=int, default=25)
    ap.add_argument('--report', default='')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--test', action='store_true', help='留一标定：已定名类的 rank-1 命中率')
    ap.add_argument('--cluster', action='store_true', help='对剩余 N↔N 包给全指派方案')
    a = ap.parse_args()

    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    probe_jar = ex(cfg['probe_jar']) if 'probe_jar' in cfg else ex(cfg.get('probe_jar_path', 'base/merged_ok.jar'))
    if not os.path.exists(probe_jar):
        for c in ('probe_jar', 'jar'):
            if c in cfg and os.path.exists(ex(cfg[c])):
                probe_jar = ex(cfg[c])
                break
    ojar = None
    for o in cfg['oracle_jars']:
        if o['label'] == a.oracle:
            ojar = ex(o['path'])
    if not ojar or not os.path.exists(ojar):
        sys.exit('缺 oracle jar：%s' % a.oracle)
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    part = os.path.normpath(part)

    H = os.path.expanduser('~')
    cache = os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'), os.path.basename(probe_jar)))
    ocache = os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))
    P = parse(disassemble(probe_jar, a.prefix, cache))
    O = parse(disassemble(ojar, a.oprefix, ocache))
    print('探针 %d 类 / oracle %d 类（javap 反汇编）' % (len(P), len(O)))
    meta = {}
    pcache = os.path.join(H, 'tmp', 'bcache.pkl')     # 复用 jvmbody 的 acc/super/ifaces 缓存
    for n, c in list(P.items()) + list(O.items()):
        meta[n] = (0, None, ())
    try:
        import pickle as _pk
        pb, ob = _pk.load(open(pcache, 'rb'))
        for k, v in list(pb.items()) + list(ob.items()):
            meta[k] = (v['acc'], v['sup'], tuple(v['ifaces']))
    except Exception:
        pass

    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    pkg = load_tsv_map(os.path.join(part, 'pkg_map.tsv'))
    mem, km = load_members(os.path.join(part, 'members.tsrg'))
    print('已定名 %d / pkg_map %d / 已知成员 %d' % (len(cls), len(pkg), len(mem)))

    if a.test:
        F = Feats(P, O, meta, cls, dict(emp_pkg(cls, pkg)[0]), mem, km)
        bypkg = collections.defaultdict(list)
        for x in O:
            bypkg[x.rsplit('/', 1)[0]].append(x)
        rows = []
        for pk, right in cls.items():
            if pk not in F.pf or right not in F.of:
                continue
            row = sorted(((total(F.comps(pk, o)), o) for o in bypkg[right.rsplit('/', 1)[0]]),
                         reverse=True)
            s1 = row[0][0]
            s2 = row[1][0] if len(row) > 1 else 0.0
            rows.append((s1, s1 - s2, row[0][1] == right))
        ok = sum(1 for r in rows if r[0] >= a.thr and r[1] >= a.margin and r[2])
        sel = sum(1 for r in rows if r[0] >= a.thr and r[1] >= a.margin)
        rank1 = sum(1 for r in rows if r[2])
        print('标定：rank-1 %d/%d = %.1f%%；thr=%.2f/margin=%.2f → 覆盖 %d，精度 %.3f'
              % (rank1, len(rows), 100.0 * rank1 / len(rows), a.thr, a.margin, sel,
                 (ok / sel) if sel else 0))
        return

    mapping, cand, pkg, ev = run(P, O, meta, cls, pkg, mem, km, a.thr, a.margin, a.iters)
    took = [(p, o) for p, o in mapping.items() if p not in cls]
    print('新增 %d 条（共 %d/%d）' % (len(took), len(mapping), len(P)))
    left = [x for x in P if x not in mapping]
    print('剩余 %d' % len(left))

    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\toracle\tscore\tmargin\tcomps\tmargin_ok\n')
            for pk in sorted(P):
                if pk in ev:
                    s1, mg2, cps = ev[pk]
                    w.write('%s\t%s\t%.3f\t%.3f\t%s\tY\n'
                            % (pk, mapping[pk], s1, mg2,
                               ','.join('%.2f' % x for x in cps)))
                    continue
                r = cand.get(pk)
                if not r:
                    w.write('%s\t\t\t\t\t\n' % pk)
                    continue
                s1 = r[0][0]
                s2 = r[1][0] if len(r) > 1 else 0.0
                w.write('%s\t%s\t%.3f\t%.3f\t%s\tn\n'
                        % (pk, r[0][8], s1, s1 - s2,
                           ','.join('%.2f' % x for x in r[0][1:8])))
        print('报告 →', a.report)

    if a.cluster:
        taken = set(mapping.values())
        free = collections.defaultdict(list)
        for x in O:
            if x not in taken:
                free[x.rsplit('/', 1)[0]].append(x)
        byp = collections.defaultdict(list)
        for x in left:
            byp[x.rsplit('/', 1)[0]].append(x)
        F = Feats(P, O, meta, mapping, pkg, mem, km)
        for pn in sorted(byp):
            op = pkg.get(pn)
            ps, os_ = sorted(byp[pn]), sorted(free.get(op, []))
            if not os_ or len(ps) > 9:
                continue
            r = best_assignment(F, ps, os_)
            if not r:
                print('== %s (%d) ↔ %s (%d) 计数不等，跳过' % (pn, len(ps), (op or '?').replace('org/jd/core/v1/', ''), len(os_)))
                continue
            tot_s, asg, tot2 = r
            print('== %s (%d) ↔ %s (%d) 最优 %s 次优 %s（差 %.2f）'
                  % (pn, len(ps), op.replace('org/jd/core/v1/', ''), len(os_), round(tot_s, 2),
                     round(tot2, 2), tot_s - tot2))
            for p in ps:
                print('    %-24s → %s' % (p.rsplit('/', 1)[-1], asg[p].rsplit('/', 1)[-1]))

    if a.apply:
        rows = []
        for p, o in took:
            s1, mg2, _ = ev[p]
            rows.append((p, o, 'fp:javap 字节码指纹 %.2f（与次优差 %.2f；七项=指令/成员/串/对齐/整数/子类/创建点）'
                         % (s1, mg2)))
        path = os.path.join(part, 'class_map.tsv')
        have = set(load_tsv_map(path))
        with open(path, 'a', encoding='utf-8') as w:
            for p, o, ev in sorted(rows):
                if p not in have:
                    w.write('%s\t%s\t%s\n' % (p, o, ev))
        print('已写入 %s（+%d）' % (path, len([r for r in rows if r[0] not in have])))


if __name__ == '__main__':
    main()
