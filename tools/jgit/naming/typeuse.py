#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""typeuse.py：用「实际被调用的成员签名」识别未映射类型（jigsaw）"""
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
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
CALL=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ ]*)?')
use=collections.defaultdict(set)
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    for own,name,desc in CALL.findall(t):
        if 'abcd/'+own in mp: continue
        if desc: use[own].add((name,norm(desc)))
        else: use[own].add((name,None))
print('未映射被引用类型',len(use),flush=True)
ORDER=sorted(use.items(),key=lambda kv:-len(kv[1]))
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
MEMSIG={}
for cn,c in ORC.items():
    MEMSIG[cn]={(m['name'],m['desc'] if m['kind']=='m' else None) for m in c['members']}
for tn,sig in ORDER[:24]:
    ms={s for s in sig if s[1]}
    if len(ms)<3: continue
    scored=[]
    for cn,ss in MEMSIG.items():
        hit=sum(1 for s in ms if s in ss)
        if hit: scored.append((hit/len(ms),hit,cn))
    scored.sort(reverse=True)
    print(f'== abcd/{tn}  引用 {len(sig)} 个成员(方法 {len(ms)})')
    for sc,hit,cn in scored[:3]:
        print(f'    {sc:.2f} ({hit}/{len(ms)})  {cn}')
