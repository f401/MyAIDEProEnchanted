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
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    path=P.SMALI+'/'+IDX.get(probe,cn+'.smali')
    t=open(path,encoding='utf-8',errors='replace').read()
    print('='*50,cn)
    for m in re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        ins=[l.strip() for l in m.group(2).split('\n') if l.strip() and not l.strip().startswith(('.locals','.annotation','.end',':try',':catch','.catch','value =','"','.param'))]
        print('%-38s | %s' % (m.group(1).split()[-1], ' ; '.join(ins[:9])))
