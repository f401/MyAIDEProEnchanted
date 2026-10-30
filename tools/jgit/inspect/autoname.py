import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re,collections
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
OBS=re.compile(r'^[A-Za-z]{1,2}[0-9]?$|^[A-Za-z]{1,3}[0-9]$')
INV=re.compile(r'invoke-[a-z/-]+ \{[^}]*\}, (\[?[L\[]?[A-Za-z0-9_/$]*;?|[A-Za-z0-9_/$]+)->([A-Za-z0-9_$<>]+)(\([^)]*\).*)')
FR=re.compile(r'[is]get(?:-object|-wide|-boolean|-byte|-char|-short)?[^,]*, [^,]+, L([A-Za-z0-9_/$]+);->([A-Za-z0-9_$]+):')
FW=re.compile(r'[is]put(?:-object|-wide|-boolean|-byte|-char|-short)?[^,]+, [^,]+, L([A-Za-z0-9_/$]+);->([A-Za-z0-9_$]+):')
def fname(probe,fn):
    return fm.get((probe,fn), fn)
for cn in [x.replace('abcd/','') for x in sys.argv[1:]]:
    probe='abcd/'+cn
    path=os.path.join(P.SMALI,IDX.get(probe,cn+'.smali'))
    if not os.path.exists(path): print('MISS',cn); continue
    t=open(path,encoding='utf-8',errors='replace').read()
    print('== abcd/%s -> %s' % (cn, mp.get(probe)))
    for m in re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        sig=m.group(1).split()[-1]
        if '(' not in sig: continue
        nm=sig[:sig.index('(')]; ds=sig[sig.index('('):]
        if nm in ('<init>','<clinit>'): continue
        if (probe,nm,ds) in mm: continue
        if not OBS.match(nm): continue
        body=m.group(2)
        inv=[b for a,b,c in INV.findall(body) if c==ds]
        fr=FR.findall(body); fw=FW.findall(body)
        own=[x for x in fr if 'abcd/'+cn in x[0]]
        ownw=[x for x in fw if 'abcd/'+cn in x[0]]
        prop=''
        if len(set(inv))==1: prop='DELEG:'+inv[0]
        elif own and not ownw and len(own)==1: prop='GET:'+fname(probe,own[0][1])
        elif ownw and len(ownw)==1: prop='SET:'+fname(probe,ownw[0][1])
        print('   %-8s %-44s inv=%s get=%s put=%s  => %s' % (nm, ds[:44], sorted(set(inv))[:3], [fname(probe,x[1]) for x in own][:3], [fname(probe,x[1]) for x in ownw][:3], prop))
