#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""graphfinger.py <probe...>：用「引用的 jgit 类型邻域」给未映射类找候选
探针侧：文件里出现的所有已映射 jgit 类型（描述符/调用/父类/接口/字段）
oracle 侧：成员描述符 + super + ifaces + 方法体引用的类型
"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp[f[0] if '/' in f[0] else 'abcd/'+f[0]]=f[1]
MANY=set(mp.values())
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
def onb(cn):
    c=ORC[cn]; S=set()
    if c['sup']: S.add(c['sup'])
    S|=set(c['ifaces'])
    for m in c['members']:
        for t in re.findall(r'L([A-Za-z0-9_$/$.]+);',m['desc'] or ''): S.add(t)
    for m in c['members']:
        if m['kind']=='m' and m['code']:
            for v in c['refmap'].values(): S.add(v[0])
    return S
ONB={cn:onb(cn) for cn in ORC}
TOK=re.compile(r'L(abcd/[A-Za-z0-9_$]+);')
ARGS=sys.argv[1:]
if '--auto' in ARGS:
    cands=[]
    for k in IDX:
        if k in mp: continue
        t=IDX[k]; A={mp[x] for x in TOK.findall(t) if x in mp}
        if len(A)<4: continue
        sc=[]
        for cn,B in ONB.items():
            if cn in MANY: continue
            inter=len(A&B)
            if inter<3: continue
            sc.append((inter/len(A), inter, cn))
        sc.sort(reverse=True)
        if not sc: continue
        b=sc[0]; sec=sc[1] if len(sc)>1 else (0,0,'')
        if b[0]>=0.75 and b[0]-sec[0]>=0.2: cands.append((b[0],b[1],len(A),k,b[2]))
    cands.sort(reverse=True)
    print('可判类',len(cands))
    for c in cands[:25]: print(f'  {c[3]:14s} -> {c[4]:58s} {c[0]:.2f} ({c[1]}/{c[2]})')
    raise SystemExit
for pn in ARGS:
    t=IDX.get('abcd/'+pn)
    if not t: print('缺',pn); continue
    A={mp[x] for x in TOK.findall(t) if x in mp}
    s=re.search(r'^\.super\s+(\S+?);',t,re.M)
    esup=mp.get(s.group(1).replace('abcd/','abcd/')) if s else None
    if s and not esup:
        x=s.group(1)[1:-1] if s.group(1).startswith('L') else s.group(1)
        esup=mp.get(x,x)
    print(f'== abcd/{pn}  引用已映射 jgit 类型 {len(A)}: {sorted(x.split("/")[-1] for x in A)[:8]}')
    sc=[]
    for cn,B in ONB.items():
        if cn in MANY: continue
        if not A: continue
        inter=len(A&B)
        if inter<2: continue
        sc.append((inter/len(A), inter, cn))
    sc.sort(reverse=True)
    for cov,inter,cn in sc[:4]:
        supok='✓' if (esup and ORC[cn]['sup']==esup) else ''
        print(f'     {cov:.2f} ({inter}/{len(A)}) {supok} {cn}')
