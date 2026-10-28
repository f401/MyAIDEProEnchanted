#!/usr/bin/env python3
"""anonmap.py [--apply]：把「只被单个已映射类引用」的未映射类命名为 <Owner目标>$N"""
import os,re,sys,collections
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
REF=re.compile(r'L(abcd/[A-Za-z0-9_$]+);')
refs=collections.defaultdict(set)     # owner -> set(referrer class)
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if not m: continue
    me=m.group(1).split()[-1].rstrip(';').lstrip('L')
    for x in REF.findall(t):
        refs[x].add(me)
    refs.pop(me,None)
cand=collections.defaultdict(list)
for cn,owners in refs.items():
    if cn in mp: continue
    mapped_owners={o for o in owners if o in mp}
    if len(owners)==1 and len(mapped_owners)==1:
        cand[list(mapped_owners)[0]].append(cn)
total=sum(len(v) for v in cand.values())
print('可命名的匿名/内部类:',total,'分布在',len(cand),'个外部类')
new=[]
for owner,items in sorted(cand.items()):
    base=mp[owner]
    for i,cn in enumerate(sorted(items),1):
        new.append((cn.replace('abcd/',''),'%s$%d'%(base,i)))
print('样例:',new[:8])
if '--apply' in sys.argv:
    TSV=HOME+'/out/work/jgit_map_clean.tsv'; TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
    rows=[l.rstrip('\n').split('\t') for l in open(TSV) if l.strip()]
    rows=[r for r in rows if r[0]!='abcd_class']
    have={r[0] for r in rows}
    tgt={r[1] for r in rows}
    added=0
    for p,t in new:
        if p in have or t in tgt: continue
        rows.append([p,t,'anonmap:%s 的唯一引用者'%p]); have.add(p); tgt.add(t); added+=1
    rows.sort(key=lambda r:r[0])
    open(TSV,'w').write('\n'.join('\t'.join(r) for r in rows)+'\n')
    TAB=chr(9)
    lines=[l for l in open(TSRG).read().split('\n') if l]
    blocks=[];cur=None
    for l in lines:
        if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
        else: blocks[-1][1].append(l)
    bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
    for p,t in new:
        if p in bd: continue
        blocks.append(['abcd/%s %s'%(p,t),[]])
    blocks.sort(key=lambda b:b[0].split()[0])
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('新增类映射',added,'总类',len(rows))
