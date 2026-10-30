import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,os,re,collections
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
OBS=re.compile(r'^[A-Za-z]{1,2}[0-9]?$|^[A-Za-z]{1,3}[0-9]$')
TY=re.compile(r'L([A-Za-z0-9_$/$.]+);')
def norm(d):
    return TY.sub(lambda m: 'L'+mp.get('abcd/'+m.group(1), m.group(1))+';' if m.group(1).startswith('abcd/') else m.group(0), d)
o=P.Oracle()
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    oracle=mp.get(probe)
    path=os.path.join(P.SMALI,IDX.get(probe,cn+'.smali'))
    pr=P.parse_smali(path)
    used=set(v for (p,n,d),v in mm.items() if p==probe)
    print('== abcd/%s -> %s' % (cn, oracle))
    orc={}
    if oracle:
        for tag in ['3.7.1','4.11.9']:
            m=o.members(tag,oracle)
            if m:
                for n,d,s in m['methods']:
                    orc.setdefault(norm(d),set()).add(n)
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        if (probe,n,d) in mm: continue
        cand=sorted(orc.get(d,set())-used)
        print('   %-9s %-46s cand=%s' % (n, d[:46], cand if cand else '—'))
