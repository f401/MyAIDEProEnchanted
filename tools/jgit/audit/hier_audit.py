#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""层级一致性审计：探针 super/ifaces 的映射目标 必须 == oracle 目标的 super/ifaces"""
import os,re,sys,zipfile
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
MAP=_P.MAP
mp={}
for l in open(MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
z=zipfile.ZipFile(ORACLE)
on={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: on[c['this']]=c
def tr(x):
    if x is None: return None
    y=x.lstrip('[')
    if y.startswith('L'): y=y[1:]
    if y.endswith(';'): y=y[:-1]
    return mp.get(y,y)
def probe_hier():
    out={}
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m: continue
        d=m.group(1).split()[-1].rstrip(';').lstrip('L')
        s=re.search(r'^\.super\s+(\S+?);',t,re.M)
        i=re.findall(r'^\.implements\s+(\S+?);',t,re.M)
        out[d]=(s.group(1) if s else None,i,f)
    return out
ph=probe_hier()
bad=[]
for p,(sup,ifs,f) in ph.items():
    t=mp.get(p)
    if not t or t not in on: continue
    o=on[t]
    es=tr(sup)
    if es and o['sup'] and es!=o['sup']:
        bad.append((p,t,'super',es,o['sup']))
    eif={tr(x) for x in ifs}
    oif=set(o['ifaces'])
    if eif and not (eif<=oif):
        bad.append((p,t,'iface',sorted(eif-oif),sorted(oif)))
print('层级冲突',len(bad))
for b in bad: print(' ',b[0],'->',b[1],b[2],'probe:',b[3],'oracle:',b[4])
