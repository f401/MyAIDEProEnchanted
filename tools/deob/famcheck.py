#!/usr/bin/env python3
"""famcheck.py —— 覆写族一致性（跨类的 override 必须同名），通用判据/体检。

为什么需要：一个成员被改名、而它**祖先里的同名同描述符方法**没改名（或改成了别的名字），
运行期就按名字分派不到 → `AbstractMethodError`。行级工具（membermatch）只在类内做闭包，
跨类要单独查。判据（不受改名影响）：**老名字 + 描述符**在继承链上必须一致。

用法:
  python3 tools/deob/famcheck.py --jar process/base/merged_ok.jar \
      --parts jobs/crashlytics/members.tsrg jobs/fabric/members.tsrg \
      [--prefix abcd/,com/crashlytics/,io/fabric/] [--apply]

  --apply 把"冲突/祖先未映射"的行整条撤掉（保守：宁可留原名，也不要半改覆写族）。
  只报告时按冲突/缺口分组打印。

注意：**必须按 (老名, 描述符) 匹配，不能只按描述符**——一个类可以有 `run()V` 和
`onRun()V` 两个不同方法，只按描述符判会把它们误当成同一个覆写（踩过：误撤 32 条）。
"""
import os, sys, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody


def load_jar(path, prefixes):
    z = zipfile.ZipFile(path)
    sup, ifs, decl = {}, {}, collections.defaultdict(set)
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if prefixes and not cn.startswith(tuple(prefixes)):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c:
            continue
        sup[cn] = c['sup'] or ''
        ifs[cn] = [x for x in (c['ifaces'] or []) if x]
        for m in c['members']:
            if m['kind'] == 'm' and not m['name'].startswith('<'):
                decl[cn].add((m['name'], m['desc']))
    return sup, ifs, decl


def ancestors(cn, sup, ifs):
    out, seen, st = [], set(), [sup.get(cn, '')] + list(ifs.get(cn, []))
    while st:
        x = st.pop()
        if not x or x in seen:
            continue
        seen.add(x); out.append(x)
        if x in sup:
            st += [sup.get(x, '')] + list(ifs.get(x, []))
    return out


def read_part(path):
    order, blocks, cur = [], {}, None
    for l in open(path, encoding='utf-8').read().split('\n'):
        if not l:
            continue
        if not l.startswith('\t'):
            cur = l.split(' ')[0]; order.append(l); blocks[cur] = []
        elif cur is not None:
            blocks[cur].append(l)
    return order, blocks


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', required=True)
    ap.add_argument('--parts', nargs='+', required=True)
    ap.add_argument('--prefix', default='')
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    prefixes = [x for x in a.prefix.split(',') if x]
    sup, ifs, decl = load_jar(a.jar, prefixes)
    idx = {}
    for p in a.parts:
        order, blocks = read_part(p)
        idx[p] = (order, blocks)
    mm = {}
    for p in a.parts:
        for c, rows in idx[p][1].items():
            for l in rows:
                t = l.strip().split(' ')
                if len(t) == 3:
                    mm.setdefault(c, {})[(t[0], t[1])] = t[2]
    conflict, missing = [], []
    for c, rows in mm.items():
        for (old, desc), new in rows.items():
            for anc in ancestors(c, sup, ifs):
                if (old, desc) not in decl.get(anc, ()):
                    continue
                got = mm.get(anc, {}).get((old, desc))
                if got is None:
                    missing.append((c, old, desc, new, anc))
                elif got != new:
                    conflict.append((c, old, desc, new, anc, got))
    print('覆写族体检：冲突 %d / 祖先未映射 %d' % (len(conflict), len(missing)))
    for r in conflict[:20]:
        print('  ✘ %-30s %s %s → %-24s 祖先 %-12s 已定名 %s' % (r[0].split('/')[-1], r[1], r[2][:34], r[3], r[4].split('/')[-1], r[5]))
    for r in missing[:20]:
        print('  ? %-30s %s %s → %-24s 祖先 %-12s 未映射' % (r[0].split('/')[-1], r[1], r[2][:34], r[3], r[4].split('/')[-1]))
    if a.apply and (conflict or missing):
        bad = {(r[0], r[1], r[2]) for r in conflict + missing}
        n = 0
        for p in a.parts:
            order, blocks = idx[p]
            for c in blocks:
                rows = [l for l in blocks[c]
                        if not (len(l.strip().split(' ')) == 3 and (c, l.strip().split(' ')[0], l.strip().split(' ')[1]) in bad)]
                n += len(blocks[c]) - len(rows)
                blocks[c] = rows
            with open(p, 'w', encoding='utf-8') as w:
                for h in order:
                    w.write(h + '\n')
                    for l in blocks[h]:
                        w.write(l + '\n')
        print('已撤掉 %d 行' % n)


if __name__ == '__main__':
    main()
