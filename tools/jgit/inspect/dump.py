import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
cn=sys.argv[1]; pats=sys.argv[2:]
probe='abcd/'+cn
path=P.SMALI+'/'+IDX.get(probe,cn+'.smali')
t=open(path,encoding='utf-8',errors='replace').read()
for m in re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
    sig=m.group(1).split()[-1]
    if pats and not any(re.search(p,sig) for p in pats): continue
    print('---- .method',m.group(1))
    for l in m.group(2).split('\n'):
        s=l.strip()
        if not s: continue
        print('   ',s)
