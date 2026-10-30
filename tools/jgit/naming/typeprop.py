#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""typeprop.py：用「已映射成员」的描述符逐位对齐来给未映射类型投票"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
TSRG=_P.TSRG
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TOK=re.compile(r'\[*(?:L[^;]+;|[ZBCSIJFD])')
def toks(d): return [t.lstrip('[') for t in TOK.findall(d)]
TAB=chr(9)
lines=[l for l in open(TSRG).read().split('\n') if l]
blocks=[];cur=None
for l in lines:
    if not l.startswith(TAB): cur=[l.split()[0].replace('abcd/',''),[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
z=zipfile.ZipFile(ORACLE)
votes=collections.defaultdict(collections.Counter)
detail=collections.defaultdict(list)
for cn,ms in blocks:
    tgt=mp.get('abcd/'+cn)
    if not tgt: continue
    try: oc=JB.parse(z.read(tgt+'.class'))
    except KeyError: continue
    oms={}
    for m in oc['members']:
        key=(m['kind'],m['name'])
        oms.setdefault(key,[]).append(m)
    t=IDX.get('abcd/'+cn)
    if not t: continue
    # super / implements 对齐投票
    msup=re.search(r'^\.super\s+(\S+?);',t,re.M)
    if msup:
        xs=msup.group(1)[1:]
        if xs.startswith('abcd/') and xs not in mp and oc['sup']:
            votes[xs][oc['sup']]+=1; detail[xs].append((cn,'<super>',tgt,oc['sup']))
    for x in re.findall(r'^\.implements\s+(\S+?);',t,re.M):
        xs=x[1:]
        if xs.startswith('abcd/') and xs not in mp:
            for y in oc['ifaces']:
                votes[xs][y]+=1; detail[xs].append((cn,'<iface>',tgt,y))
    pdesc={}
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0]:
            n_,d_=b[0].split(':',1); pdesc[('f',n_)]=d_
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0]:
            n_=b[0][:b[0].index('(')]; pdesc[('m',n_)]=b[0][b[0].index('('):]
    for l in ms:
        s=l[1:].split(' ')
        if len(s)==2:
            pn,new=s; kind='f'
        else:
            pn,draw,new=s; kind='m'
        if (kind,pn) not in pdesc: continue
        pd=pdesc[(kind,pn)]
        for om in oms.get((kind,new),[]):
            a,b=toks(pd),toks(om['desc'])
            if len(a)!=len(b): continue
            for x,y in zip(a,b):
                if not x.startswith('L'): continue
                xn=x[1:-1]
                if xn.startswith('abcd/') and xn not in mp:
                    yn=y[1:-1]
                    votes[xn][yn]+=1
                    detail[xn].append((cn,pn,new,yn))
import os as _os
REJ=set()
_r=_os.path.expanduser('~/out/work/jgit_rejected_types.txt')
if _os.path.exists(_r): REJ={x.strip() for x in open(_r) if x.strip()}
tot=0
best=[]
for xn,c in votes.items():
    if xn.replace('abcd/','') in REJ: continue
    yn,n=c.most_common(1)[0]
    s=sum(c.values())
    if (n>=2 and n/s>=0.9) or (n>=1 and s==1):
        best.append((n,s,xn,yn))
        tot+=1
best.sort(reverse=True)
print('可判类型（票>=2且>=90% 或 唯一票）:',tot)
for n,s,xn,yn in best[:40]:
    print(f'  {xn:10s} -> {yn:58s} {n}/{s}')
