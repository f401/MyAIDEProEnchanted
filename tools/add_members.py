#!/usr/bin/env python3
"""add_members.py —— 按 (kind, 探针名, 归一化描述符) 精确写入成员映射
用法: 在脚本里 import 或直接改 SPECS。"""
import os,re,sys
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
def members(probe):
    out=[]
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m or m.group(1).split()[-1].rstrip(';').lstrip('L')!='abcd/'+probe: continue
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            b=[x for x in mm.group(1).split() if x not in MODS]
            if b and ':' in b[0]:
                n_,d_=b[0].split(':',1); out.append(('f',n_,d_,norm(d_)))
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            b=[x for x in mm.group(1).split() if x not in MODS]
            if b and '(' in b[0]:
                n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
                out.append(('m',n_,d_,norm(d_)))
        return out
    return None
def apply(specs):
    """specs: {probe: [(kind, name, normdesc_or_None, newname), ...]}"""
    TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
    lines=[l for l in open(TSRG).read().split('\n') if l]
    blocks=[];cur=None
    for l in lines:
        if not l.startswith('\t'): cur=[l,[]];blocks.append(cur)
        else: blocks[-1][1].append(l)
    bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
    added=0
    for probe,items in specs.items():
        ms=members(probe)
        if ms is None: print('!! 缺探针',probe); continue
        if probe not in bd:
            print('!! tsrg 无类块',probe); continue
        for kind,name,nd,new in items:
            cand=[x for x in ms if x[0]==kind and x[1]==name and (nd is None or x[3]==nd)]
            if len(cand)!=1:
                print(f'!! {probe} {kind} {name} {nd} 命中 {len(cand)} 个: {cand}'); continue
            ln=('\t%s %s %s'%(name,cand[0][2],new)) if kind=='m' else ('\t%s %s'%(name,new))
            if ln not in bd[probe][1]:
                bd[probe][1].append(ln); added+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('新增成员映射',added)
if __name__=='__main__':
    pass
