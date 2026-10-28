#!/usr/bin/env python3
"""校验 tsrg 成员映射：新名必须在 oracle 目标类(或祖先)中存在且描述符一致"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
TSV=HOME+'/out/work/jgit_map_clean.tsv'
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
mp={}
for l in open(TSV):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
cls={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: cls[c['this']]=c
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
def shape(d):
    b=d[1:d.index(')')];r=d[d.index(')')+1:]
    one=lambda x:'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '('+''.join(one(p) for p in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])',b))+')'+one(r)
def find(cn,name,desc,kind,seen=None):
    seen=seen or set()
    if cn in seen: return False
    seen.add(cn)
    c=cls.get(cn)
    if not c: return None
    for m in c['members']:
        if m['kind']==kind and m['name']==name and (m['desc']==desc or shape(m['desc'])==shape(desc)): return True
    for p in ([c['sup']] if c['sup'] else [])+list(c['ifaces']):
        r=find(p,name,desc,kind,seen)
        if r: return True
    return False
R8={('abcd/KC','writeTo'),('abcd/wH','inflate'),('abcd/wH','newObjectToPack')}
bad=[];unk=0;tot=0;r8=[]
cur=None
for l in open(TSRG):
    l=l.rstrip('\n')
    if not l: continue
    if not l.startswith('\t'): cur=l.split()[0]; continue
    s=l[1:].split(' ')
    new=mp.get(cur)
    if not new or new not in cls: continue
    tot+=1
    if len(s)==2:
        nm,new2=s; r=find(new,new2,'',None) if False else None
        ok=False
        c=cls[new]
        # 字段：靠名字+类型未知，退化为名字存在
        stack=[new];seen=set()
        while stack:
            cn=stack.pop()
            if cn in seen: continue
            seen.add(cn)
            cc=cls.get(cn)
            if not cc: continue
            for m in cc['members']:
                if m['kind']=='f' and m['name']==new2: ok=True;break
            if ok: break
            for p in ([cc['sup']] if cc['sup'] else [])+list(cc['ifaces']): stack.append(p)
        if not ok: bad.append((cur,new,'field',s[0],new2,'字段名不存在'))
    else:
        nm,ds,new2=s
        r=find(new,new2,norm(ds),'m')
        if r is False:
            if (cur,new2) in R8: r8.append((cur,norm(ds),new2))
            else: bad.append((cur,new,'method',nm,norm(ds),new2))
        elif r is None: unk+=1
print('成员映射',tot,'无法校验(未知类)',unk,'不一致',len(bad),'已知R8签名重写',len(r8))
for b in bad[:40]: print(' ',b)
