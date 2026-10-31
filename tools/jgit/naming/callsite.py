#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""callsite.py：调用点对齐。探针成员 m 在已映射方法里被调用；把调用者翻成 oracle 方法，
看这些调用者在 oracle 里真正引用的是哪个候选（同 desc/static）。"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(_P.MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp[f[0] if '/' in f[0] else 'abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
TAB=chr(9)
lines=[l for l in open(_P.TSRG).read().split('\n') if l]
blocks=[];cur=None
for l in lines:
    if not l.startswith(TAB): cur=[l.split()[0].replace('abcd/',''),[]];blocks.append(cur)
    else: blocks[-1][1].append(l)
bd={b[0]:b for b in blocks}
m2o=collections.defaultdict(dict); used=collections.defaultdict(set)
for k,b in bd.items():
    for l in b[1]:
        s=l[1:].split(' ')
        if len(s)==2: used[k].add(('f',s[1]))
        else: m2o[k][(s[0],norm(s[1]))]=s[2]; used[k].add(('m',s[2]))
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'); ORC={}
def orc(n):
    if n not in ORC:
        try: ORC[n]=JB.parse(z.read(n+'.class'))
        except KeyError: ORC[n]=None
    return ORC[n]
OREF={}
deforefs=None
def refs_of(cn):
    if cn in OREF: return OREF[cn]
    c=orc(cn); out={}
    if c:
        for m in c['members']:
            if m['kind']!='m' or not m['code']: continue
            S=set(); i=0; code=m['code']; n=len(code)
            while i<n:
                op=code[i]
                if 0xb2<=op<=0xb9 and i+2<n:
                    rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
                    if rm: S.add((rm[0],rm[1],rm[2]))
                    i+=3; continue
                if op==0xaa:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    lo=int.from_bytes(code[base+4:base+8],'big',signed=True); hi=int.from_bytes(code[base+8:base+12],'big',signed=True)
                    i=base+12+4*(hi-lo+1); continue
                if op==0xab:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    np_=int.from_bytes(code[base+4:base+8],'big',signed=True); i=base+8+8*np_; continue
                if op==0xc4 and i+1<n: i+= 6 if code[i+1]==0x84 else 4; continue
                i+=JB.LEN.get(op,1)
            out[(m['name'],m['desc'])]=S
    OREF[cn]=out; return out
REF=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ ]*|:[^ \n]+)?')
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
sites=collections.defaultdict(set)
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        rn=b[0][:b[0].index('(')]; rd=norm(b[0][b[0].index('('):])
        cb=m2o[cn].get((rn,rd))
        if not cb or cb.startswith('<'): continue
        for own,nm,rest in REF.findall(mm.group(2)):
            if not rest: continue
            oc=mp.get('abcd/'+own)
            if not oc: continue
            if rest.startswith('('):
                key=(oc,nm,'m',norm(rest))
            else:
                key=(oc,nm,'f',norm(rest[1:]))
            sites[key].add((mp[cn],cb,rd))
props=[];stat=collections.Counter()
for (oc,rawname,kind,desc),callers in sites.items():
    c=orc(oc)
    if not c: continue
    cand=[m for m in c['members'] if m['kind']==kind and m['desc']==desc and (kind,m['name']) not in used[oc]]
    if len(cand)<2: continue
    cnt=collections.Counter(); tot=0
    for (cl,meth,md) in callers:
        S=refs_of(cl).get((meth,md))
        if S is None: continue
        tot+=1
        for (o2,n2,d2) in S:
            if o2==oc and d2==desc: cnt[n2]+=1
    if tot==0 or not cnt: stat['noevidence']+=1; continue
    best=cnt.most_common(2)
    if best[0][1]>=max(1,int(0.7*tot)) and (len(best)==1 or best[0][1]>best[1][1]):
        props.append((oc,rawname,kind,desc,best[0][0],best[0][1],tot)); stat['ok']+=1
    else: stat['ambig']+=1
print(dict(stat))
for p in props[:18]: print('  ',p[0].split('/')[-1],p[1],p[2],'->',p[4],f'({p[5]}/{p[6]})')
# --apply 未实现：当前瓶颈见 docs/JGIT-MAPPING-QC.md（候选数为 0 而非多候选）
if '--apply' in sys.argv:
    print('callsite.py 目前只做判定输出，写入请用 apply_types/add_members')
