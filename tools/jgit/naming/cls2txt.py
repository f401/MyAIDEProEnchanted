#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""clt2txt.py <probe裸名> [oracle类名...]  打印探针与候选的成员/常量对照"""
import os,re,sys,zipfile
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
TYPEREF=re.compile(r'L([A-Za-z0-9_$/$.]+);')
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp[f[0] if '/' in f[0] else 'abcd/'+f[0]]=f[1]
def norm(d): return TYPEREF.sub(lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
z=zipfile.ZipFile(ORACLE)
def probe(name):
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m: continue
        d=m.group(1).split()[-1].rstrip(';').lstrip('L')
        if d!='abcd/'+name: continue
        print(f'== probe abcd/{name}  ({f})')
        print('  ',m.group(1).strip())
        for x in re.findall(r'^\.super\s+(\S+);?',t,re.M): print('   super',norm(x))
        for x in re.findall(r'^\.implements\s+(\S+);?',t,re.M): print('   iface',norm(x))
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if b and ':' in b[0]:
                n,ds=b[0].split(':',1); print('   F',n,norm(ds),' '.join(x for x in tl if x in MODS))
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if not b or '(' not in b[0]: continue
            nm=b[0][:b[0].index('(')]; ds=b[0][b[0].index('('):]
            strs=sorted(set(re.findall(r'const-string(?:/jumbo)?\s+v\d+,\s*"((?:[^"\\]|\\.)*)"',mm.group(2))))
            s=(' strs='+repr(strs[:4])) if strs else ''
            print('   M',nm,norm(ds),' '.join(x for x in tl if x in MODS),s)
        return
    print('!! 找不到探针',name)
def orc(name):
    try: raw=z.read(name+'.class')
    except KeyError: print('!! oracle 缺类',name); return
    c=JB.parse(raw)
    import struct
    v=struct.unpack_from('>H',raw,c['acc_off'])[0]
    fl=[]
    for x in (0x2000,'ann'),(0x200,'iface'),(0x4000,'enum'),(0x400,'abstract'):
        if v&x[0]: fl.append(x[1])
    print(f'== oracle {name} {fl} super={c["sup"]} ifaces={c["ifaces"]}')
    for m in c['members']:
        if m['kind']=='f': print('   F',m['name'],m['desc'],hex(m['acc']))
        else: print('   M',m['name'],m['desc'],hex(m['acc']))
if __name__=='__main__':
    probe(sys.argv[1])
    for a in sys.argv[2:]: orc(a)
