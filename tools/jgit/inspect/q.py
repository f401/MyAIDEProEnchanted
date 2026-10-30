import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,os
import probelib as P
IDX={}
for _l in open(_P.SMALI_INDEX):
    _a,_b=_l.rstrip('\n').split('\t'); IDX[_a]=_b
def spath(cn):
    return P.SMALI+'/'+IDX.get('abcd/'+cn, cn+'.smali')
mp=P.load_map(); mm,fm,_=P.load_tsrg()
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    pr=P.parse_smali(spath(cn))
    cur={}
    for (p,n,d),new in mm.items():
        if p==probe: cur[(n,d)]=new
    cf={}
    for (p,n),new in fm.items():
        if p==probe: cf[n]=new
    print('====',cn,'->',mp.get(probe))
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        print('  m %-7s %-54s %-6s -> %s' % (n,d[:54],'static' if s else '',cur.get((n,d),'?')))
    for n,d,s,sy in pr['fields']:
        print('  f %-7s %-42s %-6s -> %s' % (n,d[:42],'static' if s else '',cf.get(n,'?')))
