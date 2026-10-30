#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""constctx.py [--apply]：常量字段按「值 + 使用它的方法」定名（值相同则看谁在用、怎么用）"""
import os,re,sys,collections
HOME=os.path.expanduser('~')
APP=HOME+'/src/app_decomp/sources/abcd'; SRC=HOME+'/src/jgit'
SMALI='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
TAB=chr(9)
blocks=[];cur=None
for l in open(_P.TSRG).read().split('\n'):
    if not l: continue
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
m2o=collections.defaultdict(dict); used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        if len(s)==2: used[k].add(('f',s[1]))
        else: m2o[k][s[0]]=s[2]; used[k].add(('m',s[2]))
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
LD=re.compile(r'loaded from:\s*jgit_subset\.jar:(abcd/[A-Za-z0-9_$]+)\.class')
APPCLS={}
for f in os.listdir(APP):
    if not f.endswith('.java'): continue
    t=open(os.path.join(APP,f),encoding='utf-8',errors='replace').read()
    for m in LD.finditer(t): APPCLS.setdefault(m.group(1),(t,m.end()))
METH=re.compile(r'(?:^|\n)\s*((?:(?:public|private|protected|static|final|abstract|synchronized|native|default)\s+)*)(?:<[^>]{0,120}>\s+)?([\w$.\[\]<>?,]+)\s+(\w+)\s*\(([^)]*)\)\s*(?:throws\s+[\w$.,\s]+)?\{',re.S)
CONST=re.compile(r'static\s+final\s+[\w$.\[\]<>?,\s]+\s+(\w+)\s*=\s*([^;]+);')
def methods_of(block,clsname):
    out={}
    for m in METH.finditer(block):
        name=m.group(3)
        if name==clsname or m.group(2)==name: continue
        st=m.end()-1; dd=0
        for j in range(st,len(block)):
            if block[j]=='{': dd+=1
            elif block[j]=='}':
                dd-=1
                if dd==0: out[name]=block[st+1:j]; break
    return out
import ast
def fold(expr, table, depth=0, seen=None):
    if depth>8: return None
    seen=seen or set()
    e=expr.strip().rstrip(';').strip()
    if not e: return None
    if e[0]=='"': return ('S',e.strip('"'))
    # char literal
    if re.fullmatch(r"'(\\.|[^'])'",e):
        c=e[1:-1]
        m={'\\n':10,'\\t':9,"\\'":39,'\\\\':92,'\\0':0,'\\r':13}
        return ('I',m.get(c,ord(c)))
    # 去掉强制类型转换
    e=re.sub(r'\((?:byte|short|int|long|char|float|double)\)','',e)
    e=e.replace('L','').replace('l','')
    # 把已知常量名替换成分值
    def rep(m):
        n=m.group(0)
        if n in seen: return '0'
        v=table.get(n)
        if v is None: return n
        f=fold(v,table,depth+1,seen|{n})
        return str(f[1]) if f and f[0]=='I' else n
    e2=re.sub(r'[A-Za-z_$][A-Za-z0-9_$]*',rep,e)
    if not re.fullmatch(r'[0-9a-fA-FxX+\-*/%()<>|&^~\s]+',e2): return None
    try:
        v=eval(e2,{'__builtins__':{}},{})
        return ('I',int(v))
    except Exception:
        return None
props=[];stat=collections.Counter()
for cn,tgt in mp.items():
    name=cn.replace('abcd/','')
    ent=APPCLS.get(cn)
    if not ent: continue
    t,off=ent; pblk=block_at(t,off)
    if not pblk: continue
    parts=tgt.split('/'); outer=parts[-1].split('$')[0]
    sp=os.path.join(SRC,'/'.join(parts[:-1]),outer+'.java')
    if not os.path.exists(sp): continue
    st=open(sp,encoding='utf-8',errors='replace').read()
    sblk=find_class_block(st,outer)
    if sblk is None: continue
    bad=False
    for inner in parts[-1].split('$')[1:]:
        if inner.isdigit(): bad=True; break
        nb=find_class_block(sblk,inner)
        if nb is None: bad=True; break
        sblk=nb
    if bad or sblk is None: continue
    # 探针常量字段
    pconst={}
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',pblk,re.M) if False else []: pass
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',open(os.path.join(SMALI,cmd:= (cn.split('/')[-1]+'.smali')),'r',encoding='utf-8',errors='replace').read() if os.path.exists(os.path.join(SMALI,cn.split('/')[-1]+'.smali')) else '',re.M):
        pass
    # 直接用 jadx 的常量声明（static final ... = 值;）
    for m in CONST.finditer(pblk):
        pconst[m.group(1)]=m.group(2).strip()
    if not pconst: continue
    smet=methods_of(sblk,parts[-1].split('$')[-1])
    # 源码常量
    sconst={}
    for m in CONST.finditer(sblk):
        sconst[m.group(1)]=m.group(2).strip()
    if not sconst: continue
    pm=methods_of(pblk,cn.split('/')[-1].split('$')[-1])
    for pf,pv in pconst.items():
        if ('f',pf) in used[name]: continue
        pacc=set()
        for mn,body in pm.items():
            if re.search(r'\b'+re.escape(pf)+r'\b',body): pacc.add(m2o[name].get(mn,mn))
        if not pacc: stat['noacc']+=1; continue
        pval=fold(pv,sconst)
        cand=[sf for sf,sv in sconst.items()
              if fold(sv,sconst)==pval and pval is not None and ('f',sf) not in used[name]]
        if not cand: stat['noval']+=1; continue
        scored=[]
        for sf in cand:
            sacc=set(mn for mn,body in smet.items() if re.search(r'\b'+re.escape(sf)+r'\b',body))
            if not sacc: continue
            scored.append((len(pacc&sacc)/max(1,len(pacc|sacc)),sf))
        if not scored: stat['noacc2']+=1; continue
        scored.sort(reverse=True)
        b=scored[0]; sec=scored[1] if len(scored)>1 else (0,'')
        if b[0]>=0.5 and b[0]>sec[0]:
            props.append((cn,pf,b[1],pv,b[0])); stat['ok']+=1
        else: stat['ambig']+=1
print(dict(stat))
for p in props[:15]: print(f'  {p[0]} {p[1]}={p[3]} -> {p[2]}  ({p[4]:.2f})')
