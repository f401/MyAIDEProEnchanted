#!/usr/bin/env python3
"""audit.py —— 映射一致性审计（**不改任何文件**，只报告）。

三类硬矛盾，全部可复现（两侧 jar + 已定映射即可重跑）：

  kind    接口/类/注解错配（`interface` 映射到 `class`、`enum` 映射到非 `enum` 等）。
          这是最容易被"形状/计数"判据搞错的一类：接口没有方法体，指纹全是空的。
  hier    父类/接口矛盾：探针的父类已定名时，oracle 侧必须是同一个父类；
          探针的接口已定名时，oracle 侧必须包含同一个接口。
  size    oracle 比探针**少**方法/字段（ProGuard 只会删，不会凭空加；
          freelly 魔改可能两边都不等，所以只报"oracle 更少"这种不可能的方向）。

用法:
  python3 tools/deob/audit.py -p process/deob.json --part ../jobs/jdcore [--limit 40]
"""
import os
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bytefp
from bytefp import disassemble, parse, load_tsv_map


def kind_of(c):
    d = c['decl']
    if ' enum ' in d or d.startswith('enum '):
        return 'enum'
    if '@interface' in d:
        return 'annotation'
    if ' interface ' in d or d.startswith('interface '):
        return 'interface'
    return 'class'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--limit', type=int, default=40)
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    probe_jar = ex('base/merged_ok.jar')
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    H = os.path.expanduser('~')
    P = parse(disassemble(probe_jar, a.prefix,
                          os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'),
                                                                   os.path.basename(probe_jar)))))
    O = parse(disassemble(ojar, a.oprefix, os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    print('探针 %d / oracle %d / 已定名 %d' % (len(P), len(O), len(cls)))

    # oracle 侧祖先闭包（含接口的 extends 链）——"探针实现的是 A，而 oracle 实现的是 A 的子接口 B"
    # 不构成矛盾，所以要按闭包判定，不能只比直接父接口集合。
    up = {k: ([v.get('sup')] if v.get('sup') else []) + list(v.get('ifaces') or []) for k, v in O.items()}
    clos = {}
    def closure(x, seen=None):
        if x in clos:
            return clos[x]
        seen = seen or set()
        if x in seen:
            return {x}
        seen.add(x)
        out = {x}
        for p2 in up.get(x, []):
            out |= closure(p2, seen)
        clos[x] = out
        return out

    bad = collections.defaultdict(list)
    for p, o in cls.items():
        if p not in P or o not in O:
            bad['missing'].append((p, o, '两侧 jar 缺类'))
            continue
        pc, oc = P[p], O[o]
        kp, ko = kind_of(pc), kind_of(oc)
        if kp != ko:
            bad['kind'].append((p, o, '%s → %s' % (kp, ko)))
            continue
        ps, os_ = pc.get('sup'), oc.get('sup')
        if ps and ps in cls and os_ and cls[ps] != os_:
            bad['hier'].append((p, o, '父类 %s→%s，oracle 父类 %s' % (ps, cls[ps], os_)))
        pif = {cls[x] for x in (pc.get('ifaces') or []) if x in cls}
        oif = set(oc.get('ifaces') or [])
        for x in list(oif):
            oif |= closure(x)
        miss = pif - oif
        if miss:
            bad['hier'].append((p, o, '接口缺 %s' % ','.join(sorted(x.rsplit('/', 1)[-1] for x in miss))))
        # 方法集：oracle 的方法（按 name+参数个数归一）应 ⊇ 探针能对上的部分
        nm_p = len([1 for acc, n, ps2 in pc['methods'] if n not in ('<init>',)])
        nm_o = len([1 for acc, n, ps2 in oc['methods'] if n not in ('<init>',)])
        if nm_o + 2 < nm_p:
            bad['size'].append((p, o, '方法 %d → %d' % (nm_p, nm_o)))
        nf_p, nf_o = len(pc['fields']), len(oc['fields'])
        if nf_o + 2 < nf_p:
            bad['size'].append((p, o, '字段 %d → %d' % (nf_p, nf_o)))

    for k in ('kind', 'hier', 'size', 'missing'):
        rows = bad.get(k) or []
        print('\n== %s：%d 条' % (k, len(rows)))
        for p, o, why in rows[:a.limit]:
            print('   %-26s %-56s %s' % (p.replace(a.prefix + '/', '~'), o.replace(a.oprefix + '/', ''), why))
    return 1 if (bad.get('kind') or bad.get('hier')) else 0


if __name__ == '__main__':
    sys.exit(main())
