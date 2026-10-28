#!/usr/bin/env python3
"""nopair.py：列出「探针成员在目标类里找不到同形对应者」最多的类，定位类级误判"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
z=zipfile.ZipFile(ORACLE); ORC={}
def orc(n):
    if n not in ORC:
        try: ORC[n]=JB.parse(z.read(n+'.class'))
        except KeyError: ORC[n]=None
    return ORC[n]
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
def pm(t):
    out=[]
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0]:
            n_,d_=b[0].split(':',1); out.append(('f',n_,d_,norm(d_),'static' in tl,'synthetic' in tl))
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0]:
            n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
            out.append(('m',n_,norm(d_),'static' in tl,'synthetic' in tl or 'bridge' in tl))
    return out
rows=[]
for cn,tgt in mp.items():
    t=IDX.get(cn if cn.startswith('abcd/') else 'abcd/'+cn); oc=orc(tgt)
    if not t or not oc: continue
    L=pm(t); bad=[]
    for e in L:
        if e[0]=='f': kind,name,draw,d,st,syn=e
        else: kind,name,d,st,syn=e; draw=None
        if syn or (kind=='m' and name.startswith('<')): continue
        if not any(m['kind']==kind and m['desc']==d and bool(m['acc']&0x8)==st for m in oc['members']): bad.append((kind,name,d))
    if bad: rows.append((len(bad),len(L),cn,tgt,bad))
rows.sort(reverse=True)
print('有未配对成员的类:',len(rows),' 未配对合计:',sum(r[0] for r in rows))
for n,tot,cn,tgt,bad in rows[:22]:
    print(f'  {cn:12s} -> {tgt:58s} 未配对 {n}/{tot}')
    for k,nm,d in bad[:5]: print(f'      {k} {nm} {d}')
