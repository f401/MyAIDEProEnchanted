#!/usr/bin/env python3
"""confield.py [--apply]：静态常量字段按 ConstantValue 精确配对（smali 的 `= 值` ↔ class 的 ConstantValue）"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
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
TAB=chr(9)
lines=[l for l in open(TSRG).read().split('\n') if l]
blocks=[];cur=None
for l in lines:
    if not l.startswith(TAB): cur=[l.split()[0].replace('abcd/',''),[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0]:b for b in blocks}
used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        used[k].add(('f',s[1]) if len(s)==2 else ('m',s[2]))
def pval(v):
    v=v.strip()
    if v.startswith('"'): return ('S',v[1:-1].replace('\\"','"').replace('\\n','\n').replace('\\t','\t'))
    if v in ('true','false'): return ('I',1 if v=='true' else 0)
    if v.startswith("'"): 
        c=v[1:-1]
        return ('I',{'\\n':10,'\\t':9,"\\'":39,'\\\\':92,'\\0':0}.get(c,ord(c[0]) if c else 0))
    neg=v.startswith('-')
    t=v.lstrip('-').rstrip('LlFf')
    try:
        n=int(t,16) if t.lower().startswith('0x') else int(t)
    except ValueError: return None
    return ('I',-n if neg else n)
props=[];stat=collections.Counter()
for cn in list(mp):
    t=IDX.get('abcd/'+cn); o=orc(mp[cn])
    if not t or not o: continue
    of=[m for m in o['members'] if m['kind']=='f' and m.get('cval')]
    if not of: continue
    taken=used[cn]
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        line=mm.group(1)
        if '=' not in line: continue
        head,_,val=line.partition(' = ')
        tl=head.split(); b=[x for x in tl if x not in MODS]
        if not b or ':' not in b[0]: continue
        n_,d_=b[0].split(':',1); dd=norm(d_)
        if ('f',n_) in taken: continue
        pv=pval(val)
        if not pv: continue
        cand=[m for m in of if m['desc']==dd and m['cval']==pv and ('f',m['name']) not in taken]
        if len(cand)==1:
            props.append((cn,n_,dd,pv,cand[0]['name'])); stat['ok']+=1
        elif len(cand)>1: stat['multi']+=1
        else: stat['none']+=1
print(dict(stat))
for p in props[:20]: print('  ',p[0],p[1],p[2][:28],p[3],'->',p[4])
if '--apply' in sys.argv:
    n=0
    for cn,pn,dd,pv,new in props:
        if new==pn: continue
        b=bd[cn]; ln='\t%s %s'%(pn,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
