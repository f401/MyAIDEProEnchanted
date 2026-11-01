#!/usr/bin/env python3
"""decisive.py —— 对「还没定名」的类逐条给出多条独立证据，供人工/批量裁决（通用）。

对每个未定名探针类，列出候选 oracle 类并给出互相独立的证据分量：
  sim    成员签名（类型描述符已按 class_map 归一）多重集 Jaccard
  str    常量串：eq=两端集合完全相同  sub=互为子集  -（数字为 |A∩B|/min）
  int    整数字面量多重集 Jaccard（const/4、const/16、const、const/high16）
  ref    类型引用集双向一致（见 refmatch.py）
  kind   interface/abstract/enum/super 是否一致
只做报告，不改任何文件。
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody, struct
from classmatch import probe_classes, oracle_classes, bags, sim, simstr, norm

RE_INT4 = re.compile(r'^\s*const/4\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)
RE_INT16 = re.compile(r'^\s*const/16\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)
RE_INT = re.compile(r'^\s*const(?:/high16)?\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)

RE_T = re.compile(r'L([A-Za-z0-9_$/\-]+);')


def pint(t):
    c = collections.Counter()
    for m in RE_INT4.finditer(t):
        c[int(m.group(1), 0)] += 1
    for m in RE_INT16.finditer(t):
        c[int(m.group(1), 0)] += 1
    for m in RE_INT.finditer(t):
        c[int(m.group(1), 0)] += 1
    for m in re.finditer(r'^\s*const-wide(?:/16|/32|/high16)?\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)', t, re.M):
        c['l0'] += 1
    return c


def oint(code):
    """Java 字节码里的整数字面量：iconst_*、bipush、sipush、lconst_*"""
    c = collections.Counter()
    i = 0
    n = len(code or b'')
    LEN = jvmbody.LEN
    while 0 <= i < n:
        op = code[i]
        try:
            if 0x02 <= op <= 0x08:          # aconst_null(0), iconst_m1..5
                c[op - 0x03] += 1
            elif op == 0x10 and i + 2 <= n:
                v = code[i+1]
                c[v - 256 if v > 127 else v] += 1
            elif op == 0x11 and i + 3 <= n:
                c[struct.unpack_from('>h', code, i+1)[0]] += 1
            elif op in (0x09, 0x0a):
                c['l%d' % (op - 0x09)] += 1
        except Exception:
            break
        # 跳转表/宽指令要算长度，越界就停（坏尾字节不要抛异常）
        if op == 0xaa:
            pad = (4 - ((i+1) % 4)) % 4; b0 = i+1+pad
            if b0 + 12 > n: break
            d, lo, hi = struct.unpack_from('>iii', code, b0); i = b0+12+4*(hi-lo+1); continue
        if op == 0xab:
            pad = (4 - ((i+1) % 4)) % 4; b0 = i+1+pad
            if b0 + 8 > n: break
            d, np_ = struct.unpack_from('>ii', code, b0); i = b0+8+8*np_; continue
        if op == 0xc4:
            if i + 2 > n: break
            i += 6 if code[i+1] == 0x84 else 4; continue
        i += LEN.get(op, 1)
    return c


def jac(a, b):
    if not a and not b: return 0.0
    i = sum((a & b).values()); u = sum((a | b).values())
    return i / u if u else 0.0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--map', required=True)
    ap.add_argument('--top', type=int, default=3)
    ap.add_argument('--only', default='')
    ap.add_argument('--tsv', default='')
    a = ap.parse_args()
    cfg = json.load(open(a.project)); base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    probe = {}
    for r in roots:
        probe.update(probe_classes(r, a.prefix))
    sql = {}
    for r in roots:
        for dp, _, fns in os.walk(os.path.join(r, a.prefix)):
            for f in fns:
                if not f.endswith('.smali'): continue
                t = open(os.path.join(dp, f), encoding='utf-8', errors='replace').read()
                m = re.search(r'^\.class\s+.*?(L[A-Za-z0-9_$/\-]+;)\s*$', t, re.M)
                if m: sql[m.group(1)[1:-1]] = t
    cmap = {}
    for ln in open(a.map, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) > 1 and t[1]: cmap[t[0]] = t[1]
    own = set(probe); rng = set(cmap.values())
    jar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    orc = oracle_classes(jar, pkgs)
    for n, c in orc.items():
        ints = collections.Counter()
        for m in c.get('_mem', []):
            pass
        c['ints'] = ints
    # 重新读一遍拿 code
    z = zipfile.ZipFile(jar)
    for n in z.namelist():
        if not n.endswith('.class'): continue
        cn = n[:-6]
        if cn not in orc: continue
        p = jvmbody.parse(z.read(n))
        cc = collections.Counter()
        for m in p['members']:
            if m['kind'] == 'm' and m['code']: cc += oint(m['code'])
        orc[cn]['ints'] = cc
    pimpl = collections.defaultdict(set); psub = collections.defaultdict(set)
    for pn2, pc2 in probe.items():
        for i in pc2['ifaces']:
            pimpl[i].add(pn2)
        if pc2['sup']:
            psub[pc2['sup']].add(pn2)
    oimpl = collections.defaultdict(set); osub = collections.defaultdict(set)
    for on2, oc2 in orc.items():
        for i in oc2['ifaces']:
            oimpl[i].add(on2)
        if oc2['sup']:
            osub[oc2['sup']].add(on2)

    def implscore(pn2, on2):
        A = set(cmap[x] for x in pimpl[pn2] if x in cmap) | set(cmap[x] for x in psub[pn2] if x in cmap)
        if not A:
            return None
        B = oimpl[on2] | osub[on2]
        return len(A & B) / len(A)

    omap = {n: (n if n in rng else '#') for n in orc}
    ob = {n: bags(c, set(orc), omap) for n, c in orc.items()}
    pb = {n: bags(c, own, cmap) for n, c in probe.items()}
    pm = {n: pint(sql.get(n, '')) for n in probe}
    only = [x for x in a.only.split(',') if x]
    for pn in sorted(probe):
        if pn in cmap: continue
        if only and pn not in only: continue
        pc = probe[pn]
        cand = []
        for on, oc in orc.items():
            if on in rng: continue
            s = sim(pb[pn], ob[on])
            ss = simstr(pc['strs'], oc['strs'])
            ij = jac(pm[pn], oc['ints'])
            kindok = ((pc['acc'] & 0x200) == (0x200 if 'interface' in ''.join([]) else 0))
            cand.append((s, ss, ij, on, oc))
        cand.sort(key=lambda x: (-(0.4*x[0] + 0.35*x[1] + 0.25*x[2])))
        print('== %s  f=%d m=%d iface=%d abstract=%d str=%d int=%d' %
              (pn, len(pc['fields']), len(pc['methods']), bool(pc['acc'] & 0x200),
               bool(pc['acc'] & 0x400), len(pc['strs']), sum(pm[pn].values())))
        if pc['strs']:
            print('   strs: %s' % sorted(pc['strs'])[:6])
        if a.tsv:
            t1 = cand[0] if cand else None
            t2 = cand[1] if len(cand) > 1 else None
            with open(a.tsv, 'a', encoding='utf-8') as w:
                w.write('%s\t%s\t%.3f\t%.3f\t%.3f\t%s\t%.3f\n' % (
                    pn, t1[3] if t1 else '', t1[0] if t1 else 0, t1[1] if t1 else 0,
                    t1[2] if t1 else 0,
                    ('%.2f' % implscore(pn, t1[3])) if t1 and implscore(pn, t1[3]) is not None else '-',
                    t2[0] if t2 else 0.0))
        for s, ss, ij, on, oc in cand[:a.top]:
            iv = implscore(pn, on)
            print('   %-58s sim=%.3f str=%.3f int=%.3f impl=%s  nstr=%d nint=%d'
                  % (on.replace('com/android/dx/', ''), s, ss, ij,
                     ('%.2f' % iv) if iv is not None else '  - ', len(oc['strs']), sum(oc['ints'].values())))


if __name__ == '__main__':
    main()
