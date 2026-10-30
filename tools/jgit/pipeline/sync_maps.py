#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""从 ~/out/work/jgit_members_clean.tsrg 重建 process/mappings.txt 的 jgit 块（头部保持不变）"""
import os
HOME=os.path.expanduser('~')
TSRG=_P.TSRG
MAPS='/storage/emulated/0/MyAIDEProEnchanted/process/mappings.txt'
lines=[l for l in open(TSRG).read().split('\n') if l]
src=open(MAPS).read().split('\n')
head=[]
for l in src:
    if l.startswith('abcd/') and ' org/eclipse/jgit/' in l: break
    head.append(l)
while head and head[-1]=='': head.pop()
open(MAPS,'w').write('\n'.join(head)+'\n'+'\n'.join(lines)+'\n')
print('mappings.txt: 头',len(head),'+ jgit 块',len(lines),'= ',len(head)+len(lines))
