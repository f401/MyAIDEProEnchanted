#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""javadiff.py [--apply]：jadx 反编译产物 vs jgit 源码，做「标识符无关」结构对齐，给未映射成员定名"""
import os,re,sys,collections,difflib
HOME=os.path.expanduser('~')
APP=HOME+'/src/app_decomp/sources/abcd'
SRC=HOME+'/src/jgit'
TSRG=_P.TSRG
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
PDESC={}
for _f in os.listdir(SMALI):
    if not _f.endswith('.smali'): continue
    _t=open(os.path.join(SMALI,_f),encoding='utf-8',errors='replace').read()
    _m=re.search(r'^\.class\s+([^\n]+)$',_t,re.M)
    if not _m: continue
    _cn=_m.group(1).split()[-1].rstrip(';').lstrip('L')
    _d={}
    for _mm in re.finditer(r'^\.method\s+([^\n]+)\n',_t,re.M):
        _b=[x for x in _mm.group(1).split() if x not in MODS]
        if _b and '(' in _b[0]:
            _n=_b[0][:_b[0].index('(')]; _dd=_b[0][_b[0].index('('):]
            _d.setdefault(_n,[]).append(_dd)
    PDESC[_cn]=_d
TAB=chr(9)
blocks=[];cur=None
for l in open(TSRG).read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        used[k].add(('f',s[1]) if len(s)==2 else ('m',s[2]))
def _p(t):
    t=t.replace(' ','')
    if t.endswith(']'): return 'A'
    m={'int':'I','long':'J','boolean':'Z','byte':'B','char':'C','short':'S','float':'F','double':'D'}
    return m.get(t,'O')
def shape_java(pl,ret):
    return (tuple(_p(t.split('<')[0]) for t in pl), _p(ret.split('<')[0]))
def shape_desc(d):
    body=d[1:d.index(')')]; ret=d[d.index(')')+1:]
    toks=re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])',body)
    def g(t):
        if t.startswith('['): return 'A'
        return 'O' if t.startswith('L') else t
    r=ret
    return (tuple(g(t) for t in toks), 'A' if r.startswith('[') else ('O' if r.startswith('L') else r))
KW=set('''if else for while do switch case default return throw try catch finally new instanceof
this super null true false break continue synchronized static final public private protected class
interface enum extends implements import package int long boolean byte char short float double void
abstract native transient volatile assert yield record var'''.split())
IDENT=re.compile(r'[A-Za-z_$][A-Za-z0-9_$]*')
STR=re.compile(r'"(?:[^"\\]|\\.)*"')
NUM=re.compile(r'\b\d[\w.]*\b')
def norm_tokens(code):
    out=[]
    for m in re.finditer(r'"(?:[^"\\]|\\.)*"|\b\d[\w.]*\b|[A-Za-z_$][A-Za-z0-9_$.]*|.',code):
        t=m.group(0)
        if t.strip()=='' : continue
        if t.startswith('"'): out.append('STR:'+t)
        elif re.match(r'^\d',t): out.append('N:'+t)
        elif re.match(r'^[A-Za-z_$]',t):
            base=t.split('.')[-1]
            if base in KW: out.append(t)
            elif '.' in t and not t.startswith(('v','r','p')): out.append('Q:'+base)
            else: out.append('V')
        elif t in '{}()[];,+-*/%<>=!&|^~?:.': out.append(t)
    return out
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
METH=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|abstract|synchronized|native|default)\s+)*)(?:<[^>]{0,120}>\s+)?([\w$.\[\]<>?,]+)\s+(\w+)\s*\(([^)]*)\)\s*(?:throws\s+[\w$.,\s]+)?\{',re.S)
def methods(block,clsname=None):
    out={}
    depth=[]; d=0
    for ch in block:
        depth.append(d)
        if ch=='{': d+=1
        elif ch=='}': d-=1
    for m in METH.finditer(block):
        if depth[m.start()]!=0: continue
        ret,name,params=m.group(2),m.group(3),m.group(4)
        if name in ('if','for','while','switch','catch','synchronized') or ret in ('new','return'): continue
        if clsname and name==clsname: continue
        if ret==name: continue
        st=m.end()-1; d=0
        for j in range(st,len(block)):
            if block[j]=='{': d+=1
            elif block[j]=='}':
                d-=1
                if d==0:
                    body=block[st+1:j]; break
        else: continue
        pl=[x.strip() for x in re.split(r',(?![^<]*>)',params)] if params.strip() else []
        out.setdefault(name,[]).append((pl,ret,body))
    return out
# 探针类：jadx 输出（文件名不规范，按 class 声明索引）
APPCLS={}
for f in os.listdir(APP):
    if not f.endswith('.java'): continue
    t=open(os.path.join(APP,f),encoding='utf-8',errors='replace').read()
    # 按花括号深度建嵌套类名: Outer$Inner
    stack=[]; depth=0; i=0; n=len(t)
    for m in re.finditer(r'\b(class|interface|enum)\s+(\w+)|\{|\}',t):
        tok=m.group(0)
        if tok=='{':
            depth+=1
        elif tok=='}':
            if stack and stack[-1][0]==depth: stack.pop()
            depth-=1
        else:
            name=m.group(2)
            stack.append((depth+1,name))
            path='$'.join(x[1] for x in stack)
            APPCLS.setdefault('abcd/'+path,t)
props=[];stat=collections.Counter()
for cn,tgt in mp.items():
    t=APPCLS.get(cn)
    if not t: stat['noapp']+=1; continue
    short=cn.split('/')[-1]
    prof=find_class_block(t,short.split('$')[-1])
    if prof is None: stat['noclass']+=1; continue
    # oracle 源文件
    parts=tgt.split('/')
    outer=parts[-1].split('$')[0]
    path=os.path.join(SRC,'/'.join(parts[:-1]),outer+'.java')
    if not os.path.exists(path): stat['nosrc']+=1; continue
    st=open(path,encoding='utf-8',errors='replace').read()
    scl=find_class_block(st,outer)
    if scl is None: stat['nosrccls']+=1; continue
    for inner in parts[-1].split('$')[1:]:
        nb=find_class_block(scl,inner)
        if nb is None: scl=None; break
        scl=nb
    if scl is None: stat['noinner']+=1; continue
    pm=methods(prof,short.split('$')[-1]); om=methods(scl,parts[-1].split('$')[-1])
    taken=used[cn.replace('abcd/','')]
    raw={}
    for l in bd.get(cn.replace('abcd/',''),[[],[]])[1]:
        sp=l[1:].split(' ')
        if len(sp)==3: raw[sp[0]]=sp[1]
    mapped_probe=set(raw)
    for pn,plist in pm.items():
        if pn in mapped_probe: continue
        for arity,ret,body in plist:
            shapes_p={shape_desc(d) for d in PDESC.get(cn,{}).get(pn,[])}
            cands=[]
            for on,olist in om.items():
                if ('m',on) in taken: continue
                for (opl,oret,ob) in olist:
                    if oret=='class': continue
                    sh=shape_java(opl,oret)
                    if shapes_p and sh not in shapes_p: continue
                    cands.append((on,ob,sh))
            if len(cands)<2: continue
            pt=norm_tokens(body)
            if len(pt)<6: stat['tiny']+=1; continue
            scored=[]
            for on,ob,sh in cands:
                ot=norm_tokens(ob)
                if len(ot)<6: continue
                scored.append((difflib.SequenceMatcher(None,pt,ot).ratio(),on,sh))
            if not scored: continue
            scored.sort(reverse=True)
            b=scored[0]; sec=scored[1] if len(scored)>1 else (0,'',None)
            if b[0]>=0.75 and b[0]-sec[0]>=0.10 and b[1]!=pn:
                props.append((cn,pn,b[1],b[0],sec[0],b[2])); stat['ok']+=1
            else: stat['ambig']+=1
print(dict(stat))
for p in props[:25]: print(f'  {p[0]} {p[1]} -> {p[2]}  {p[3]:.2f}/{p[4]:.2f}')
if '--apply' in sys.argv:
    SRC2=HOME+'/src/app_decomp/sources/abcd'
    SM=HOME+'/storage_dummy'
    SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
    IDX={}
    MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
          'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
    for f in os.listdir(SMALI):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SMALI,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
    def rawdesc(cn,pn,newdesc_shape):
        t=IDX.get(cn)
        if not t: return None
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            b2=[x for x in mm.group(1).split() if x not in MODS]
            if b2 and '(' in b2[0] and b2[0][:b2[0].index('(')]==pn:
                d=b2[0][b2[0].index('('):]
                yield d
    n=0
    for cn,pn,new,_,_,shp in props:
        b=bd[cn.replace('abcd/','')]
        if any(l[1:].split(' ')[0]==pn and len(l[1:].split(' '))==3 for l in b[1]): continue
        cands=[d for d in (rawdesc(cn,pn,None) or []) if shape_desc(d)==shp]
        pick=cands[0] if len(cands)==1 else None
        if not pick: continue
        ln='\t%s %s %s'%(pn,pick,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
