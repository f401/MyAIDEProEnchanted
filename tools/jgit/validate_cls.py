#!/usr/bin/env python3
"""validate_cls.py <probe...>：对已加映射的类做「成员配对率 + super/iface 一致性」体检"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
def tonly(x):
    y=x.lstrip('[')
    if y.startswith('L'): y=y[1:]
    if y.endswith(';'): y=y[:-1]
    return mp.get(y,y)
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
for cn in sys.argv[1:]:
    tgt=mp.get('abcd/'+cn); t=IDX.get('abcd/'+cn)
    if not t or not tgt: print(cn,'缺',bool(t),bool(tgt)); continue
    try: oc=JB.parse(z.read(tgt+'.class'))
    except KeyError: print(cn,'oracle 缺类'); continue
    sup=re.search(r'^\.super\s+(\S+?);',t,re.M); ifs=re.findall(r'^\.implements\s+(\S+?);',t,re.M)
    esup=tonly(sup.group(1)) if sup else None
    tot=hit=0
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0] and 'synthetic' not in tl:
            n_,d_=b[0].split(':',1); dd=norm(d_); st='static' in tl
            tot+=1
            if any(m['kind']=='f' and m['desc']==dd and bool(m['acc']&0x8)==st for m in oc['members']): hit+=1
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0] and 'synthetic' not in tl and 'bridge' not in tl:
            n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
            if n_.startswith('<'): continue
            dd=norm(d_); st='static' in tl
            tot+=1
            if any(m['kind']=='m' and m['desc']==dd and bool(m['acc']&0x8)==st for m in oc['members']): hit+=1
    supok=(esup==oc['sup']) if esup else None
    ifok=set(tonly(x) for x in ifs)<=set(oc['ifaces'])
    print(f'  {cn:10s} -> {tgt:52s} 配对 {hit}/{tot} = {hit/max(1,tot):.2f}  super={supok} iface={ifok}  ({esup} vs {oc["sup"]})')
