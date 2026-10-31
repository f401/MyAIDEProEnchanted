#!/usr/bin/env python3
"""classmatch.py —— 完全混淆库的批量「类级」匹配（通用，不绑定某个依赖）。

原理: 类名被混淆后结构仍在（成员描述符、static/abstract/interface 标志、super/接口）。
把「本库内部类型」换成占位符得到改名不变的指纹；再用已定映射逐步替换占位符（迭代精化）消歧。

用法:
  python3 tools/deob/classmatch.py -p process/deob.json --prefix com/a/b \
     --oracle dx-1.16,dx-1.7 --oracle-pkg com/android/dx,com/android/dex [--report f.tsv] [--apply]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_CLASS = re.compile(r'^\.class\s+(.*)$', re.M)
RE_SUPER = re.compile(r'^\.super\s+(\S+)$', re.M)
RE_IFACE = re.compile(r'^\.implements\s+(\S+)$', re.M)
RE_FIELD = re.compile(r'^\.field\s+([^\n=]*?)([A-Za-z0-9_$]+):(\S+?)\s*(?:=.*)?$', re.M)
RE_METHOD = re.compile(r'^\.method\s+([^\n]*)$', re.M)
RE_CONST = re.compile(r'^\s*const-string(?:/jumbo)?\s+[vp]\d+\s*,\s*"(.*)"\s*$', re.M)

def unesc(x):
    if '\\' not in x: return x
    return (x.replace('\\n','\n').replace('\\t','\t').replace('\\"','"')
             .replace("\\'", "'").replace('\\\\','\\'))
ACC_STATIC = 0x0008
KEEP = 0x0200 | 0x0400 | 0x0010 | 0x4000   # interface|abstract|final|enum

def norm(desc, own, m):
    if not desc: return desc
    def sub(mo):
        n = mo.group(1)
        return 'L' + (m.get(n, '#') if n in own else n) + ';'
    return re.sub(r'L([A-Za-z0-9_$/\-]+);', sub, desc)

def probe_classes(root, prefix):
    out = {}
    for dp, _, fns in os.walk(os.path.join(root, prefix)):
        for f in fns:
            if not f.endswith('.smali'): continue
            try: t = open(os.path.join(dp, f), encoding='utf-8', errors='replace').read()
            except Exception: continue
            mo = RE_CLASS.search(t)
            if not mo: continue
            toks = mo.group(1).split()
            if not toks or not toks[-1].startswith('L'): continue
            acc = 0
            for x in toks[:-1]:
                acc |= {'public':1,'private':2,'protected':4,'static':8,'final':0x10,'interface':0x200,
                        'abstract':0x400,'enum':0x4000,'synthetic':0x1000,'annotation':0x2000}.get(x,0)
            name = toks[-1][1:-1]
            sm = RE_SUPER.search(t)
            fields = [('F', ACC_STATIC if ' static ' in ' '+fm.group(1)+' ' else 0, fm.group(3))
                      for fm in RE_FIELD.finditer(t)]
            methods = []
            for mm in RE_METHOD.finditer(t):
                tk = mm.group(1).split()
                if not tk or '(' not in tk[-1]: continue
                sig = tk[-1]
                methods.append(('M', ACC_STATIC if ' static ' in ' '+' '.join(tk[:-1])+' ' else 0,
                                sig[sig.index('('):]))
            strs = set(unesc(m2.group(1)) for m2 in RE_CONST.finditer(t))
            out[name] = dict(name=name, acc=acc, sup=sm.group(1)[1:-1] if sm else None, strs=strs,
                             ifaces=[x[1:-1] for x in RE_IFACE.findall(t)],
                             fields=fields, methods=methods)
    return out

def oracle_classes(jar, pkgs):
    z = zipfile.ZipFile(jar); out = {}
    for n in z.namelist():
        if not n.endswith('.class'): continue
        b = n[:-6]
        if pkgs and not any(b.startswith(p + '/') for p in pkgs): continue
        try: c = jvmbody.parse(z.read(n))
        except Exception: continue
        if not c or not c['this']: continue
        f, m = [], []
        for x in c['members']:
            st = ACC_STATIC if (x['acc'] & ACC_STATIC) else 0
            (f if x['kind'] == 'f' else m).append(('F' if x['kind']=='f' else 'M', st, x['desc']))
        ost = set()
        for i in c['strs'].values():
            v = c['utf'].get(i)
            if v: ost.add(v)
        out[c['this']] = dict(name=c['this'], acc=0, sup=c['sup'], ifaces=c['ifaces'],
                              fields=f, methods=m, strs=ost)
    return out

def bags(c, own, m):
    f = collections.Counter((s, norm(d, own, m)) for _, s, d in c['fields'])
    mm = collections.Counter((s, norm(d, own, m)) for _, s, d in c['methods'])
    return f, mm


def sim(pa, oa):
    (pf, pm), (of, om) = pa, oa
    inter = sum((pf & of).values()) + sum((pm & om).values())
    tot = max(sum(pf.values()) + sum(pm.values()), sum(of.values()) + sum(om.values()))
    return inter / tot if tot else 0.0


def simstr(a, b):
    if not a or not b: return 0.0
    return len(a & b) / min(len(a), len(b))


def total(pb, ps, ob_, os_):
    return 0.65 * sim(pb, ob_) + 0.35 * simstr(ps, os_)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', default='')
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--report', default='')
    ap.add_argument('--iter', type=int, default=6)
    ap.add_argument('--thr', type=float, default=0.55)
    ap.add_argument('--margin', type=float, default=0.12)
    a = ap.parse_args()
    cfg = json.load(open(a.project)); base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])] or [ex(os.path.dirname(cfg.get('probe_dir','')))]
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    want = [x for x in a.oracle.split(',') if x]
    probe = {}
    for r in roots: probe.update(probe_classes(r, a.prefix))
    own = set(probe)
    print('探针类 %d（前缀 %s）' % (len(probe), a.prefix))
    for o in cfg['oracle_jars']:
        if want and o['label'] not in want: continue
        path = ex(o['path'])
        if not os.path.exists(path): print('  缺失', o['label']); continue
        orc = oracle_classes(path, pkgs); oown = set(orc)
        mapping = {}; prev = -1; best = {}
        for it in range(a.iter):
            assigned = set(mapping.values())
            omap = {n: (n if n in assigned else '#') for n in oown}
            ob = {n: bags(c, oown, omap) for n, c in orc.items()}
            pb = {n: bags(c, own, mapping) for n, c in probe.items()}
            obucket = collections.defaultdict(list)
            for on, oc in orc.items():
                obucket[(len(oc['fields']), len(oc['methods']))].append(on)
            cand = {}
            for pn, pc in probe.items():
                if pn in mapping: continue
                nf, nm = len(pc['fields']), len(pc['methods'])
                if nf + nm == 0: continue
                df0, dm0 = max(2, int(nf * 0.35)), max(2, int(nm * 0.35))
                pool = []
                for df in range(-df0, df0 + 1):
                    for dm in range(-dm0, dm0 + 1):
                        pool.extend(obucket.get((nf + df, nm + dm), ()))
                sc = []
                for on in pool:
                    if on in assigned: continue
                    sc.append((round(sim(pb[pn], ob[on]), 3),
                               simstr(pc.get('strs') or set(), orc[on].get('strs') or set()), on))
                sc.sort(key=lambda x: (-x[0], -x[1]))
                if not sc: continue
                s1 = sc[0][0]
                s2 = sc[1][0] if len(sc) > 1 else 0.0
                cand[pn] = (s1, s1 - s2, sc[:6])
            pairs = []
            for pn, (s1, mg, top) in cand.items():
                for sc_, ss_, on_ in top:
                    if sc_ >= a.thr:
                        pairs.append((sc_, ss_, pn, on_))
            pairs.sort(reverse=True)
            for sc_, ss_, pn, on_ in pairs:
                if pn in mapping or on_ in assigned: continue
                mapping[pn] = on_; assigned.add(on_); best[pn] = (sc_, ss_, on_)
            if len(mapping) == prev: break
            prev = len(mapping)
        # 第二轮：字符串证据补漏（形状没对上、但常量池高度吻合）
        assigned = set(mapping.values())
        omap = {n: (n if n in assigned else '#') for n in oown}
        ob = {n: bags(c, oown, omap) for n, c in orc.items()}
        pairs = []
        for pn, pc in probe.items():
            if pn in mapping: continue
            ps = pc.get('strs') or set()
            if len(ps) < 2: continue
            pbag = bags(pc, own, mapping)
            for on, oc in orc.items():
                if on in assigned: continue
                ss = simstr(ps, oc.get('strs') or set())
                if ss >= 0.95:
                    floor = 0.15
                elif ss >= 0.7:
                    floor = 0.35
                else:
                    continue
                s1 = sim(pbag, ob[on])
                if s1 < floor: continue
                pairs.append((ss, s1, pn, on))
        pairs.sort(reverse=True)
        for ss, s1, pn, on in pairs:
            if pn in mapping or on in assigned: continue
            mapping[pn] = on; assigned.add(on); best[pn] = (s1, ss, on)
        u = len(mapping)
        print('  %-9s oracle=%3d 收敛唯一=%3d 残留=%3d' % (o['label'], len(orc), u, len(probe) - u))
        if a.report:
            with open(a.report + '.' + o['label'], 'w', encoding='utf-8') as w:
                w.write('#probe\toracle\tscore\tmargin\n')
                for pn in sorted(probe):
                    v = best.get(pn)
                    w.write('%s\t%s\t%s\t%s\n' % (pn, v[2] if v else '', '%.3f' % v[0] if v else '', '%.3f' % v[1] if v else ''))


if __name__ == '__main__':
    main()
