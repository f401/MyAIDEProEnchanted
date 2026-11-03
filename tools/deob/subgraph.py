#!/usr/bin/env python3
"""subgraph.py —— 剩余类的"子图约束求解"。

问题：proguard 里还剩一批类，单看自己没有任何信号（成员被裁空 / 签名里含**互相**
未定名的类型）。这时把"整个 part 的未定名类"当成一个约束系统一起解：

  变量    = 每个未定名的探针类（值域 = 同包的 oracle 未占用类）
  约束    = 类标志 / 父类 / 接口 / 成员计数 / 描述符骨架（未定名类型折叠成 ?）
            / 符号引用（谁的谁：owner+name+desc，改名不变）/ 字符串常量
  求解    = AC-3 式单点剪枝（一元约束）+ 注入性（同包内一一对应）
            + 互唯一（探针唯一候选且候选唯一探针）+ 回溯（二元约束：父类/接口）

判据前缀 `csp:`：`csp:单点剪枝(域 3→1)`、`csp:互唯一`、`csp:回溯唯一解`。

用法:
  python3 tools/deob/subgraph.py --part jobs/proguard --probe-prefix a build
  python3 tools/deob/subgraph.py --part jobs/proguard --probe-prefix a solve [--apply]
"""
import os
import re
import sys
import json
import zipfile
import argparse
import collections

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
import smali  # noqa: E402
import jvm    # noqa: E402

TYPEREF = re.compile(r'L([A-Za-z0-9_$/]+);')
SYMREF = re.compile(r'L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[A-Za-z0-9_$/\[;]+|:[A-Za-z0-9_$/\[;]+)')
STRC = re.compile(r'const-string(?:/jumbo)?\s+v\d+,\s*"(.*)"$', re.M)


def _acc(tokens):
    keep = {'public', 'private', 'protected', 'static', 'final', 'abstract',
            'synchronized', 'native', 'volatile', 'transient', 'enum', 'interface'}
    return tuple(sorted(t for t in tokens if t in keep))


def _t(s):
    """`La/b/c;` → `a/b/c`（探针侧描述符 → 内部名，与 oracle 侧同口径）。"""
    if s and s.startswith('L') and s.endswith(';'):
        return s[1:-1]
    return s


def probe_model(path):
    t = open(path, encoding='utf-8', errors='replace').read()
    p = smali.parse(path)
    if p is None:
        return None
    return dict(
        sup=_t(p['super']), ifaces=tuple(_t(i) for i in p['ifaces']),
        cflags=tuple(sorted(t for t in p['class_access']
                             if t in ('public', 'final', 'interface', 'abstract'))),
        methods=tuple((n, d, tuple(sorted(
                          (['static'] if 'static' in p['macc'].get((n, d), ()) else []) +
                          (['abstract'] if 'abstract' in p['macc'].get((n, d), ()) else []))))
                      for (n, d, st, syn) in p['methods']),
        fields=tuple((n, d, 'static' if st else '') for (n, d, st, syn) in p['fields']),
        symrefs=tuple(sorted({(a, b, c) for a, b, c in SYMREF.findall(t)})),
        strs=tuple(sorted(set(STRC.findall(t)))),
    )


def oracle_model(b):
    c = jvm.parse(b)
    import struct
    acc = struct.unpack_from('>H', b, c['acc_off'])[0]
    fl = []
    for bit, nm in ((0x1, 'public'), (0x10, 'final'), (0x200, 'interface'), (0x400, 'abstract')):
        if acc & bit:
            fl.append(nm)
    return dict(
        sup=c['sup'], ifaces=tuple(c['ifaces']), cflags=tuple(sorted(fl)),
        methods=tuple((m['name'], m['desc'], tuple(sorted(
                          (['static'] if m['acc'] & 8 else []) +
                          (['abstract'] if m['acc'] & 0x400 else []))))
                      for m in c['members'] if m['kind'] == 'm'),
        fields=tuple((m['name'], m['desc'], 'static' if m['acc'] & 8 else '')
                     for m in c['members'] if m['kind'] == 'f'),
        symrefs=tuple(sorted({(o, n, d) for (o, n, d, tg) in c['refmap'].values()})),
        strs=(),
    )


def build(args):
    cfg = json.load(open(os.path.join(ROOT, 'process', 'deob.json'), encoding='utf-8'))
    idx = smali.Index(os.path.join(ROOT, 'process', 'truth', 'smali_index.tsv'))
    roots = [os.path.join(ROOT, 'process', r) for r in cfg['probe_roots']]
    partdir = os.path.join(ROOT, args.part)
    names = sorted({l.split('\t')[0] for l in open(os.path.join(ROOT, 'process', 'truth',
                                                               'smali_index.tsv'), encoding='utf-8')
                    if l.startswith(args.probe_prefix + '/')})
    out = {}
    for i, n in enumerate(names):
        m = probe_model(idx.file_for(roots, n))
        if m:
            out[n] = m
        if (i + 1) % 200 == 0:
            print('  probe %d/%d' % (i + 1, len(names)), file=sys.stderr)
    cache = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_probe_%s.json' % args.probe_prefix)
    json.dump(out, open(cache, 'w'), ensure_ascii=False)
    print('probe 模型 %d 个 → %s' % (len(out), cache))

    orc = {}
    for spec in cfg['oracle_jars']:
        label, path = spec['label'], os.path.expandvars(spec['path'])
        if not label.startswith(args.oracle_label):
            continue
        z = zipfile.ZipFile(path)
        for e in z.namelist():
            if not e.endswith('.class'):
                continue
            nm = e[:-6]
            if '$' in nm and getattr(args, 'skip_inner', False):
                continue
            try:
                orc[nm] = oracle_model(z.read(e))
            except Exception as ex:
                print('skip', nm, ex, file=sys.stderr)
    ocache = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_oracle_%s.json' % args.oracle_label)
    json.dump(orc, open(ocache, 'w'), ensure_ascii=False)
    print('oracle 模型 %d 个 → %s' % (len(orc), ocache))




# ---------------------------------------------------------------- 求解


def _split(d):
    return d.rsplit('/', 1)[0] if '/' in d else ''


def _deep(x):
    if isinstance(x, list):
        return tuple(_deep(y) for y in x)
    return x


def _untuple(d):
    for m in d.values():
        for k in ('methods', 'fields', 'symrefs', 'strs'):
            m[k] = _deep(m[k])
        m['ifaces'] = tuple(m['ifaces'])
        m['cflags'] = tuple(m['cflags'])
    return d


def load_models(tag, oracle_label):
    ph = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_probe_%s.json' % tag)
    oh = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_oracle_%s.json' % oracle_label)
    return (_untuple(json.load(open(ph, encoding='utf-8'))),
            _untuple(json.load(open(oh, encoding='utf-8'))))


def norm_type(t, ctx_mapped, unk):
    if t in ctx_mapped:
        return 'L' + ctx_mapped[t] + ';'
    if t in unk:
        return '?'
    if t.startswith('a/'):
        return '?'
    return 'L' + t + ';'


def skel_desc(desc, ctx_mapped, unk):
    return TYPEREF.sub(lambda m: norm_type(m.group(1), ctx_mapped, unk), desc)


def ref_types(model):
    out = set()
    for (own, nm, dsc) in model['symrefs']:
        out.add(own)
        out.update(TYPEREF.findall(dsc))
    for dsc in [m[1] for m in model['methods']] + [f[1] for f in model['fields']]:
        out.update(TYPEREF.findall(dsc))
    if model.get('sup'):
        out.add(model['sup'])
    out.update(model['ifaces'])
    return out


class Ctx:
    """一个 part 的约束上下文。`mapped` 是**当前**（含试探）的类映射。"""

    def __init__(self, probe, oracle, pkgmap, mapped):
        self.probe = probe
        self.oracle = oracle
        self.pkgmap = pkgmap
        self.mapped = dict(mapped)
        self.used = set(mapped.values())
        self.unk = {o for o in oracle if o not in self.used}
        self.in_p, self.in_o = self._inrefs()

    def clone(self):
        c = Ctx.__new__(Ctx)
        c.probe, c.oracle, c.pkgmap = self.probe, self.oracle, self.pkgmap
        c.mapped = dict(self.mapped)
        c.used = set(c.mapped.values())
        c.unk = self.unk
        c.in_p, c.in_o = self.in_p, self.in_o
        return c

    def _inrefs(self):
        in_p, in_o = collections.defaultdict(set), collections.defaultdict(set)
        for q in self.probe:
            if q not in self.mapped:
                continue
            tgt = self.mapped[q]
            for t in ref_types(self.probe[q]):
                in_p[t].add(tgt)
        for o in self.oracle:
            if o not in self.used:
                continue
            for t in ref_types(self.oracle[o]):
                in_o[t].add(o)
        return in_p, in_o

    def refs_mapped(self, model):
        out = set()
        for (own, nm, dsc) in model['symrefs']:
            for t in [own] + TYPEREF.findall(dsc):
                if t in self.mapped:
                    out.add(self.mapped[t])
        for dsc in [m[1] for m in model['methods']] + [f[1] for f in model['fields']]:
            for t in TYPEREF.findall(dsc):
                if t in self.mapped:
                    out.add(self.mapped[t])
        if model.get('sup') in self.mapped:
            out.add(self.mapped[model['sup']])
        for i in model['ifaces']:
            if i in self.mapped:
                out.add(self.mapped[i])
        return out

    def unary(self, p, o):
        """一元约束。返回 None 表示相容，否则返回被哪条判据剔除。"""
        P, O = self.probe[p], self.oracle[o]
        if P['cflags'] != O['cflags']:
            return 'flags'
        # AIDE 这份比官方小（757 vs 804 类），成员被裁/内联过 → 只能要求"子多重集"
        if len(P['methods']) > len(O['methods']) or len(P['fields']) > len(O['fields']):
            return 'counts'
        if collections.Counter(m[2] for m in P['methods']) - \
           collections.Counter(m[2] for m in O['methods']):
            return 'macc'
        if collections.Counter(f[2] for f in P['fields']) - \
           collections.Counter(f[2] for f in O['fields']):
            return 'facc'
        if collections.Counter(skel_desc(m[1], self.mapped, self.unk) for m in P['methods']) - \
           collections.Counter(skel_desc(m[1], self.mapped, self.unk) for m in O['methods']):
            return 'mskel'
        if collections.Counter(skel_desc(f[1], self.mapped, self.unk) for f in P['fields']) - \
           collections.Counter(skel_desc(f[1], self.mapped, self.unk) for f in O['fields']):
            return 'fskel'
        ps, os_ = P['sup'], O['sup']
        if ps in self.mapped:
            if os_ != self.mapped[ps]:
                return 'super'
        elif ps:
            if ps.startswith('a/'):
                if _split(os_ or '') != self.pkgmap.get(_split(ps), '~'):
                    return 'superpkg'
            elif os_ != ps:
                return 'super'
        pi = [i for i in P['ifaces'] if i in self.mapped]
        if not set(self.mapped[i] for i in pi) <= set(O['ifaces']):
            return 'iface'
        pu = [i for i in P['ifaces'] if i not in self.mapped]
        ou = [i for i in O['ifaces'] if i not in self.used]
        if len(pu) > len(ou):
            return 'ifacecnt'
        if collections.Counter(self.pkgmap.get(_split(i), '~') for i in pu) - \
           collections.Counter(_split(i) for i in ou):
            return 'ifacepkg'
        ip, io_ = self.in_p.get(p, set()), self.in_o.get(o, set())
        if not ip <= io_ or len(io_ - ip) > 2:
            return 'inrefs'
        rp = self.refs_mapped(P)
        ro = self.refs_mapped(O)
        if not rp <= ro or len(ro - rp) > 3:
            return 'refs'
        return None

    def domain(self, p, pool):
        return [o for o in pool if o not in self.used]


def _propagate(ctx, dom, log=None):
    """单点剪枝 + 双向唯一。返回 {探针: 目标}。"""
    assigned = {}
    changed = True
    while changed:
        changed = False
        for p in sorted(dom):
            if p in assigned:
                continue
            keep, why = [], []
            for o in dom[p]:
                if o in ctx.used:
                    continue
                r = ctx.unary(p, o)
                if r is None:
                    keep.append(o)
                else:
                    why.append((o, r))
            if len(keep) != len(dom[p]):
                changed = True
            dom[p] = keep
            if len(keep) == 1:
                assigned[p] = keep[0]
                ctx.mapped[p] = keep[0]
                ctx.used.add(keep[0])
                if log:
                    log.append(('单点', p, keep[0]))
        back = collections.defaultdict(list)
        for p in dom:
            if p in assigned:
                continue
            for o in dom[p]:
                if o not in ctx.used:
                    back[o].append(p)
        for o, ps in sorted(back.items()):
            if len(ps) == 1 and ps[0] not in assigned:
                assigned[ps[0]] = o
                ctx.mapped[ps[0]] = o
                ctx.used.add(o)
                changed = True
                if log:
                    log.append(('反向唯一', ps[0], o))
    return assigned


def _backtrack(ctx, dom, assigned, limit=2):
    rest = [p for p in sorted(dom) if p not in assigned and dom[p]]
    rest.sort(key=lambda p: len([o for o in dom[p] if o not in ctx.used]))
    if not rest or len(rest) > 45:
        return None, rest
    sols = []

    def dfs(i):
        if len(sols) > limit:
            return
        if i == len(rest):
            sols.append(dict(assigned))
            return
        p = rest[i]
        for o in dom[p]:
            if o in ctx.used:
                continue
            ctx.mapped[p] = o
            ctx.used.add(o)
            if ctx.unary(p, o) is None:
                dfs(i + 1)
            ctx.used.discard(o)
            del ctx.mapped[p]

    dfs(0)
    if len(sols) == 1:
        return sols[0], rest
    return None, rest


def _load(partrel, probe_prefix, oracle_label):
    probe, oracle = load_models(probe_prefix, oracle_label)
    partdir = os.path.join(ROOT, partrel)
    mapped, pkgmap, ev = {}, {}, {}
    for line in open(os.path.join(partdir, 'class_map.tsv'), encoding='utf-8'):
        f = line.rstrip('\n').split('\t')
        if len(f) >= 2:
            mapped[f[0]] = f[1]
            ev[f[0]] = f[2].split(':')[0] if len(f) > 2 else ''
    for line in open(os.path.join(partdir, 'pkg_map.tsv'), encoding='utf-8'):
        f = line.rstrip('\n').split('\t')
        if len(f) >= 2:
            pkgmap[f[0]] = f[1]
    return probe, oracle, mapped, pkgmap, ev


STRONG = {'strict', 'body', 'recv', 'tag', 'set', 'identity', 'visit', 'iface', 'who', 'refs'}


def solve_pkg(args):
    """按包重新解：只要某包的"未定名数 > 未占用 oracle 数"，就说明这包的账不平，
    把该包里**弱证据**（pkg/cm/contain/anc/str/bij/iso）的类一并放开重解。"""
    probe, oracle, mapped, pkgmap, ev = _load(args.part, args.probe_prefix, args.oracle_label)
    todo = [p for p in probe if p not in mapped]
    stall = collections.Counter(_split(p) for p in todo)
    pkgs = [k for k in stall if k in pkgmap]
    ctx = Ctx(probe, oracle, pkgmap, mapped)
    out, report = {}, []
    for pkg in sorted(pkgs):
        opkg = pkgmap[pkg]
        probes = sorted(p for p in probe if _split(p) == pkg)
        pool = [o for o in oracle if _split(o) == opkg]
        free = [o for o in pool if o not in ctx.used]
        if stall[pkg] <= len(free):
            continue
        fixed = {p: mapped[p] for p in probes if p in mapped and ev.get(p) in STRONG}
        keep = set(fixed.values())
        vars_ = [p for p in probes if p not in fixed]
        for o in keep:
            if o in ctx.used:
                pass
        c2 = Ctx(probe, oracle, pkgmap, {p: fixed[p] for p in fixed})
        dom = {p: [o for o in pool if o not in keep] for p in vars_}
        log = []
        a = _propagate(c2, dom, log)
        b, rest = _backtrack(c2, dom, a)
        got = b if b is not None else (a if not rest else None)
        report.append((pkg, len(vars_), len(pool), len(keep), len(a), len(rest),
                       '唯一' if got is not None else '歧义'))
        if got is not None:
            for p, o in sorted(got.items()):
                out[p] = o
    print('%-24s vars pool fixed 单点 未定 结论' % '包')
    for r in report:
        print('%-24s %4d %4d %5d %4d %4d %s' % r)
    print('包内重解定下 %d 个' % len(out))
    path = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_pkg.tsv')
    with open(path, 'w', encoding='utf-8') as f:
        for p, o in sorted(out.items()):
            f.write('%s\t%s\t%s\n' % (p, o, 'REVISE' if p in mapped and mapped[p] != o else
                                      ('NEW' if p not in mapped else 'same')))
    print('→', path)


def solve(args):
    probe, oracle, mapped, pkgmap, ev = _load(args.part, args.probe_prefix, args.oracle_label)
    ctx = Ctx(probe, oracle, pkgmap, mapped)
    todo = [p for p in probe if p not in mapped]
    dom = {}
    for p in todo:
        op = pkgmap.get(_split(p))
        if op:
            dom[p] = [o for o in oracle if _split(o) == op and o not in ctx.used]
    print('未定名 %d 个，值域合计 %d 个候选' % (len(todo), sum(len(v) for v in dom.values())))
    if args.why:
        for p in args.why:
            print('==', p, 'sup', probe[p]['sup'], 'ifaces', probe[p]['ifaces'],
                  'flags', probe[p]['cflags'],
                  'nm', len(probe[p]['methods']), 'nf', len(probe[p]['fields']))
            for o in dom.get(p, []):
                print('   %-64s %-8s (nm=%d nf=%d flags=%s)' % (
                    o, ctx.unary(p, o) or 'OK', len(oracle[o]['methods']),
                    len(oracle[o]['fields']), oracle[o]['cflags']))
        return
    log = []
    a = _propagate(ctx, dom, log)
    for kind, p, o in log:
        print('  %-6s %-18s → %-58s' % (kind, p, o))
    b, rest = _backtrack(ctx, dom, a)
    print('传播定下 %d；回溯：未定 %d 个变量 → %s'
          % (len(a), len(rest), '唯一解' if b is not None else '歧义/无解'))
    got = b if b is not None else a
    path = os.path.join(os.path.expanduser('~'), 'tmp', 'subgraph_solved.tsv')
    with open(path, 'w', encoding='utf-8') as f:
        for p, o in sorted(got.items()):
            f.write('%s\t%s\n' % (p, o))
    print('总计 %d / %d → %s' % (len(got), len(todo), path))
    left = [p for p in todo if p not in got]
    print('仍未定 %d 个：%s' % (len(left), ' '.join(left)))


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd', choices=['build', 'solve', 'pkg'])
    ap.add_argument('--part', default='jobs/proguard')
    ap.add_argument('--probe-prefix', default='a')
    ap.add_argument('--oracle-label', default='proguard')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--why', nargs='*')
    a = ap.parse_args()
    if a.cmd == 'build':
        build(a)
    elif a.cmd == 'pkg':
        solve_pkg(a)
    else:
        solve(a)
