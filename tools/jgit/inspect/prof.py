import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,os,re,collections
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map(); mm,fm,_=P.load_tsrg()
INV=re.compile(r'invoke-[a-z/-]+ \{[^}]*\}, (\[?[L\[]?[A-Za-z0-9_/$]*;?|[A-Za-z0-9_/$]+)->([A-Za-z0-9_$<>]+)(\([^)]*\).*)')
FGET=re.compile(r'[is]get(?:-object|-wide|-boolean|-byte|-char|-short)?[^,]*, [^,]+, L([A-Za-z0-9_/$]+);->([A-Za-z0-9_$]+):')
def simple(o):
    o=o.strip()
    return o.split('/')[-1].rstrip(';')
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    path=os.path.join(P.SMALI,IDX.get(probe,cn+'.smali'))
    if not os.path.exists(path): print('MISS',cn); continue
    t=open(path,encoding='utf-8',errors='replace').read()
    pr=P.parse_smali(path)
    print('== abcd/%s -> %s   super=%s ifaces=%s' % (cn, mp.get(probe), pr.get('super'), pr.get('ifaces')))
    for m in re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        sig=m.group(1).split()[-1]
        if '(' not in sig: continue
        nm=sig[:sig.index('(')]; ds=sig[sig.index('('):]
        if nm in ('<init>','<clinit>'): continue
        if (probe,nm,ds) in mm: continue
        body=m.group(2)
        inv=[simple(a)+'.'+b for a,b,c in INV.findall(body)]
        fl=[a.split('/')[-1]+'#'+b for a,b in FGET.findall(body)]
        c=collections.Counter(inv)
        print('   %-7s %-44s | inv=%s | fld=%s' % (nm, ds[:44], ','.join('%s%s'%(k,('x%d'%v if v>1 else '')) for k,v in c.most_common(4)), ','.join(dict.fromkeys(fl))))
