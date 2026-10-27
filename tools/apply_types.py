#!/usr/bin/env python3
"""apply_types.py  <tsv文件: probe<TAB>target<TAB>votes>  —— 批量加类映射并同步"""
import os,sys,collections
HOME=os.path.expanduser('~')
TSV=HOME+'/out/work/jgit_map_clean.tsv'; TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
rows=[l.rstrip('\n').split('\t') for l in open(TSV) if l.strip()]
rows=[r for r in rows if r[0]!='abcd_class']
d={r[0]:r for r in rows}
new=[]
for l in open(sys.argv[1]):
    l=l.rstrip('\n')
    if not l: continue
    p,t,v=l.split('\t')
    ev='typeprop:描述符逐位对齐投票 %s'%v
    if p in d:
        if d[p][1]!=t: print('!! 冲突',p,d[p][1],'->',t)
        continue
    new.append([p,t,ev]); d[p]=new[-1]
rows.extend(new)
c=collections.Counter(r[1] for r in rows); dup=[k for k,v in c.items() if v>1]
assert not dup,('目标重复',dup)
rows.sort(key=lambda r:r[0])
open(TSV,'w').write('\n'.join('\t'.join(r) for r in rows)+'\n')
TAB=chr(9)
lines=[l for l in open(TSRG).read().split('\n') if l]
blocks=[];cur=None
for l in lines:
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
for p,t,ev in new:
    if p in bd: bd[p][0]='abcd/%s %s'%(p,t)
    else: blocks.append(['abcd/%s %s'%(p,t),[]])
blocks.sort(key=lambda b:b[0].split()[0])
out=[]
for b in blocks: out.append(b[0]); out.extend(b[1])
open(TSRG,'w').write('\n'.join(out)+'\n')
print('新增类映射',len(new),'总类',len(rows),'块',len(blocks))
