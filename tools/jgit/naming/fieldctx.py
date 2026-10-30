#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""fieldctx.py [--apply]：字段「上下文推断」——同一方法里字段访问序列对齐（已映射字段做锚点）"""
import os,re,sys,collections,difflib
HOME=os.path.expanduser('~')
APP=HOME+'/src/app_decomp/sources/abcd'; SRC=HOME+'/src/jgit'
TSRG=_P.TSRG
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
blocks=[];cur=None
for l in open(TSRG).read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
f2o=collections.defaultdict(dict); m2o=collections.defaultdict(dict); used=collections.defaultdict(set)
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
FIELD=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|transient|volatile)\s+)*)([\w$.\[\]<>?,]+)\s+(\w+)\s*(?:=[^;]*)?;')
METH=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|abstract|synchronized|native|default)\s+)*)(?:<[^>]{0,120}>\s+)?([\w$.\[\]<>?,]+)\s+(\w+)\s*\(([^)]*)\)\s*(?:throws\s+[\w$.,\s]+)?\{',re.S)
def members(block,clsname):
    depth=[];d=0
    for ch in block:
        depth.append(d)
        if ch=='{': d+=1
        elif ch=='}': d-=1
    fld=set(); met={}
    for m in FIELD.finditer(block):
        if depth[m.start()]==0: fld.add(m.group(3))
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
votes=collections.defaultdict(collections.Counter); stat=collections.Counter()
for cn,tgt in mp.items():
    ent=APPCLS.get(cn)
    if not ent: stat['noapp']+=1; continue
    t,off=ent; pblk=block_at(t,off)
    if not pblk: continue
    short=cn.split('/')[-1]
    pfld,pmet=members(pblk,short.split('$')[-1])
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
    name=cn.replace('abcd/','')
    for pmn,pbody in pmet.items():
        smn=m2o[name].get(pmn)
        if not smn or smn not in smet: continue
        sbody=smet[smn]
        pseq=[tok for tok in re.findall(r'[A-Za-z_$][\w$]*',pbody) if tok in pfld]
        sseq=[tok for tok in re.findall(r'[A-Za-z_$][\w$]*',sbody) if tok in sfld]
        if not pseq or not sseq: continue
        pnorm=[f2o[name].get(x,'?') for x in pseq]
        if len(pnorm)==len(sseq):
            for (pn,tr),b in zip(zip(pseq,pnorm),sseq):
                if tr=='?': votes[(name,pn,b)][('pos',)]+=1
                elif tr!=b: stat['mismatch']+=1
agg=collections.defaultdict(collections.Counter)
for (cn,pn,sname),c in votes.items():
    agg[(cn,pn)][sname]+=sum(c.values())
props=[];stat2=collections.Counter()
for (cn,pn),c in agg.items():
    tot=sum(c.values())
    best,bt=c.most_common(1)[0]
    sec=c.most_common(2)[1][1] if len(c)>1 else 0
    if bt>=2 and bt/tot>=0.6 and bt>sec and ('f',best) not in used[cn.replace('abcd/','')]:
        props.append((cn,pn,best,bt,tot)); stat2['ok']+=1
    else: stat2['ambig']+=1
print(dict(stat),dict(stat2))
for p in props[:20]: print(f'  {p[0]} {p[1]} -> {p[2]}  {p[3]}/{p[4]}')
if '--apply' in sys.argv:
    n=0
    for cn,pn,sname,bt,tot in props:
        b=bd[cn.replace('abcd/','')]; ln='\t%s %s'%(pn,sname)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
