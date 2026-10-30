#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""findclasses.py：找出「几乎确定是 jgit 但还没映射」的 abcd 类，并给候选"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L(abcd/[A-Za-z0-9_$]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
MANY=set(mp.values())
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
MSIG={cn:{(m['name'],m['desc']) for m in c['members'] if m['kind']=='m'} for cn,c in ORC.items()}
FSIG={cn:{m['desc'] for m in c['members'] if m['kind']=='f'} for cn,c in ORC.items()}
sc=[]
for cn,t in IDX.items():
    if cn in mp: continue
    jt=len(re.findall(r'Lorg/eclipse/jgit/JGitText;->',t))
    refs=set(re.findall(r'L(abcd/[A-Za-z0-9_$]+);',t))-{cn}
    jr=sum(1 for r in refs if r in mp)
    s=re.search(r'^\.super\s+(\S+?);',t,re.M)
    supj=1 if (s and s.group(1) in mp) else 0
    score=jt*3+jr+supj*2
    if score>=4: sc.append((score,jt,jr,supj,cn,t))
sc.sort(reverse=True)
print('候选 jgit 类',len(sc))
def own(t):
    o=set()
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0] and 'synthetic' not in tl: o.add(('f',norm(b[0].split(':',1)[1]),'static' in tl))
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0] and 'synthetic' not in tl and 'bridge' not in tl:
            nm=b[0][:b[0].index('(')]
            if nm.startswith('<'): continue
            o.add(('m',norm(b[0][b[0].index('('):]),'static' in tl))
    return o
for score,jt,jr,supj,cn,t in sc[:28]:
    s=re.search(r'^\.super\s+(\S+?);',t,re.M)
    esup=mp.get(s.group(1).replace('abcd/','abcd/'),None) if s else None
    if s and not esup:
        x=s.group(1)[1:-1] if s.group(1).startswith('L') else s.group(1)
        esup=mp.get(x,x)
    o=own(t)
    best=[]
    for on in ORC:
        if on in MANY: continue
        if esup and not esup.startswith('abcd/') and ORC[on]['sup']!=esup: continue
        cov=len(o & {(m['kind'],m['desc'],bool(m['acc']&0x8)) for m in ORC[on]['members'] if not m['acc']&0x1000})/max(1,len(o))
        if cov>0: best.append((cov,on))
    best.sort(reverse=True)
    print(f'== abcd/{cn}  分数{score} (JGitText{jt}/jgit引用{jr}/super{supj}) 成员{len(o)}')
    for cov,on in best[:2]: print(f'     {cov:.2f}  {on}')
