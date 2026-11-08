#!/usr/bin/env python3
"""bodymatch.py —— 「逐方法体」匹配：**不管描述符**，只比方法体，且名字必须来自 oracle 的未用名字池。

适用场景（本仓库 jd-core 的最后 300 条）：探针类已定名，但 freelly 基于更新的 jd-core，
成员签名（参数类型）变了 ⇒ 描述符桶匹配失效；而 oracle 同名类里的**名字**仍是那批
（getDimension/accept/getType/…），只是描述符不同。

判据（可复现）：
  * 探针方法体与 oracle 方法体都归一成 token 多重集（类型走 class_map 折叠、成员名走 members.tsrg）；
  * 候选池 = **同类 oracle 方法里还没被占用的名字**（已占用的按 members.tsrg 算）；
  * 接受条件：最佳分 ≥ thr 且与次佳差 ≥ margin，并且该 oracle 名字只被这一个探针方法认领（双向唯一）。

用法:
  python3 tools/deob/bodymatch.py -p process/deob.json --part ../jobs/jdcore [--apply] [--thr 0.6] [--margin 0.15]
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bytefp
from bytefp import disassemble, parse, load_tsv_map, Fold, jac, load_members, desc_from_params


def load_mem(path):
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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--thr', type=float, default=0.60)
    ap.add_argument('--margin', type=float, default=0.15)
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--report', default='')
    ap.add_argument('--limit', type=int, default=40, help='报告里打印多少条候选')
    ap.add_argument('--bijection', action='store_true', help='只用"类内 1:1 剩余"规则')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    H = os.path.expanduser('~')
    P = parse(disassemble(ex('base/merged_ok.jar'), a.prefix,
                          os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'), 'merged_ok.jar'))))
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    O = parse(disassemble(ojar, a.oprefix, os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    memf, memm = load_mem(os.path.join(part, 'members.tsrg'))
    # oracle 侧已被占用的名字：由**探针类的映射**推出来（memm 的键是探针类）
    claimed = collections.defaultdict(set)
    for (p2, n, d), real in memm.items():
        if p2 in cls:
            claimed[cls[p2]].add(real)
    km = {(o, n) for o, names in claimed.items() for n in names}
    f = Fold(cls, {}, memf, km)

    def bag(c, side, own):
        out = collections.Counter()
        for t, v in c['inst'].items():
            out[f.tok(t, side, own)] += v
        return out

    def mbag(c, side, own, body):
        out = collections.Counter()
        for t in body:
            out[f.tok(t, side, own)] += 1
        return out

    PRIM = {'Z': 'boolean', 'B': 'byte', 'C': 'char', 'S': 'short', 'I': 'int',
            'J': 'long', 'F': 'float', 'D': 'double'}
    import re as _re

    def params_of(desc):
        par = desc[desc.index('(') + 1:desc.rindex(')')]
        out = []
        for m in _re.finditer(r'L([\w/$]+);|\[+[ZBCSIJFD]|[ZBCSIJFD]', par):
            v = m.group(0)
            out.append(m.group(1).replace('/', '.') if v.startswith('L')
                       else (v if v.startswith('[') else PRIM.get(v, v)))
        return tuple(out)

    # ---- 模式 2：类内 1:1 剩余（未定名方法 1 个 / oracle 未用名字 1 个）→ 双射强制，
    #      再用"返回类型相同"做硬校验（fork 改的通常是参数，返回类型极少改）。
    bij = []
    if a.bijection:
        # bcache.pkl 只缓存过 jd-core 的类；缺的直接从 jar 读描述符
        import zipfile as _zf
        sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(
            os.path.abspath(__file__))), 'jgit'))
        import jvmbody as _jb
        def _descs(jar, names):
            z = _zf.ZipFile(jar); out = {}
            for n in names:
                try:
                    ms = _jb.parse(z.read(n + '.class'))['members']
                    out[n] = [(x['name'], x['desc']) for x in ms if x.get('kind') == 'm']
                except Exception:
                    pass
            return out
        rdesc = _descs(ex('base/merged_ok.jar'), list(P))
        rdesc.update(_descs(ojar, list(O)))
        for pk, ok in cls.items():
            if pk not in P or ok not in O or pk not in rdesc or ok not in O:
                continue
            have = {(n, params_of(d)) for (p2, n, d) in memm if p2 == pk}
            ctor = pk.replace('/', '.')
            unnamed = [m for m in P[pk]['mbody']
                       if m and m[0] not in ('<init>', '<clinit>', ctor, 'toString', 'equals', 'hashCode')
                       and (m[0], m[1]) not in have]
            used = claimed.get(ok, set())
            octor = ok.replace('/', '.')
            unused = [m for m in O[ok]['mbody']
                      if m and m[0] not in ('<init>', '<clinit>', octor) and m[0] not in used]
            if len(unnamed) != 1 or len(unused) != 1:
                continue
            pm, om = unnamed[0], unused[0]
            pdesc = '(' + ''.join('L%s;' % x.replace('.', '/') if x not in 'ZBCSIJFD' else x
                                  for x in pm[1]) + ')'
            pd = [d for (n, d) in rdesc[pk] if n == pm[0] and d[:d.index(')') + 1] == pdesc]
            od = [d for (n, d) in rdesc.get(ok, []) if n == om[0]]
            if not pd or not od:
                continue
            pr, orr = pd[0][pd[0].index(')') + 1:], od[0][od[0].index(')') + 1:]
            if pr != orr:
                continue
            bij.append((pk, pm[0], pm[1], om[0], pd[0]))
        print('类内 1:1 且返回类型一致：%d 组' % len(bij))
        for x in bij[:a.limit]:
            print('   %-26s %-4s → %s' % (x[0].replace('org/c/a/a/', '~'), x[1], x[3]))

    cands = []
    for pk, ok in cls.items():
        if pk not in P or ok not in O:
            continue
        used_names = claimed.get(ok, set())
        named = {(n, params_of(d)) for (p, n, d) in memm if p == pk}
        ometh = []
        octor = ok.replace('/', '.')
        for sig, body in O[ok]['mbody'].items():
            if sig is None or sig[0] in ('<init>', '<clinit>', octor) or sig[0] in used_names:
                continue
            ometh.append((sig[0], mbag(O[ok], 'o', ok, body)))
        if not ometh:
            continue
        ctor_name = pk.replace('/', '.')
        for sig, body in P[pk]['mbody'].items():
            if sig is None or sig[0] in ('<init>', '<clinit>', ctor_name):
                continue                       # javap 把构造器名字打印成类名
            if (sig[0], sig[1]) in named:
                continue                       # 已定名
            if sig[0] in ('toString', 'equals', 'hashCode', 'clone', 'compareTo'):
                continue                       # JDK 契约名（不计入覆盖率）
            pb = mbag(P[pk], 'p', pk, body)
            scored = sorted(((jac(pb, ob) or 0, name) for name, ob in ometh), reverse=True)
            if not scored:
                continue
            s1, n1 = scored[0]
            s2 = scored[1][0] if len(scored) > 1 else 0.0
            cands.append((pk, sig[0], sig[1], n1, s1, s1 - s2))
    ok_c = [c for c in cands if c[4] >= a.thr and c[5] >= a.margin]
    # 双向唯一：一个 oracle 名字只能被一个探针方法认领
    byname = collections.Counter((c[0], c[3]) for c in ok_c)
    final = [c for c in ok_c if byname[(c[0], c[3])] == 1]
    print('候选 %d 条，达阈值 %d 条，双向唯一 %d 条' % (len(cands), len(ok_c), len(final)))
    for c in sorted(final, key=lambda x: -x[4])[:a.limit]:
        print('   %-26s %-4s → %-30s %.2f (lead %.2f)' % (c[0].replace('org/c/a/a/', '~'), c[1], c[3], c[4], c[5]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\told\tnew\tscore\tlead\n')
            for c in final:
                w.write('%s\t%s\t%s\t%.3f\t%.3f\n' % (c[0], c[1], c[3], c[4], c[5]))
        print('   报告 →', a.report)
    if a.apply:
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
        # 需要真实描述符：从 jvmbody 缓存取
        import pickle
        try:
            pb, _ = pickle.load(open(os.path.join(H, 'tmp', 'bcache.pkl'), 'rb'))
            realdesc = {k: [(n, d) for acc, n, d in c['methods']] for k, c in pb.items()}
        except Exception:
            realdesc = {}
        # bcache.pkl 只缓存了当初跑过的前缀（如 jd-core）；其余类直接从 jar 里读描述符
        need = [pk for pk, _o, _p, _n, _s, _m in final if pk not in realdesc]
        if need:
            import zipfile as _zf
            sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(
                os.path.abspath(__file__))), 'jgit'))
            import jvmbody as _jb
            _z = _zf.ZipFile(ex('base/merged_ok.jar'))
            for _pk in need:
                try:
                    _c = _jb.parse(_z.read(_pk + '.class'))['members']
                    realdesc[_pk] = [(x['name'], x['desc']) for x in _c if x.get('kind') == 'm']
                except Exception:
                    pass
        n = 0
        for pk, old, params, new, s1, mg in final:
            pdesc = '(' + desc_from_params(params) + ')'
            d = [dd for (nn, dd) in realdesc.get(pk, []) if nn == old and dd[:dd.index(')') + 1] == pdesc]
            if not d:
                continue
            blocks[pk].append('\t%s %s %s' % (old, d[0], new))
            n += 1
        with open(path, 'w', encoding='utf-8') as w:
            for pk in order:
                if pk is None:
                    w.write('\n')
                    continue
                w.write('\n'.join(blocks[pk]) + '\n')
        print('   写入 members.tsrg：+%d 行' % n)


if __name__ == '__main__':
    main()
