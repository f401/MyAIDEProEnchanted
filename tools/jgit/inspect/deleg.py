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
SIG=re.compile(r'invoke-[a-z/-]+ \{[^}]*\}, (\[?[L\[][^;]*;|[A-Za-z0-9_/$]+)->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ ]+)')
for cn in sys.argv[1:]:
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
        mapped=mm.get((probe,nm,ds))
        cands=collections.Counter()
        for mm2 in SIG.finditer(m.group(2)):
            owner,m2,d2=mm2.group(1),mm2.group(2),mm2.group(3)
            if d2==ds and m2 not in ('<init>',):
                cands[m2]+=1
        mark='-> %s' % mapped if mapped else 'UNMAPPED'
        print('   %-8s %-46s %-14s cand=%s' % (nm, ds[:46], mark, dict(cands)))
