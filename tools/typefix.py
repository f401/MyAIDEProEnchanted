#!/usr/bin/env python3
"""typefix.py：只针对「阻塞 jgit 成员配对」的未映射类型，用被调用签名做 jigsaw 匹配"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
TY=re.compile(r'L(abcd/[A-Za-z0-9_$]+);')
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
# 1) 被 jgit 映射类成员描述的未映射类型
block=collections.Counter()
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    for line in re.finditer(r'^(?:\.field|\.method)\s+([^\n]+)$',t,re.M):
        for ty in TY.findall(line.group(1)):
            y=ty.replace('abcd/','')
            if 'abcd/'+y not in mp: block[y]+=1
# 2) 这些类型被调用/访问的成员签名
CALL=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ ]*)?')
use=collections.defaultdict(set); fld=collections.defaultdict(set)
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    for own,name,desc in CALL.findall(t):
        if 'abcd/'+own in mp: continue
        if desc: use[own].add((name,norm(desc)))
        else: fld[own].add(name)
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'); ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
MSIG={cn:{(m['name'],m['desc']) for m in c['members'] if m['kind']=='m'} for cn,c in ORC.items()}
FSIG={cn:{m['name'] for m in c['members'] if m['kind']=='f'} for cn,c in ORC.items()}
print('阻塞类型',len(block),flush=True)
for tn,cnt in block.most_common(22):
    ms=use.get(tn,set())
    if len(ms)<2: 
        print(f'== abcd/{tn} 阻塞 {cnt} 处，方法引用 {len(ms)}（太少）'); continue
    scored=[]
    for cn,s in MSIG.items():
        hit=sum(1 for x in ms if x in s)
        if hit: scored.append((hit/len(ms),hit,cn))
    scored.sort(reverse=True)
    print(f'== abcd/{tn}  阻塞 {cnt} 处  方法引用 {len(ms)}')
    for sc,hit,cn in scored[:3]: print(f'     {sc:.2f} ({hit}/{len(ms)})  {cn}')
