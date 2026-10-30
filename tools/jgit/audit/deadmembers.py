#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""deadmembers.py：统计「全 App 无任何调用/访问」的成员（可删候选）"""
import os,re,sys,collections
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
mapped=collections.defaultdict(set); mappedf=collections.defaultdict(set)
for l in open(_P.TSRG).read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=l.split()[0]; continue
    s=l[1:].split(' ')
    if len(s)==2: mappedf[cur].add(s[0])
    else: mapped[(cur,s[0],s[1])]=s[2]
# 全 App 引用集合
REF=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ \n]*|:[^ \n]+)?')
refm=collections.defaultdict(set); reff=collections.defaultdict(set)
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if not m: continue
    cn=m.group(1).split()[-1].rstrip(';').lstrip('L'); IDX[cn]=t
    for own,nm,rest in REF.findall(t):
        if not rest: continue
        if rest.startswith('('): refm['abcd/'+own].add((nm,rest))
        else: reff['abcd/'+own].add(nm)
tot_d=tot_u=0; dm=[]; du=[]
for cn in list(mp):
    t=IDX.get(cn)
    if not t: continue
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        nm=b[0][:b[0].index('(')]; d=b[0][b[0].index('('):]
        if nm.startswith('<') or 'synthetic' in tl or 'bridge' in tl: continue
        ismapped=(cn,nm,d) in mapped
        called=any(x[0]==nm and x[1]==d for x in refm.get(cn,()))
        if not ismapped:
            tot_u+=1
            if not called: du.append((cn,nm,d)); tot_d+=1
for cn in list(mp):
    t=IDX.get(cn)
    if not t: continue
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or ':' not in b[0] or 'synthetic' in tl: continue
        nm=b[0].split(':',1)[0]
        if nm in mappedf.get(cn,set()): continue
        if nm not in reff.get(cn,()): du.append((cn,nm,'FIELD'))
print('未映射方法',tot_u,'其中零调用',tot_d)
print('未映射/未映射字段中零访问:',len([x for x in du if x[2]=='FIELD']))
mm=[x for x in du if x[2]!='FIELD']; ff=[x for x in du if x[2]=='FIELD']
print('零调用方法示例:',mm[:6])
print('零访问字段示例:',ff[:6])

# ---- 分类：哪些是「真可删」 ----
import zipfile,sys
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
z=zipfile.ZipFile(HOME+'/out/fart/merged.jar')
ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
def has_in_super(cn,nm,d,seen=None):
    seen=seen or set()
    c=ORC.get(cn)
    if not c or cn in seen: return False
    seen.add(cn)
    for p in ([c['sup']] if c['sup'] else [])+list(c['ifaces']):
        pc=ORC.get(p)
        if not pc: continue
        for m in pc['members']:
            if m['kind']=='m' and m['name']==nm and m['desc']==d: return True
        if has_in_super(p,nm,d,seen): return True
    return False
cat=collections.Counter(); real=[]
for cn,nm,d in mm:
    if nm in ('values','valueOf'): cat['枚举合成']+=1; continue
    c=ORC.get(cn)
    acc=None
    for m in (c['members'] if c else []):
        if m['kind']=='m' and m['name']==nm and m['desc']==d: acc=m['acc']; break
    if acc is None: cat['类里找不到']+=1; continue
    if acc&0x400: cat['abstract']+=1; continue
    if has_in_super(cn,nm,d): cat['override/实现接口']+=1; continue
    if not (acc&0x2): cat['非 private（外部可能反射调用）']+=1; continue
    real.append((cn,nm,d)); cat['真可删(private+无调用+非override)']+=1
print('分类:',dict(cat))
print('真可删示例:',real[:8])
