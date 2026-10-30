#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""inner_cmp.py <父oracle类名> <探针裸名> [探针裸名...]
打印父类的所有命名内部类指纹 + 指定探针指纹（字段数/字段类型/方法签名）"""
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
names=[n[:-6] for n in z.namelist() if n.endswith('.class')]
def fp_orc(n):
    c=JB.parse(z.read(n+'.class'))
    fs=[(m['name'],m['desc']) for m in c['members'] if m['kind']=='f']
    ms=[(m['name'],m['desc']) for m in c['members'] if m['kind']=='m']
    return fs,ms
def fp_probe(name):
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m or m.group(1).split()[-1].rstrip(';').lstrip('L')!='abcd/'+name: continue
        fs=[];ms=[]
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            b=[x for x in mm.group(1).split() if x not in MODS]
            if b and ':' in b[0]:
                n_,d_=b[0].split(':',1); fs.append((n_,norm(d_)))
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            b=[x for x in mm.group(1).split() if x not in MODS]
            if b and '(' in b[0]: ms.append((b[0][:b[0].index('(')],norm(b[0][b[0].index('('):])))
        return fs,ms
    return None
parent=sys.argv[1]
pre=parent+'$'
print('== 父类内部类:')
for n in names:
    if n.startswith(pre):
        fs,ms=fp_orc(n)
        print(f'  {n.split("$",parent.count("$")+1)[-1]:26s} F={[d for _,d in fs]} M={[d for _,d in ms][:8]}')
for p in sys.argv[2:]:
    r=fp_probe(p)
    if not r: print('  probe',p,'缺失'); continue
    fs,ms=r
    print(f'== probe {p}: F={[d for _,d in fs]} M={[d for _,d in ms]}')
