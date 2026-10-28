#!/usr/bin/env python3
"""override.py [--apply]：覆写/实现传播——父类或接口里同名同描述符的成员已映射，则子类同名同形者直接继承该名"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L(abcd/[A-Za-z0-9_$]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
TAB=chr(9)
blocks=[];cur=None
for l in open(HOME+'/out/work/jgit_members_clean.tsrg').read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
m2o=collections.defaultdict(dict); used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        if len(s)==2: used[k].add(('f',s[1]))
        else: m2o[k][(s[0],norm(s[1]))]=s[2]; used[k].add(('m',s[2]))
z=zipfile.ZipFile(HOME+'/out/fart/merged.jar'); ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
def chain(cn):
    out=[];seen=set()
    st=[cn]
    while st:
        c=st.pop()
        if c in seen: continue
        seen.add(c)
        o=ORC.get(c)
        if not o: continue
        for p in ([o['sup']] if o['sup'] else [])+list(o['ifaces']):
            if p not in seen: out.append(p); st.append(p)
    return out
props=[];stat=collections.Counter()
for cn in mp:
    t=IDX.get(cn); name=cn.replace('abcd/','')
    if not t: continue
    sup=chain(cn)
    pmapped=set()
    for _l in bd.get(name,['',''])[1]:
        _s=_l[1:].split(' ')
        if len(_s)==3: pmapped.add((_s[0],norm(_s[1])))
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        pn=b[0][:b[0].index('(')]; raw=b[0][b[0].index('('):]; d=norm(raw)
        if pn.startswith('<') or 'synthetic' in tl or 'bridge' in tl: continue
        stat['iter']+=1
        if (pn,d) in pmapped: continue
        found=None
        for a in sup:
            an=a.replace('abcd/','')
            if (pn,d) in m2o[a]: found=m2o[a][(pn,d)]; break
        if found and found!=pn and ('m',found) not in used[name]:
            props.append((cn,pn,raw,found)); stat['ok']+=1
        elif found: stat['taken']+=1
print(dict(stat))
for p in props[:20]: print(f'  {p[0]} {p[1]} -> {p[3]}')
if '--apply' in sys.argv:
    n=0
    for cn,pn,raw,new in props:
        b=bd[cn.replace('abcd/','')]; ln='\t%s %s %s'%(pn,raw,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(HOME+'/out/work/jgit_members_clean.tsrg','w').write('\n'.join(out)+'\n')
    print('写入',n)
