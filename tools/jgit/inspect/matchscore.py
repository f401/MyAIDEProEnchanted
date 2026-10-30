import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re,zipfile,collections
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map()
TY=re.compile(r'L([A-Za-z0-9_$/$.]+);')
def norm(d,loose=True):
    def r(m):
        t=m.group(1)
        t2=mp.get('abcd/'+t.lstrip('$')) if t.startswith('abcd/') else None
        if t2: return 'L'+t2+';'
        if t.startswith('abcd/'):
            return 'LO;' if loose else 'L'+t+';'
        return 'L'+t+';'
    return TY.sub(r,d)
def methmult(meths,loose=True):
    c=collections.Counter()
    for n,d,s in meths:
        c[(norm(d,loose),bool(s))]+=1
    return c

# oracle index: for each jar/tag, class -> method multiset
ZIPS=[]
for tag,p in P.OVERS:
    ZIPS.append((tag,zipfile.ZipFile(p)))
P.OVERS.append(('5.13.3','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.13.3.202401111512-r.jar'))
P.OVERS.append(('5.6.1','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.6.1.202002131546-r.jar'))
for tag,p in [('5.13.3','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.13.3.202401111512-r.jar'),
              ('5.6.1','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.6.1.202002131546-r.jar')]:
    ZIPS.append((tag,zipfile.ZipFile(p)))
OZ=P.Oracle.__new__(P.Oracle); OZ.cache={}; OZ.zips=dict(ZIPS)

def probe_methods(cn):
    path=os.path.join(P.SMALI,IDX.get('abcd/'+cn,cn+'.smali'))
    pr=P.parse_smali(path)
    return [ (n,d,s) for n,d,s,y in pr['methods'] ]

def score(cn, topk=8, pat=None, ver=None):
    pm=methmult(probe_methods(cn))
    tot=sum(pm.values())
    out=[]
    for tag in ([ver] if ver else [t for t,_ in ZIPS]):
        z=OZ.zips[tag]
        for n in z.namelist():
            if not n.endswith('.class'): continue
            cls=n[:-6]
            if pat and not re.search(pat,cls): continue
            m=OZ.members(tag,cls)
            if not m: continue
            om=methmult(m['methods'])
            inter=sum(min(pm[k],om.get(k,0)) for k in pm)
            if inter:
                out.append((inter/tot, inter, cls, tag))
    out.sort(reverse=True)
    print('== abcd/%s  methods=%d  -> %s' % (cn,tot,mp.get('abcd/'+cn)))
    for r,inter,cls,tag in out[:topk]:
        print('   %.2f  %2d/%d  %-22s %s' % (r,inter,tot,cls,tag))
if __name__=='__main__':
    pat=os.environ.get('PAT')
    ver=os.environ.get('VER')
    for cn in sys.argv[1:]:
        score(cn,pat=pat,ver=ver)
