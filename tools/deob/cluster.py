#!/usr/bin/env python3
"""cluster.py —— 给"没有 oracle 的混淆类"分诊：按**引用到的真实包**和**字符串常量**聚类。

用途：整包混淆（`abcd/**`）时没有 oracle 可比，只能按作用命名。先聚类，才知道
"这一坨是 git UI / 那一坨是编译器驱动"，再一簇一簇命名。

判据（都不受改名影响）：
  refs  : 该类引用到的**真实包**（java/* 之外的 L 描述符里的包名）→ 说明它在跟谁打交道
  strs  : 常量串里"像人话/像路径/像 UI 文案"的（长度≥4、含空格或大写或 / .）
  size  : 方法/字段数（工作量估计）

用法:
  python3 tools/deob/cluster.py --jar process/base/merged_ok.jar --prefix abcd \
      --done jobs/jgit/class_map.tsv jobs/jsch/class_map.tsv jobs/aide/class_map.tsv \
      --out ~/tmp/clusters.tsv [--top 25]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_HUMAN = re.compile(r'[A-Za-z]{4,}[\s:/._-]|[a-z]{3,}\s+[a-z]{3,}')


def load_done(paths):
    done = set()
    for p in paths:
        for ln in open(p, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if t and t[0]:
                done.add(t[0].split('/')[-1] if '/' not in t[0] else t[0])
    return done


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--done', nargs='*', default=[])
    ap.add_argument('--out', default='')
    ap.add_argument('--top', type=int, default=25)
    a = ap.parse_args()
    done = load_done(a.done)
    z = zipfile.ZipFile(a.jar)
    rows = []
    for n in z.namelist():
        if not n.endswith('.class') or not n.startswith(a.prefix + '/'):
            continue
        cn = n[:-6]
        short = cn.split('/', 1)[1]
        if cn in done or short in done:
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c:
            continue
        pkgs = collections.Counter()
        for (ow, nm, ds, tag) in (c.get('refmap') or {}).values():
            if not ow:
                continue
            p = ow.rsplit('/', 1)[0] if '/' in ow else ''
            if p and not p.startswith(('java/', 'android/', 'androidx/', 'kotlin')) \
                    and not (p == a.prefix or p.startswith(a.prefix + '/')):
                pkgs[p] += 1
        for x in [c.get('sup')] + list(c.get('ifaces') or []):
            if x and '/' in x:
                p = x.rsplit('/', 1)[0]
                if not p.startswith(('java/', 'android/', 'androidx/')) \
                        and not (p == a.prefix or p.startswith(a.prefix + '/')):
                    pkgs[p] += 1
        strs = []
        for i in (c.get('strs') or {}).values():
            v = c['utf'].get(i)
            if v and 4 <= len(v) <= 120 and RE_HUMAN.search(v):
                strs.append(v)
        ms = [m for m in c['members'] if m['kind'] == 'm']
        fs = [m for m in c['members'] if m['kind'] == 'f']
        rows.append((cn, len(ms), len(fs), pkgs.most_common(3), strs[:4]))
    print('未还原 %s 类：%d' % (a.prefix, len(rows)))
    # 按"最主要的真实包"聚类
    cl = collections.defaultdict(list)
    for r in rows:
        key = r[3][0][0] if r[3] else '(不引用真实包)'
        cl[key].append(r)
    for k, v in sorted(cl.items(), key=lambda x: -len(x[1]))[:a.top]:
        nm = sum(x[1] for x in v); nf = sum(x[2] for x in v)
        print('%-46s %4d 类  方法 %5d  字段 %5d' % (k, len(v), nm, nf))
    if a.out:
        with open(os.path.expanduser(a.out), 'w', encoding='utf-8') as w:
            w.write('#class\tmethods\tfields\ttop_pkgs\tsample_strings\n')
            for r in sorted(rows):
                w.write('%s\t%d\t%d\t%s\t%s\n' % (
                    r[0], r[1], r[2],
                    ' '.join('%s(%d)' % t for t in r[3]),
                    ' | '.join(r[4]).replace('\t', ' ')))
        print('明细 →', os.path.expanduser(a.out))


if __name__ == '__main__':
    main()
