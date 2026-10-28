#!/usr/bin/env python3
import os,re,sys,collections
HOME=os.path.expanduser('~')
APP=HOME+'/src/app_decomp/sources/abcd'; SRC=HOME+'/src/jgit'
SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','synthetic','constructor','declared-synchronized',
      'varargs','bridge','native','transient','volatile','strictfp','abstract'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
m2o=collections.defaultdict(dict); used=collections.defaultdict(set); usedp=collections.defaultdict(set)
cur=None
for l in open(HOME+'/out/work/jgit_members_clean.tsrg').read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=l.split()[0]; continue
    s=l[1:].split(' ')
    if len(s)==2: used[cur].add(('f',s[1])); usedp[cur].add(s[0])
    else: m2o[cur][s[0]]=s[2]; used[cur].add(('m',s[2]))
LD=re.compile(r'loaded from:\s*jgit_subset\.jar:(abcd/[A-Za-z0-9_$]+)\.class')
APPCLS={}
for f in os.listdir(APP):
    if not f.endswith('.java'): continue
    t=open(os.path.join(APP,f),encoding='utf-8',errors='replace').read()
    for m in LD.finditer(t): APPCLS.setdefault(m.group(1),(t,m.end()))
def block_at(text,pos):
    m=re.search(r'\b(class|interface|enum)\s+(\w+)',text[pos:])
    if not m: return None
    i=text.find('{',pos+m.end()); d=0
    for j in range(i,len(text)):
        if text[j]=='{': d+=1
        elif text[j]=='}':
            d-=1
            if d==0: return text[i+1:j]
def find_cb(text,name):
    for m in re.finditer(r'\b(class|interface|enum)\s+'+re.escape(name)+r'\b',text):
        i=text.find('{',m.end()); d=0
        for j in range(i,len(text)):
            if text[j]=='{': d+=1
            elif text[j]=='}':
                d-=1
                if d==0: return text[i+1:j]
METH=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|abstract|synchronized|native|default)\s+)*)(?:<[^>]{0,120}>\s+)?([\w$.\[\]<>?,]+)\s+(\w+)\s*\(([^)]*)\)\s*(?:throws\s+[\w$.,\s]+)?\{',re.S)
def methods(blk,cls):
    out={}; depth=[]; d=0
    for ch in blk:
        depth.append(d)
        if ch=='{': d+=1
        elif ch=='}': d-=1
    for m in METH.finditer(blk):
        if depth[m.start()]!=0: continue
        nm=m.group(3)
        if nm==cls or m.group(2)==nm: continue
        st=m.end()-1; dd=0
        for j in range(st,len(blk)):
            if blk[j]=='{': dd+=1
            elif blk[j]=='}':
                dd-=1
                if dd==0: out[nm]=blk[st+1:j]; break
    return out
for pn in sys.argv[1:]:
    cn='abcd/'+pn; tgt=mp.get(cn); ent=APPCLS.get(cn); t=None
    sf=os.path.join(SMALI,pn+'.smali')
    if os.path.exists(sf): t=open(sf,encoding='utf-8',errors='replace').read()
    print('='*70); print(f'{pn} -> {tgt}')
    if t is None or not ent: print('  缺数据'); continue
    ftype={}
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        b=[x for x in mm.group(1).split() if x not in MODS]
        if b and ':' in b[0]:
            n_,d_=b[0].split(':',1)
            ftype[n_]=re.sub(r'L(abcd/[A-Za-z0-9_$]+);',lambda x:mp.get(x.group(1),x.group(1)),d_)
    jt,off=ent; blk=block_at(jt,off) or ''
    pm=methods(blk,pn.split('$')[-1])
    parts=tgt.split('/'); path=os.path.join(SRC,'/'.join(parts[:-1]),parts[-1].split('$')[0]+'.java')
    sb=open(path,encoding='utf-8',errors='replace').read() if os.path.exists(path) else ''
    sblk=find_cb(sb,parts[-1].split('$')[0]) or ''
    for inner in parts[-1].split('$')[1:]:
        if inner.isdigit(): sblk=''; break
        sblk=find_cb(sblk,inner) or ''
    sfields=re.findall(r'(?:^|\n)\s*(?:(?:private|protected|public|final|static|transient|volatile)\s+)+([\w$.\[\]<>?,]+)\s+(\w+)\s*(?:=[^;]*)?;',sblk)
    print('  源码字段:', ', '.join(f'{n}:{ty.split(".")[-1]}' for ty,n in sfields)[:600])
    for f in sorted(ftype):
        if f in usedp[cn]: continue
        users=[m2o[cn].get(mn,mn) for mn,b in pm.items() if re.search(r'\b'+re.escape(f)+r'\b',b)]
        print(f'   {f:5s} {ftype[f][:26]:28s} 用于 {users[:6]}')
