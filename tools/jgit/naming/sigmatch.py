#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""sigmatch.py [--apply]：泛型 Signature 属性指纹定名（javac 生成的签名两边一致，只是类型名被改）"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
TSRG=_P.TSRG
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L(abcd/[A-Za-z0-9_$]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
TAB=chr(9)
lines=[l for l in open(TSRG).read().split('\n') if l]
blocks=[];cur=None
for l in lines:
    if not l.startswith(TAB): cur=[l,[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        used[k].add(('f',s[1]) if len(s)==2 else ('m',s[2]))
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
STR=re.compile(r'"((?:[^"\\]|\\.)*)"')
props=[];stat=collections.Counter()
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    oc=orc(mp[cn])
    if not oc: continue
    taken=used[cn.replace('abcd/','')] if cn.replace('abcd/','') in bd else set()
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        body=mm.group(2)
        am=re.search(r'\.annotation (?:system|runtime) Ldalvik/annotation/Signature;\s*\n?\s*value = \{(.*?)\}',body,re.S)
        if not am: continue
        sig=''.join(STR.findall(am.group(1))).replace('\\"','"')
        if not sig: continue
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        rn=b[0][:b[0].index('(')]; rawd=b[0][b[0].index('('):]; rd=norm(rawd)
        if rn.startswith('<') or 'synthetic' in tl or 'bridge' in tl: continue
        ps=norm(sig)
        cand=[m for m in oc['members'] if m['kind']=='m' and m['desc']==rd
              and bool(m['acc']&0x8)==('static' in tl) and ('m',m['name']) not in taken]
        if len(cand)<2: stat['lt2']+=1; continue
        hit=[m for m in cand if (m.get('sig') or '')==ps]
        if len(hit)==1 and hit[0]['name']!=rn:
            props.append((cn,rn,rawd,hit[0]['name'],ps)); stat['ok']+=1
        else: stat['ambig']+=1
print(dict(stat))
for p in props[:20]: print('  ',p[0],p[1],'->',p[3])
if '--apply' in sys.argv:
    n=0
    for cn,rn,rawd,new,ps in props:
        b=bd[cn.replace('abcd/','')]
        ln='\t%s %s %s'%(rn,rawd,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
