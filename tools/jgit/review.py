#!/usr/bin/env python3
"""review.py <probe...>：高价值类抽查——打印成员映射全貌 + 未映射项"""
import os,re,sys
HOME=os.path.expanduser('~')
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
bd={};cur=None
for l in open(HOME+'/out/work/jgit_members_clean.tsrg').read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=l.split()[0]; bd[cur]=[]
    else: bd[cur].append(l)
def norm(d): return re.sub(r'L(abcd/[A-Za-z0-9_$]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
IDX={}
for f in os.listdir(SMALI):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SMALI,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
for pn in sys.argv[1:]:
    cn='abcd/'+pn; tgt=mp.get(cn)
    print('='*70); print(f'{cn}  ->  {tgt}')
    if not tgt: continue
    ms=bd.get(cn,[]); mapped=set()
    for l in ms:
        s=l[1:].split(' ')
        if len(s)==2: print(f'   F {s[0]:6s} -> {s[1]}'); mapped.add(('f',s[0]))
        else:
            print(f'   M {s[0]:6s} {norm(s[1]):44s} -> {s[2]}'); mapped.add(('m',s[0],norm(s[1])))
    t=IDX.get(cn); miss=[]
    if t:
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if not b or '(' not in b[0]: continue
            n_=b[0][:b[0].index('(')]; d=norm(b[0][b[0].index('('):])
            if n_.startswith('<') or 'synthetic' in tl or 'bridge' in tl: continue
            if ('m',n_,d) not in mapped: miss.append(('M',n_,d))
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if not b or ':' not in b[0] or 'synthetic' in tl: continue
            n_=b[0].split(':',1)[0]
            if ('f',n_) not in mapped: miss.append(('F',n_,norm(b[0].split(':',1)[1])))
    print(f'   --- 未映射 {len(miss)} 项')
    for k,n_,d in miss[:12]: print(f'   {k} {n_:6s} {d}')
