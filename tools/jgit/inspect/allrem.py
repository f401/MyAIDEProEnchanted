import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,os,re,json,collections
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
OBS=re.compile(r'^[A-Za-z]{1,2}[0-9]?$|^[A-Za-z]{1,3}[0-9]$')
res=collections.defaultdict(list)
for probe,oracle in mp.items():
    path=os.path.join(P.SMALI,IDX.get(probe,probe[5:]+'.smali'))
    if not os.path.exists(path): continue
    pr=P.parse_smali(path)
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        if (probe,n,d) in mm: continue
        res[probe].append((n,d,s,sy,bool(OBS.match(n)) and n not in ('read','write','size','get','put','add','run','next','hasNext','close','flush')))
tot=sum(len(v) for v in res.values())
obs=sum(1 for v in res.values() for x in v if x[4])
print('unmapped classes %d methods %d (obfuscated-looking %d)' % (len(res),tot,obs))
json.dump({k:v for k,v in res.items()}, open('allrem.json','w'))
for c,v in sorted(res.items(), key=lambda t:-len(t[1])):
    print(len(v), c, mp[c], 'obs=%d'%sum(1 for x in v if x[4]))
