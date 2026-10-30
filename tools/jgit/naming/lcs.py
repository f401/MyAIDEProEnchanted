#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""lcs.py [--apply]：指令级语义序列比对（invoke/字段/字符串/new），用 difflib 相似度破重载歧义"""
import os,re,sys,zipfile,collections,difflib
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
def oseq(c,m):
    out=[];i=0;code=m['code'] or b'';n=len(code)
    while i<n:
        op=code[i]
        if 0xb2<=op<=0xb5:
            rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
            if rm: out.append('F:%s.%s'%(rm[0].split('/')[-1],rm[1]))
            i+=3;continue
        if 0xb6<=op<=0xb9:
            rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
            if rm: out.append('C:%s.%s'%(rm[0].split('/')[-1],rm[1]))
            i+=3;continue
        if op==0x12 and i+1<n:
            s=c['strs'].get(code[i+1])
            if s is not None: out.append('S:'+str(c['utf'].get(s))[:24])
            i+=2;continue
        if op==0x13 and i+2<n:
            s=c['strs'].get(int.from_bytes(code[i+1:i+3],'big'))
            if s is not None: out.append('S:'+str(c['utf'].get(s))[:24])
            i+=3;continue
        if op==0xbb and i+2<n:
            i+=3;continue
        if op==0xaa:
            pad=(4-((i+1)%4))%4;base=i+1+pad
            lo=int.from_bytes(code[base+4:base+8],'big',signed=True);hi=int.from_bytes(code[base+8:base+12],'big',signed=True)
            i=base+12+4*(hi-lo+1);continue
        if op==0xab:
            pad=(4-((i+1)%4))%4;base=i+1+pad
            np_=int.from_bytes(code[base+4:base+8],'big',signed=True);i=base+8+8*np_;continue
        if op==0xc4 and i+1<n: i+= 6 if code[i+1]==0x84 else 4; continue
        i+=JB.LEN.get(op,1)
    return out
PREF=re.compile(r'^(invoke-\S+|iget\S*|iput\S*|sget\S*|sput\S*|new-instance|const-string\S*)\s+(.*)$')
REF2=re.compile(r'L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$<>]+)(:\S+)?')
def pseq(body):
    out=[]
    for line in body.split('\n'):
        s=line.strip()
        m=PREF.match(s)
        if not m: continue
        op,rest=m.group(1),m.group(2)
        mm=REF2.search(rest)
        if op.startswith('invoke') and mm and mm.group(3) is None:
            out.append('C:%s.%s'%(mm.group(1).split('/')[-1],mm.group(2)))
        elif (op.startswith(('iget','iput','sget','sput'))) and mm:
            out.append('F:%s.%s'%(mm.group(1).split('/')[-1],mm.group(2)))
        elif op.startswith('new-instance') and mm:
            out.append('N:'+mm.group(1).split('/')[-1])
        elif op.startswith('const-string'):
            v=re.search(r'"((?:[^"\\]|\\.)*)"',rest)
            if v: out.append('S:'+v.group(1)[:24])
    return out
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
props=[];stat=collections.Counter()
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    oc=orc(mp[cn])
    if not oc: continue
    taken=used[cn.replace('abcd/','')]
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        rn=b[0][:b[0].index('(')]; rawd=b[0][b[0].index('('):]; rd=norm(rawd)
        if rn.startswith('<') or 'synthetic' in tl or 'bridge' in tl: continue
        cand=[m for m in oc['members'] if m['kind']=='m' and m['desc']==rd
              and bool(m['acc']&0x8)==('static' in tl) and ('m',m['name']) not in taken]
        if len(cand)<2: continue
        ps=pseq(mm.group(2))
        if len(ps)<2: stat['nosig']+=1; continue
        scored=[]
        for m in cand:
            os_=oseq(oc,m)
            if len(os_)<2: continue
            r=difflib.SequenceMatcher(None,ps,os_).ratio()
            scored.append((r,m['name']))
        if not scored: stat['nocand']+=1; continue
        scored.sort(reverse=True)
        best=scored[0]; second=scored[1] if len(scored)>1 else (0,'')
        if best[0]>=0.70 and best[0]-second[0]>=0.15 and best[1]!=rn:
            props.append((cn,rn,rawd,best[1],best[0],second[0])); stat['ok']+=1
        else: stat['ambig']+=1
print(dict(stat))
for p in props[:20]: print(f'  {p[0]} {p[1]} -> {p[3]}  {p[4]:.2f}/{p[5]:.2f}')
if '--apply' in sys.argv:
    n=0
    for cn,rn,rawd,new,_,_ in props:
        b=bd[cn.replace('abcd/','')]; ln='\t%s %s %s'%(rn,rawd,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
