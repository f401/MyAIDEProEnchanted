#!/usr/bin/env python3
"""fielddiff.py [--apply]：字段用「访问者方法集合」对齐（探针方法名先翻译成源码方法名）"""
import os,re,sys,collections
HOME=os.path.expanduser('~')
APP=HOME+'/src/app_decomp/sources/abcd'
SRC=HOME+'/src/jgit'
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
blocks=[];cur=None
for l in open(TSRG).read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
m2o=collections.defaultdict(dict); f2o=collections.defaultdict(dict); used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        if len(s)==2: f2o[k][s[0]]=s[1]; used[k].add(('f',s[1]))
        else: m2o[k][s[0]]=s[2]; used[k].add(('m',s[2]))
LD=re.compile(r'loaded from:\s*jgit_subset\.jar:(abcd/[A-Za-z0-9_$]+)\.class')
APPCLS={}
for f in os.listdir(APP):
    if not f.endswith('.java'): continue
    t=open(os.path.join(APP,f),encoding='utf-8',errors='replace').read()
    for m in LD.finditer(t): APPCLS.setdefault(m.group(1),(t,m.end()))
def block_at(text,pos):
    m=re.search(r'\b(class|interface|enum)\s+(\w+)',text[pos:])
    if not m: return None
    i=text.find('{',pos+m.end())
    if i<0: return None
    d=0
    for j in range(i,len(text)):
        if text[j]=='{': d+=1
        elif text[j]=='}':
            d-=1
            if d==0: return text[i+1:j]
    return None
def find_class_block(text,name):
    for m in re.finditer(r'\b(class|interface|enum)\s+'+re.escape(name)+r'\b',text):
        i=text.find('{',m.end())
        if i<0: continue
        d=0
        for j in range(i,len(text)):
            if text[j]=='{': d+=1
            elif text[j]=='}':
                d-=1
                if d==0: return text[i+1:j]
    return None
FIELD=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|transient|volatile)\s+)*)([\w$.\[\]<>?,]+)\s+(\w+)\s*(?:=[^;]*)?;')
METH=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|abstract|synchronized|native|default)\s+)*)(?:<[^>]{0,120}>\s+)?([\w$.\[\]<>?,]+)\s+(\w+)\s*\(([^)]*)\)\s*(?:throws\s+[\w$.,\s]+)?\{',re.S)
def members(block,clsname):
    depth=[];d=0
    for ch in block:
        depth.append(d)
        if ch=='{': d+=1
        elif ch=='}': d-=1
    fld={}
    for m in FIELD.finditer(block):
        if depth[m.start()]!=0: continue
        fld[m.group(3)]=m.group(2)
    met={}
    for m in METH.finditer(block):
        if depth[m.start()]!=0: continue
        name=m.group(3)
        if name==clsname or m.group(2)==name: continue
        st=m.end()-1; dd=0
        for j in range(st,len(block)):
            if block[j]=='{': dd+=1
            elif block[j]=='}':
                dd-=1
                if dd==0: body=block[st+1:j]; break
        else: continue
        met[name]=body
    return fld,met
def _p(t):
    t=t.replace(' ','')
    if t.endswith(']'): return 'A'
    return {'int':'I','long':'J','boolean':'Z','byte':'B','char':'C','short':'S','float':'F','double':'D'}.get(t,'O')
def shape_desc(d):
    return 'A' if d.startswith('[') else ('O' if d.startswith('L') else d)
props=[];stat=collections.Counter()
for cn,tgt in mp.items():
    ent=APPCLS.get(cn)
    if not ent: stat['noapp']+=1; continue
    t,off=ent
    pblk=block_at(t,off)
    if pblk is None: continue
    short=cn.split('/')[-1]
    pfld,pmet=members(pblk,short.split('$')[-1])
    if not pfld: continue
    parts=tgt.split('/'); outer=parts[-1].split('$')[0]
    path=os.path.join(SRC,'/'.join(parts[:-1]),outer+'.java')
    if not os.path.exists(path): stat['nosrc']+=1; continue
    st=open(path,encoding='utf-8',errors='replace').read()
    sblk=find_class_block(st,outer)
    if sblk is None: continue
    for inner in parts[-1].split('$')[1:]:
        nb=find_class_block(sblk,inner)
        if nb is None: sblk=None; break
        sblk=nb
    if sblk is None: stat['noinner']+=1; continue
    sfld,smet=members(sblk,parts[-1].split('$')[-1])
    acc_s=collections.defaultdict(set)
    for mn,body in smet.items():
        for fn in sfld:
            if re.search(r'\b'+re.escape(fn)+r'\b',body): acc_s[fn].add(mn)
    taken=used[cn.replace('abcd/','')]
    fresh=set()
    for pf,ptype in pfld.items():
        if ('f',pf) in taken: continue
        # 探针字段的访问者 -> 源码方法名
        pacc=set()
        for mn,body in pmet.items():
            if re.search(r'\b'+re.escape(pf)+r'\b',body): pacc.add(m2o[cn.replace('abcd/','')].get(mn,mn))
        if len(pacc)<2: stat['noacc']+=1; continue
        cand=[fn for fn in sfld if ('f',fn) not in taken and fn not in fresh]
        scored=[]
        for fn in cand:
            os_=acc_s.get(fn,set())
            if not os_: continue
            j=len(pacc&os_)/max(1,len(pacc|os_))
            scored.append((j,fn,len(os_)))
        if not scored: continue
        scored.sort(reverse=True)
        b=scored[0]; sec=scored[1] if len(scored)>1 else (0,'',0)
        if b[0]>=0.70 and b[0]-sec[0]>=0.20:
            props.append((cn,pf,b[1],b[0],sec[0])); fresh.add(b[1]); stat['ok']+=1
        else: stat['ambig']+=1
print(dict(stat))
for p in props[:25]: print(f'  {p[0]} {p[1]} -> {p[2]}  {p[3]:.2f}/{p[4]:.2f}')
if '--apply' in sys.argv:
    n=0
    MODS={'public','private','protected','static','final','synthetic','constructor','declared-synchronized',
          'varargs','bridge','native','transient','volatile','strictfp','abstract'}
    SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
    IDX={}
    for f in os.listdir(SMALI):
        if not f.endswith('.smali'): continue
        tx=open(os.path.join(SMALI,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',tx,re.M)
        if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),tx)
    for cn,pf,new,_,_ in props:
        b=bd[cn.replace('abcd/','')]; ln='\t%s %s'%(pf,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
