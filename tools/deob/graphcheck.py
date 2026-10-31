#!/usr/bin/env python3
"""graphcheck.py —— 用「引用邻域」给类映射做独立判据（可与结构指纹互相验证）。

对一对 (探针类 p -> oracle 类 o)：
  out(p) = p 引用的、**已定名**的探针类集合 -> 换成真名
  out(o) = o 引用的、且落在已定名像集里的 oracle 类
  agreement = |out(p) ∩ out(o)| / |out(p) ∪ out(o)|
邻域一致说明两边的依赖结构对得上；类映射越完整，这个判据越强（迭代）。

用法:
  python3 tools/deob/graphcheck.py -p process/deob.json --prefix com/a/b \
      --map jobs/dx/class_map.tsv [--cand report.tsv] [--oracle dx-1.16]
  --cand 给出时，对每个未定名类在**未占用**的 oracle 类里按 (shape, graph) 找最佳候选
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
import classmatch as CM

ACC_STATIC = 0x0008

def read_smali_refs(root, prefix):
    """probe: {internal: (refs set, member count)}"""
    out = {}
    for dp, _, fns in os.walk(os.path.join(root, prefix)):
        for f in fns:
            if not f.endswith('.smali'): continue
            try: t = open(os.path.join(dp, f), encoding='utf-8', errors='replace').read()
            except Exception: continue
            mo = re.search(r'^\.class\s+(.*)$', t, re.M)
            if not mo or not mo.group(1).split()[-1].startswith('L'): continue
            name = mo.group(1).split()[-1][1:-1]
            refs = set()
            for m in re.finditer(r'L([A-Za-z0-9_$/\-]+);', t):
                refs.add(m.group(1))
            refs.discard(name)
            out[name] = refs
    return out

def oracle_refs(jar, pkgs):
    z = zipfile.ZipFile(jar); out = {}
    for n in z.namelist():
        if not n.endswith('.class'): continue
        b = n[:-6]
        if pkgs and not any(b.startswith(p + '/') for p in pkgs): continue
        try: c = jvmbody.parse(z.read(n))
        except Exception: continue
        if not c or not c['this']: continue
        refs = set()
        for x in c['members']:
            for m in re.finditer(r'L([A-Za-z0-9_$/\-]+);', x['desc'] or ''):
                refs.add(m.group(1))
        for ow, _nm, _ds, _tag in c['refmap'].values():
            refs.add(ow)
        if c['sup']: refs.add(c['sup'])
        refs |= set(c['ifaces'])
        refs.discard(c['this'])
        out[c['this']] = refs
    return out

def agree(pr, orefs, cmap):
    Sp = set()
    for r in pr:
        if r in cmap: Sp.add(cmap[r])
    img = set(cmap.values())
    So = set(x for x in orefs if x in img)
    if not Sp or not So: return 0.0, len(Sp), len(So)
    return len(Sp & So) / len(Sp | So), len(Sp), len(So)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--map', default='')
    ap.add_argument('--cand', default='')
    ap.add_argument('--oracle', default='dx-1.16')
    ap.add_argument('--oracle-pkg', default='com/android/dx,com/android/dex')
    ap.add_argument('--min-agree', type=float, default=0.5)
    a = ap.parse_args()
    cfg = json.load(open(a.project)); base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    cmap = {}
    if a.map:
        for l in open(a.map, encoding='utf-8'):
            p = l.rstrip('\n').split('\t')
            if len(p) >= 2 and p[1]: cmap[p[0]] = p[1]
    pr = {}
    for r in roots: pr.update(read_smali_refs(r, a.prefix))
    ojar = [o for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    orf = oracle_refs(ex(ojar['path']), [x for x in a.oracle_pkg.split(',') if x])
    print('探针 %d / oracle %d / 已映射 %d' % (len(pr), len(orf), len(cmap)))
    if a.cand:
        rows = []
        for l in open(a.cand, encoding='utf-8'):
            if l.startswith('probe'): continue
            p = l.rstrip('\n').split('\t')
            if len(p) >= 2 and p[1]: rows.append((p[0], p[1]))
        ok = warn = 0
        for pn, on in rows:
            if pn not in pr or on not in orf: continue
            ag, np_, no_ = agree(pr[pn], orf[on], cmap)
            if ag >= a.min_agree: ok += 1
            else:
                warn += 1
                print('  低一致 %-24s -> %-48s agree=%.2f (%d/%d)' % (pn.split('/')[-1], on, ag, np_, no_))
        print('核对 %d 对：一致 %d，低于阈值 %d' % (len(rows), ok, warn))

if __name__ == '__main__':
    main()
