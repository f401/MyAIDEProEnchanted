import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
import sys,os,re,zipfile,collections
import probelib as P, jvmbody as JB
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map()
TY=re.compile(r'L([A-Za-z0-9_$/$.]+);')
def fold(d, loose=True):
    def r(m):
        t=m.group(1)
        if t.startswith('abcd/'):
            tgt=mp.get(t)
            if tgt and not tgt.split('/')[-1].startswith(t.split('/')[-1][:2]) : return 'L'+tgt+';'
            return 'LO' if loose else 'L'+t+';'
        return 'L'+t+';'
    return TY.sub(r,d)
ZIPS=[]
for tag,p in P.OVERS: ZIPS.append((tag,zipfile.ZipFile(p)))
for tag,p in [('5.6.1','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.6.1.202002131546-r.jar'),
              ('5.13.3','/data/data/com.termux/files/home/out/oracle/jgit/org.eclipse.jgit-5.13.3.202401111512-r.jar')]:
    ZIPS.append((tag,zipfile.ZipFile(p)))
IDXOR={}
for tag,z in ZIPS:
    for n in z.namelist():
        if not n.endswith('.class'): continue
        cls=n[:-6]
        try: d=JB.parse(z.read(n))
        except Exception: continue
        ms=collections.Counter(); fs=collections.Counter()
        for m in d['members']:
            if m['kind']=='m':
                if m['name'] in ('<init>','<clinit>'): continue
                ms[(fold(m['desc'] or ''), bool(m['acc'] & 0x8))]+=1
            else:
                fs[(fold(m['desc'] or ''), bool(m['acc'] & 0x8))]+=1
        IDXOR.setdefault((tuple(sorted(ms.items())),tuple(sorted(fs.items()))),[]).append((tag,cls))
def probe(cn):
    path=os.path.join(P.SMALI,IDX.get('abcd/'+cn,cn+'.smali'))
    pr=P.parse_smali(path)
    ms=collections.Counter(); fs=collections.Counter()
    for n,d,s,sy in pr['methods']:
        if n in ('<init>','<clinit>'): continue
        ms[(fold(d),bool(s))]+=1
    for n,d,s,sy in pr['fields']:
        fs[(fold(d),bool(s))]+=1
    return pr, tuple(sorted(ms.items())), tuple(sorted(fs.items()))
for cn in sys.argv[1:]:
    pr,ms,fs=probe(cn)
    hits=IDXOR.get((ms,fs),[])
    names=[]
    for tag,cls in hits:
        if cls.startswith('org/eclipse/jgit/'): names.append(cls+'@'+tag)
    print('== abcd/%s  方法%d 字段%d  super=%s  -> %s' % (cn,sum(x[1] for x in ms),sum(x[1] for x in fs),pr.get('super'), mp.get('abcd/'+cn)))
    seen=set()
    for n in names:
        c=n.split('@')[0]
        if c in seen: continue
        seen.add(c)
        print('    ★', n, '  (候选版本:', ','.join(x.split('@')[1] for x in names if x.split('@')[0]==c), ')')
    if not names: print('    — 无形状匹配')
