#!/usr/bin/env python3
"""xshape.py —— 跨版本「类形状」比对：拿一个**未混淆的同源构建**当 oracle。

用途：本工程的 `abcd/*` 是 R8 混淆过的，但设备上另一个构建（AIDE+ 2.3.5）把
`com.aide.codemodel.**` 和 `com.aide.engine.**` 的大半名字都留着。两边类/成员名不同，
但**方法数与「参数形状集合」**（把已知类型映射成 oracle 侧真名后）高度一致，
所以可以据此定名，判据写成 `shape:`。

用法:
  # 单个类：看它在 oracle 里最像谁
  python3 tools/deob/xshape.py --oracle ~/out/oracle/aide-plus/aide-plus-2.3.5-engine.jar \
      --oracle-pkg com/aide/codemodel --ours abcd/Da abcd/La

  # 只看某个候选
  python3 tools/deob/xshape.py --oracle ... --ours abcd/gb --cand com.aide.codemodel.api.callback.OpenFileCallback

  # 打印某侧签名（调试映射表用）
  python3 tools/deob/xshape.py --oracle ... --dump com.aide.codemodel.api.Model

映射表：`tools/deob/xshape_map.tsv`（英文列：ours<TAB>oracle），一行一对，可增量补。
"""
import argparse, os, re, subprocess, sys, collections

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(os.path.dirname(HERE))


def load_map(path=None):
    m = {}
    path = path or os.path.join(HERE, 'xshape_map.tsv')
    if os.path.exists(path):
        for line in open(path, encoding='utf-8'):
            if line.startswith('#') or '\t' not in line:
                continue
            a, b = line.rstrip('\n').split('\t')[:2]
            if a and b:
                m[a] = b
    return m


def sigs(jar, cls, mp):
    r = subprocess.run(['javap', '-p', '-cp', jar, cls], capture_output=True, text=True)
    if r.returncode != 0:
        return None
    out = []
    for l in r.stdout.split('\n'):
        l = l.strip()
        if not (l.startswith('public abstract') or l.startswith('public ')):
            continue
        m = re.search(r'([\w$]+)\((.*)\)([^;]*);$', l)
        if not m:
            continue
        name, args, ret = m.groups()

        def norm(t):
            t = t.strip()
            arr = ''
            while t.endswith('[]'):
                arr += '[]'
                t = t[:-2]
            base = t.split('.')[-1]
            return mp.get(base, base) + arr
        out.append((len([a for a in args.split(',') if a.strip()]),
                    tuple(sorted(norm(a) for a in args.split(',') if a.strip())),
                    norm(ret), name))
    return out


def key(s):
    return (s[0], s[1])


def overlap(a, b):
    ca, cb = collections.Counter(key(x) for x in a), collections.Counter(key(x) for x in b)
    return sum((ca & cb).values())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', default=os.path.join(REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--ours', nargs='*', default=[])
    ap.add_argument('--cand', nargs='*', default=[])
    ap.add_argument('--oracle-pkg', default=None, help='不给 --cand 时，扫这个包下的类')
    ap.add_argument('--dump', default=None)
    ap.add_argument('--min', type=float, default=0.55)
    a = ap.parse_args()
    mp = load_map()

    if a.dump:
        s = sigs(a.oracle, a.dump, mp)
        print(a.dump, 'n=', len(s or []))
        for x in (s or []):
            print('   ', x[3], x[1], '->', x[2])
        return

    cands = list(a.cand)
    if not cands and a.oracle_pkg:
        import zipfile
        z = zipfile.ZipFile(a.oracle)
        pre = a.oracle_pkg.replace('.', '/') + '/'
        cands = [n[:-6].replace('/', '.') for n in z.namelist()
                 if n.endswith('.class') and n.startswith(pre) and '$' not in n]
    if not cands:
        sys.exit('要么给 --cand，要么给 --oracle-pkg')

    prof = {}
    for c in cands:
        s = sigs(a.oracle, c, mp)
        if s:
            prof[c] = s
    print(f'oracle 候选 {len(prof)} 个（包 {a.oracle_pkg or "-"}）')
    for o in a.ours:
        s = sigs(a.jar, o, mp)
        if s is None:
            print(f'{o}: javap 失败'); continue
        best = []
        for c, t in prof.items():
            if len(t) != len(s):
                continue
            ov = overlap(s, t)
            best.append((ov / max(1, len(s)), c, ov))
        best.sort(reverse=True)
        tag = ' '.join(f'{c.split(".")[-1]}({r:.2f}/{n})' for r, c, n in best[:3]) or '无同方法数候选'
        print(f'{o:14s} n={len(s):3d} -> {tag}')


if __name__ == '__main__':
    main()
