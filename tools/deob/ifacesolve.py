#!/usr/bin/env python3
"""ifacesolve.py —— 用「实现者集合」给**接口**定名（形状同构的接口也能分开）。

接口的成员往往只有一两个（甚至被 ProGuard 删空），形状指纹几乎没有区分力；
但"谁实现它"是改名不变的强证据：探针接口的实现者经 class_map 换成真名后，
必须恰好是候选接口在 oracle 里的实现者集合。

判据：
  P = { cmap[x] : 探针类 x implements p }         (落在已映射范围的实现者)
  候选 o 满足 P ⊆ OracleImpl(o) 且（可选）方法描述符集相容
  unique = 候选唯一；否则列出来人工看

用法:
  python3 tools/deob/ifacesolve.py -p process/deob.json --prefix abcd \\
      --oracle bc-all-1.47 --oracle-pkg org/bouncycastle \\
      --map jobs/spongycastle/class_map.tsv [--only abcd/GL,abcd/IL] [--all]
"""
import os, sys, json, zipfile, argparse, collections, struct
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import re
import jvmbody

RE_T = re.compile(r'L([A-Za-z0-9_$/\-]+);')

ACC_IFACE, ACC_ABSTRACT = 0x0200, 0x0400
RE_T = re.compile(r'L([A-Za-z0-9_$/\-]+);')


def normdesc(d, cmap):
    """描述符归一：探针侧类型换成真名（没映射的留原名，比不上就是比不上）"""
    return RE_T.sub(lambda m: 'L' + cmap.get(m.group(1), m.group(1)) + ';', d or '')


def load(jar, pkgs=None, prefix=None):
    z = zipfile.ZipFile(jar)
    out = {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if pkgs and not any(cn.startswith(p + '/') for p in pkgs):
            continue
        if prefix and not cn.startswith(prefix + '/'):
            continue
        try:
            raw = z.read(n)
            c = jvmbody.parse(raw)
        except Exception:
            continue
        if not c or not c['this']:
            continue
        acc = struct.unpack_from('>H', raw, c['acc_off'])[0]
        out[c['this']] = dict(acc=acc, sup=c['sup'], ifaces=list(c['ifaces'] or []),
                              mdesc=collections.Counter((m['acc'], m['desc'])
                                                        for m in c['members'] if m['kind'] == 'm'))
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--map', required=True)
    ap.add_argument('--only', default='')
    ap.add_argument('--all', action='store_true', help='连已映射的也复核')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    cmap = {}
    for ln in open(a.map, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[1]:
            cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    P = load(ex(cfg['base_jars'][0]), prefix=a.prefix)
    O = load([ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0],
             pkgs=[x for x in a.oracle_pkg.split(',') if x])
    pimg = set(cmap.values())
    pimpl = collections.defaultdict(set)
    oimpl = collections.defaultdict(set)
    for cn, c in P.items():
        for i in c['ifaces']:
            pimpl[i].add(cn)
    for cn, c in O.items():
        for i in c['ifaces']:
            oimpl[i].add(cn)
    only = set()
    if a.only:
        for tok in a.only.split(','):
            tok = tok.strip()
            if not tok:
                continue
            if os.path.exists(os.path.expanduser(tok)):
                only |= set(x.strip() for x in open(os.path.expanduser(tok), encoding='utf-8')
                            if x.strip() and not x.startswith('#'))
            else:
                only.add(tok if '/' in tok else a.prefix + '/' + tok)
    tgt = [c for c in sorted(P) if P[c]['acc'] & ACC_IFACE
           and (c in only if only else (a.all or c not in cmap))]
    print('待解接口 %d 个（oracle 接口 %d 个）'
          % (len(tgt), sum(1 for c in O if O[c]['acc'] & ACC_IFACE)))
    for pn in tgt:
        pc = P[pn]
        Pl = set(cmap.get(x, '#' + x) for x in pimpl[pn])
        Pl_real = set(x for x in Pl if not x.startswith('#'))
        cands = []
        for on, oc in O.items():
            if not (oc['acc'] & ACC_IFACE):
                continue
            ol = oimpl[on] & pimg
            if Pl_real and not Pl_real <= ol:
                continue
            if not Pl_real and not ol:
                continue
            # 接口方法描述符必须相容（探针 ⊆ 候选，容忍 ProGuard 删方法）
            pm = collections.Counter((acc, normdesc(d, cmap)) for (acc, d), v in pc['mdesc'].items()
                                     for _ in range(v))
            if pm and not all(oc['mdesc'][k] >= v for k, v in pm.items()):
                continue
            cands.append((len(ol - Pl_real), len(ol), on))
        cands.sort()
        mark = ''
        if cmap.get(pn):
            mark = ' [现: %s]' % cmap[pn] if (not cands or cands[0][2] != cmap[pn]) else ''
        print('== %-10s impl=%s%s' % (pn, sorted(Pl), mark))
        for extra, tot, on in cands[:6]:
            flag = ' <<<' if cmap.get(pn) == on else ''
            print('     %-58s impl=%d extra=%d  ovlp=%s%s'
                  % (on, tot, extra, sorted(oimpl[on] & pimg & Pl_real), flag))
        if not cands:
            print('     （无候选）')


if __name__ == '__main__':
    main()
