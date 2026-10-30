import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re
sys.path.insert(0,'/storage/emulated/0/MyAIDEProEnchanted/tools/jgit')
import probelib as P
IDX={}
for l in open(os.path.expanduser('~/out/work/smali_index.tsv')):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
OBS=re.compile(r'^[A-Za-z]{1,2}[0-9]?$|^[A-Za-z]{1,3}[0-9]$')
rows=[]
for probe,oracle in mp.items():
    path=os.path.join(P.SMALI,IDX.get(probe,probe[5:]+'.smali'))
    if not os.path.exists(path): continue
    pr=P.parse_smali(path)
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        if (probe,n,d) in mm: continue
        if OBS.match(n): continue
        if probe=='abcd/lI': continue
        rows.append('%s\tm\t%s\t%s\t-\t%s' % (probe,n,d,n))
open('fix_ident.tsv','w').write('\n'.join(rows)+'\n')
print('identity rows', len(rows))
