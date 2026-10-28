#!/usr/bin/env python3
"""excess.py：探针成员多重集超出 oracle 的类（R8 合并 or 类映射错误）"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
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
rows=[]
for cn,tgt in mp.items():
    t=IDX.get(cn if cn.startswith('abcd/') else 'abcd/'+cn); o=orc(tgt)
    if not t or not o: continue
    pc=collections.Counter(); oc2=collections.Counter()
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0] and 'synthetic' not in tl:
            n_,d_=b[0].split(':',1); pc[('f',norm(d_),'static' in tl)]+=1
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0] and 'synthetic' not in tl and 'bridge' not in tl:
            n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
            if n_.startswith('<'): continue
            pc[('m',norm(d_),'static' in tl)]+=1
    for m in o['members']:
        if m['acc']&0x1000: continue
        if m['kind']=='m' and (m['name'].startswith('<') or m['acc']&0x40): continue
        oc2[(m['kind'],m['desc'],bool(m['acc']&0x8))]+=1
    ex={k:v-oc2.get(k,0) for k,v in pc.items() if v>oc2.get(k,0)}
    if ex: rows.append((sum(ex.values()),cn,tgt,ex))
rows.sort(reverse=True)
print('有超出成员的类:',len(rows),' 超出合计:',sum(r[0] for r in rows))
for tot,cn,tgt,ex in rows[:18]:
    print(f'  {cn:12s} -> {tgt:56s} 超出 {tot}')
    for k,v in list(ex.items())[:4]: print(f'      +{v} {k[0]} {k[1][:50]} static={k[2]} (oracle {0})')
