import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re,zipfile,collections
import probelib as P, jvmbody as JB
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
BASE='/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
Z=zipfile.ZipFile(BASE)
CACHE={}
def cls(desc):
    if desc in CACHE: return CACHE[desc]
    n=desc.strip('L').rstrip(';') if desc.startswith('L') else desc
    try: d=JB.parse(Z.read(n+'.class'))
    except Exception: d=None
    CACHE[desc]=d; return d
def nmap(d):
    """desc -> [names] for the class and its real ancestors"""
    out=collections.defaultdict(list); seen=set()
    stack=[d]
    while stack:
        c=stack.pop()
        if not c or c['this'] in seen: continue
        seen.add(c['this'])
        for m in c['members']:
            if m['kind']=='m' and m['name'] not in ('<init>','<clinit>'):
                out[m['desc']].append(m['name'])
        for s in ([c['sup']] if c['sup'] else [])+list(c['ifaces'] or []):
            if s and not s.startswith('Labcd/'):
                stack.append(cls(s))
    return out
def probe(cn):
    probe='abcd/'+cn
    path=os.path.join(P.SMALI,IDX.get(probe,cn+'.smali'))
    pr=P.parse_smali(path)
    cands=[]
    for s in ([pr['super']] if pr.get('super') else [])+list(pr.get('ifaces') or []):
        if s and not s.startswith('Labcd/'):
            cands.append(s)
    known=collections.defaultdict(list)
    for s in cands:
        for k,v in nmap(cls(s)).items(): known[k]+=v
    print('== abcd/%s -> %s  (real supers: %s)' % (cn, mp.get(probe), ','.join(c[1:-1].split('/')[-1] for c in cands)))
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        if (probe,n,d) in mm: continue
        names=sorted(set(known.get(d,[])))
        print('   %-10s %-46s -> %s' % (n, d[:46], names if names else '—'))
for cn in sys.argv[1:]: probe(cn)
