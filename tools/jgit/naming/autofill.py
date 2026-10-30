#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""autofill.py [--apply] —— 机械补名：类内「描述符唯一」的 1:1 成员匹配。

规则（保守，全部满足才补）：
  1. 只看 oracle 里存在的目标类，且只匹配 **该类自己声明** 的成员（继承来的不算）；
  2. 探针侧：该 (name,desc) 还没映射；oracle 侧：该名字还没被本类任何探针成员占用；
  3. 同一个描述符在两侧都 **各只有 1 个**候选（有重载就不猜）；
  4. static 标志一致；
  5. 不碰 <init>/<clinit> 和 Object 家族（toString/equals/hashCode/clone/finalize）；
  6. 不碰「祖先已映射过同名同描述符」的成员（那是 override，交给 FART 传播），
     也不碰「后代已把它映射成别的名字」的情况（避免破 override）。
字段同理，按字段类型描述符唯一定位。
"""
import os, re, sys, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = _P.MAP
TSRG = _P.TSRG
SKIP_NAMES = {'toString', 'equals', 'hashCode', 'clone', 'finalize'}


def load_all(jar):
    z = zipfile.ZipFile(jar)
    out = {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        c = parse_class(z.read(n))
        if c['this']:
            out[c['this']] = c
    return out


def main():
    apply = '--apply' in sys.argv
    p2t = {}
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2 and f[0] != 'abcd_class':
            p2t['abcd/' + f[0]] = f[1]
    TREF = re.compile(r'L(abcd/[^;]+);')
    norm = lambda d: TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)

    orc = load_all(ORACLE)
    prb = load_all(PROBE)

    blocks, order, cur = {}, [], None
    for ln in open(TSRG):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]; blocks[cur] = []; order.append(cur)
        else:
            blocks[cur].append(ln)

    # 继承：probe 侧 sup
    kids = collections.defaultdict(set)
    for cn, c in prb.items():
        if c['super']:
            kids[c['super']].add(cn)

    def mapped(probe):
        out = {}
        for ln in blocks.get(probe, []):
            p = ln.split()
            out[(p[0], p[1] if len(p) == 3 else '')] = p[-1]
        return out

    # 祖先/后代同名同描述符索引
    anc_of = {}
    def ancestors(cn):
        if cn in anc_of:
            return anc_of[cn]
        out, st = set(), [cn]
        while st:
            x = st.pop()
            s = prb.get(x, {}).get('super')
            if s and s in prb and s not in out:
                out.add(s); st.append(s)
        anc_of[cn] = out
        return out
    desc_of = {}
    def descs(cn):
        if cn in desc_of:
            return desc_of[cn]
        out = set()
        st = list(kids.get(cn, ()))
        while st:
            x = st.pop()
            out.add(x); st.extend(kids.get(x, ()))
        desc_of[cn] = out
        return out

    plan = []
    for probe, target in p2t.items():
        if probe not in prb or target not in orc:
            continue
        p, o = prb[probe], orc[target]
        mp = mapped(probe)
        used = set(mp.values())
        ancnames = set()
        for a in ancestors(probe):
            for (nm, ds), nw in mapped(a).items():
                ancnames.add((nm, ds, nw))
        anc_keys = {(nm, ds) for nm, ds, _ in ancnames}
        desc_keys = set()
        for d in descs(probe):
            for (nm, ds), nw in mapped(d).items():
                desc_keys.add((nm, ds, nw))

        for kind, key in (('m', 'methods'), ('f', 'fields')):
            pm = [(n, d, a) for n, d, a in p[key] if (n, d if kind == 'm' else '') not in mp]
            om = [(n, d, a) for n, d, a in o[key] if n not in used]
            pg, og = collections.defaultdict(list), collections.defaultdict(list)
            for n, d, a in pm:
                pg[norm(d)].append((n, d, a))
            for n, d, a in om:
                og[d].append((n, d, a))
            for d, ps in pg.items():
                if len(ps) != 1 or len(og.get(d, ())) != 1:
                    continue
                n1, d1, a1 = ps[0]
                n2, d2, a2 = og[d][0]
                if n2.startswith('<') or n2 in SKIP_NAMES:
                    continue
                if (a1 & 0x0008) != (a2 & 0x0008):
                    continue
                if (n1, d1 if kind == 'm' else '') in anc_keys:
                    continue
                if any(k[0] == n1 and k[1] == d1 and k[2] != n2 for k in desc_keys):
                    continue
                plan.append((probe, kind, n1, d1, n2))
                used.add(n2)

    cnt = collections.Counter(x[1] for x in plan)
    cls = collections.Counter(x[0] for x in plan)
    print('可补: 方法 %d, 字段 %d, 涉及类 %d' % (cnt['m'], cnt['f'], len(cls)))
    print('候选最多的类:')
    for c, n in cls.most_common(8):
        print('   %-20s -> %-58s %d' % (c, p2t[c], n))
    if not apply:
        print('\n前 12 条示例:')
        for x in plan[:12]:
            print('   %-14s %s %-12s %-50s -> %s' % x)
        return 0
    with open('/storage/emulated/0/MyAIDEProEnchanted/tools/jgit/fixes/autofill.tsv', 'w') as fh:
        for probe, kind, n1, d1, n2 in plan:
            fh.write('%s\t%s\t%s\t%s\t-\t%s\n' % (probe, kind, n1, d1, n2))
    print('\n已写 tools/jgit/fixes/autofill.tsv（用 mapfix.py 落库）')
    return 0


if __name__ == '__main__':
    sys.exit(main())
