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
mp=P.load_map(); mm,fm,_=P.load_tsrg()
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    path=P.SMALI+'/'+IDX.get(probe,cn+'.smali')
    t=open(path,encoding='utf-8',errors='replace').read()
    cur={}
    for (p,n,d),new in mm.items():
        if p==probe: cur[(n,d)]=new
    cf={}
    for (p,n),new in fm.items():
        if p==probe: cf[n]=new
    print('='*60); print(cn,'->',mp.get(probe))
    methods=list(re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method',t,re.M|re.S))
    for n,d,s,sy in P.parse_smali(path)['fields']:
        if cf.get(n): continue
        W=[];R=[]
        pat=r'(i|s)(put|get)[^\n]*Labcd/%s;->%s:'%(re.escape(cn),re.escape(n))
        for m in methods:
            head=m.group(1); sig=head.split()[-1]
            nm=sig.split('(')[0]; ds=sig[sig.index('('):]
            for mm2 in re.finditer(r'^\s*(i|s)(put|get)[^\n]*Labcd/%s;->%s:'%(re.escape(cn),re.escape(n)),m.group(2),re.M):
                lab=cur.get((nm,ds),'?'+nm+ds)
                (W if mm2.group(2)=='put' else R).append(lab)
        print('  f %-4s %-22s W=[%s] R=[%s]' % (n,d[:22],', '.join(sorted(set(W))),', '.join(sorted(set(R)))))
