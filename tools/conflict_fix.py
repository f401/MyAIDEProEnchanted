#!/usr/bin/env python3
"""conflict_fix.py [--apply]：裁决「两个探针成员映射到同一 名字+描述符」的冲突
规则1 字段：按探针字段类型 == oracle 字段类型 分配（不同则淘汰错的那条）
规则2 方法：用 JGitText 键集合（探针键必须被 oracle 方法键集合覆盖）
规则3 都判不了 -> 整组丢弃"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
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
lines=[l for l in open(HOME+'/out/work/jgit_members_clean.tsrg').read().split('\n') if l]
cur=None; groups=collections.defaultdict(list); idx=[]
for i,l in enumerate(lines):
    if not l.startswith(TAB): cur=l.split()[0]; continue
    s=l[1:].split(' ')
    key=(cur,'f',s[1]) if len(s)==2 else (cur,'m',s[2],s[1])
    groups[key].append((i,l,s))
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'); ORC={}
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
KEY=re.compile(r'Lorg/eclipse/jgit/JGitText;->([A-Za-z0-9_]+):')
def pfdesc(cn,name):
    t=IDX.get(cn)
    if not t: return None
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        b=[x for x in mm.group(1).split() if x not in MODS]
        if b and ':' in b[0] and b[0].split(':',1)[0]==name:
            return norm(b[0].split(':',1)[1])
    return None
def pkeys(cn,name,desc):
    t=IDX.get(cn)
    if not t: return None
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        b=[x for x in mm.group(1).split() if x not in MODS]
        if b and '(' in b[0] and b[0][:b[0].index('(')]==name and norm(b[0][b[0].index('('):])==desc:
            return set(KEY.findall(mm.group(2)))
    return None
def okeys(c,oname,odesc):
    for m in c['members']:
        if m['kind']=='m' and m['name']==oname and m['desc']==odesc and m['code']:
            K=set(); i=0; code=m['code']; n=len(code)
            while i<n:
                if i<0 or i>=n: break
                op=code[i]
                if 0xb2<=op<=0xb9 and i+2<n:
                    rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
                    if rm and rm[0].endswith('/JGitText') and rm[3]==9: K.add(rm[1])
                    i+=3; continue
                if op==0xaa:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    lo=int.from_bytes(code[base+4:base+8],'big',signed=True); hi=int.from_bytes(code[base+8:base+12],'big',signed=True)
                    i=base+12+4*(hi-lo+1); continue
                if op==0xab:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    np_=int.from_bytes(code[base+4:base+8],'big',signed=True); i=base+8+8*np_; continue
                if op==0xc4 and i+1<n: i+= 6 if code[i+1]==0x84 else 4; continue
                i+=JB.LEN.get(op,1)
            return K
    return None
keep=set(); drop=set(); stat=collections.Counter()
for key,gs in groups.items():
    if len(gs)<2: keep.add(gs[0][0]); continue
    cn,kind=key[0],key[1]
    c=ORC.get(mp.get(cn,''))
    if kind=='f':
        oname=key[2]
        odesc=None
        if c:
            for m in c['members']:
                if m['kind']=='f' and m['name']==oname: odesc=m['desc']; break
        win=None
        for i,l,s in gs:
            d=pfdesc(cn,s[0])
            if d and odesc and d==odesc: win=i; break
        if win is not None:
            keep.add(win)
            for i,l,s in gs:
                if i!=win: drop.add(i)
            stat['field_desc']+=1
        else:
            for i,l,s in gs: drop.add(i)
            stat['field_unres']+=1
        continue
    oname,odesc=key[2],key[3]
    ok=okeys(c,oname,odesc) if c else None
    winners=[]
    if ok is not None:
        for i,l,s in gs:
            K=pkeys(cn,s[0],norm(s[1]))
            if K is None: continue
            if ok==set() and K==set(): winners.append(i)
            elif K and K<=ok: winners.append(i)
    if len(winners)==1:
        keep.add(winners[0])
        for i,l,s in gs:
            if i!=winners[0]: drop.add(i)
        stat['method_key']+=1
    elif len(winners)>1:
        for i,l,s in gs: drop.add(i)
        stat['method_key_multi_dropped']+=1
    else:
        for i,l,s in gs: drop.add(i)
        stat['method_unres']+=1
print(dict(stat))
res=[]
for i,l in enumerate(lines):
    if i in drop: continue
    res.append(l)
print('丢弃',len(drop),'保留冲突内',len(keep),'总行',len(lines),'->',len(res))
if '--apply' in sys.argv:
    open(HOME+'/out/work/jgit_members_clean.tsrg','w').write('\n'.join(res)+'\n')
    print('已写回')
