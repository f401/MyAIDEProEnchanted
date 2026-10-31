#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""classcmp.py — 单个类的三方对照: oracle(真名) / 探针(混淆名+已分配名) / 改后 jar(残留)。

用法:
  python3 tools/jgit/classcmp.py <oracle.jar> <probe.jar> <renamed.jar> <tsv> <tsrg> <类internal名> [...]
"""
import sys, zipfile, re
sys.path.insert(0, '/data/data/com.termux/files/home/MyAIDEProEnchanted/tools/jgit')
from dupcheck import parse_class

ACC = [(0x0001, 'pub'), (0x0002, 'pri'), (0x0004, 'pro'), (0x0008, 'sta'),
       (0x0010, 'fin'), (0x0020, 'syn'), (0x0040, 'bri'), (0x0400, 'abs'),
       (0x1000, 'synt'), (0x0800, 'str'), (0x0100, 'nat')]


def fl(a):
    return '|'.join(n for b, n in ACC if a & b) or '-'


def load_map(path):
    p2t = {}
    for ln in open(path):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2:
            p2t[f[0] if '/' in f[0] else 'abcd/'+f[0]] = f[1]
    return p2t


def load_tsrg(path):
    out, cur = {}, None
    for ln in open(path):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]; out[cur] = {}
        else:
            p = ln.split()
            if len(p) == 3:
                out[cur][(p[0], p[1])] = p[2]
    return out


TREF = re.compile(r'L(abcd/[^;]+);')


def main():
    ojar, pjar, rjar, tsv, tsrg, cls = sys.argv[1:7]
    p2t = load_map(tsv)
    t2p = {}
    for k, v in p2t.items():
        t2p.setdefault(v, []).append(k)
    mem = load_tsrg(tsrg)
    oz, pz, rz = zipfile.ZipFile(ojar), zipfile.ZipFile(pjar), zipfile.ZipFile(rjar)
    probe = (t2p.get(cls) or [None])[0]
    tr = lambda d: TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)

    print('#### %s   <= probe %s' % (cls, probe))
    try:
        o = parse_class(oz.read(cls + '.class'))
        print('-- oracle  extends %s' % o['super'])
        for nm, ds, ac in o['fields'] + o['methods']:
            print('   O %-9s %-18s %-56s' % (fl(ac), nm, ds))
    except KeyError:
        o = None
        print('-- oracle: 无此类')
    if probe:
        try:
            p = parse_class(pz.read(probe + '.class'))
            blk = mem.get(probe, {})
            print('-- probe   extends %s  (已分配名) ' % p['super'])
            for nm, ds, ac in p['fields']:
                print('   P %-9s %-18s %-50s -> %s' % (fl(ac), nm, ds, blk.get((nm, ds), '.')))
            for nm, ds, ac in p['methods']:
                print('   P %-9s %-18s %-50s -> %s' % (fl(ac), nm, ds, blk.get((nm, ds), '.')))
        except KeyError:
            print('-- probe: 该类不在探针 jar 里')
    try:
        r = parse_class(rz.read(cls + '.class'))
        print('-- renamed extends %s' % r['super'])
        for nm, ds, ac in r['fields']:
            print('   R %-9s %-18s %-56s' % (fl(ac), nm, ds))
        for nm, ds, ac in r['methods']:
            print('   R %-9s %-18s %-56s' % (fl(ac), nm, ds))
    except KeyError:
        print('-- renamed: 无此类')
    print()


if __name__ == '__main__':
    main()
