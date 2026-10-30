#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""ctorfind.py <探针裸名...>：用构造器描述符(经类映射归一)在全 oracle 里查同签名类"""
import os,re,sys,zipfile
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
idx={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if not c or not c['this']: continue
    idx[c['this']]=c
def probe(name):
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m or m.group(1).split()[-1].rstrip(';').lstrip('L')!='abcd/'+name: continue
        sup=re.search(r'^\.super\s+(\S+?);',t,re.M)
        ct=[]
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            b=[x for x in mm.group(1).split() if x not in MODS]
            if b and b[0].startswith('<init>('): ct.append(norm(b[0][6:]))
        return sup.group(1) if sup else None,ct
    return None,[]
for p in sys.argv[1:]:
    sup,cts=probe(p)
    esup=norm(sup) if sup else None
    if esup: esup=esup[1:] if esup.startswith('L') else esup
    if esup: esup=esup[:-1] if esup.endswith(';') else esup
    print(f'== {p} super={esup} ctors={cts}')
    for cn,c in idx.items():
        cs={mm['desc'] for mm in c['members'] if mm['kind']=='m' and mm['name']=='<init>'}
        if cs & set(cts):
            print(f'    hit {cn}  (sup={c["sup"]})')
