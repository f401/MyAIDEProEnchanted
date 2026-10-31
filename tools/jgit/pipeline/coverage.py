#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""精确覆盖率：分母 = oracle 成员中在 abcd 类里存在同形对应者的（R8 删掉的不入分母）。
方法分母排除 <init>/<clinit>/ACC_SYNTHETIC/access$NNN/bridge/values/valueOf
字段分母排除 this$0/$assertionsDisabled/serialVersionUID/ACC_SYNTHETIC
输出 ~/out/work/cov_detail.tsv + 终端汇总
"""
import os,re,sys,zipfile,struct,collections
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
MAP=_P.MAP
TSRG=_P.TSRG
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp','enum','mandatory','empty'}
TYPEREF=re.compile(r'L([A-Za-z0-9_$/$.]+);')
CLS=re.compile(r'^\.class[^\n]*?L([^;]+);',re.M)

mp={}
for l in open(MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp[f[0] if '/' in f[0] else 'abcd/'+f[0]]=f[1]
def norm(d): return TYPEREF.sub(lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)

def parse_class(d):
    n=struct.unpack_from('>H',d,8)[0];o=10;i=1;utf={}
    while i<n:
        tag=d[o];o+=1
        if tag==1:
            ln=struct.unpack_from('>H',d,o)[0];utf[i]=d[o+2:o+2+ln].decode('utf-8','replace');o+=2+ln
        elif tag in (7,8,16,19,20): o+=2
        elif tag in (15,): o+=3
        elif tag in (3,4,9,10,11,12,17,18): o+=4
        elif tag in (5,6): o+=8;i+=1
        else: raise ValueError(tag)
        i+=1
    p=o+6; ic=struct.unpack_from('>H',d,p)[0]; p+=2+2*ic
    m=[];f=[]
    for kind in ('f','m'):
        cnt=struct.unpack_from('>H',d,p)[0]; p+=2
        for _ in range(cnt):
            a,nm,ds,ac=struct.unpack_from('>HHHH',d,p); p+=8
            for _ in range(ac):
                ln=struct.unpack_from('>I',d,p+2)[0]; p+=6+ln
            (f if kind=='f' else m).append((utf[nm],utf[ds],a))
    return m,f

def smali_members(t):
    meth=[];fld=[]
    for m in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        toks=m.group(1).split(); b=None
        for x in toks:
            if x not in MODS: b=x;break
        if not b or '(' not in b: continue
        meth.append((b[:b.index('(')],b[b.index('('):],'static' in toks,'synthetic' in toks or 'bridge' in toks))
    for m in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        toks=m.group(1).split(); b=None
        for x in toks:
            if x not in MODS: b=x;break
        if not b or ':' not in b: continue
        n,ds=b.split(':',1)
        fld.append((n,ds,'static' in toks,'synthetic' in toks))
    return meth,fld

# tsrg
mmap={};fmap={}
cur=None
for l in open(TSRG):
    l=l.rstrip('\n')
    if not l: continue
    if not l.startswith('\t'):
        cur=l.split()[0]; continue
    s=l[1:].split(' ')
    if len(s)==2: fmap[(cur,s[0])]=s[1]
    elif len(s)>=3: mmap[(cur,s[0],norm(s[1]))]=s[2]

# 分母只用 3.7.1（R8 是否删掉以它为参照）；命中判定放宽到"任一 oracle 版本里有"，
# 因为 AIDE 的 jgit 是 3.7~4.x 的混合版，222 条"版本差异"其实是真名（见 verify_allow.tsv）。
ORACLE_DIR=HOME+'/out/oracle/jgit'
EXTRA_JARS=['j-4.0.0.201506090130-r.jar','j-4.2.0.201601211800-r.jar',
            'j-4.4.1.201607150455-r.jar','j-4.5.0.201609210915-r.jar',
            'j-4.5.7.201904151645-r.jar','j-4.9.10.201904181027-r.jar',
            'j-4.10.0.201712302008-r.jar','j-4.11.9.201909030838-r.jar',
            'org.eclipse.jgit-5.6.1.202002131546-r.jar',
            'org.eclipse.jgit-5.13.3.202401111512-r.jar']
ZEX=[zipfile.ZipFile(ORACLE_DIR+'/'+n) for n in EXTRA_JARS if os.path.exists(ORACLE_DIR+'/'+n)]
_extra={}
def extra_of(new):
    """→ (方法 {(name,desc)}, 字段 {name})：只来自非 3.7.1 的 oracle 版本。"""
    if new in _extra: return _extra[new]
    em=set(); ef=set()
    for _z in ZEX:
        try: d=_z.read(new+'.class')
        except KeyError: continue
        a,b=parse_class(d)
        em |= {(x[0],x[1]) for x in a}
        ef |= {x[0] for x in b}
    _extra[new]=(em,ef)
    return em,ef

z=zipfile.ZipFile(ORACLE)
onames={n[:-6] for n in z.namelist() if n.endswith('.class')}
tm=tf=hm=hf=0; rows=[]; miss=[]; missd=[]
nopair_m=nopair_f=0
for path in sorted(os.listdir(SRC)):
    if not path.endswith('.smali'): continue
    t=open(os.path.join(SRC,path),encoding='utf-8',errors='replace').read()
    m0=CLS.search(t,0)
    if not m0: continue
    old=m0.group(1)
    if old not in mp: continue
    new=mp[old]
    if new not in onames:
        print('!! oracle 缺类',new); continue
    om,of=parse_class(z.read(new+'.class'))
    pme,pfl=smali_members(t)
    pms={}
    for nm,ds,st,sy in pme: pms.setdefault((norm(ds),st),[]).append((nm,sy))
    pfs={}
    for nm,ds,st,sy in pfl: pfs.setdefault((norm(ds),st),[]).append((nm,sy))
    ctm=ctf=chm=chf=0
    for nm,ds,acc in om:
        if nm in ('<init>','<clinit>'): continue
        if acc&0x1000 or acc&0x40: continue
        if nm in ('values','valueOf'): continue
        st=bool(acc&0x8)
        cands=[pn for pn,sy in pms.get((ds,st),[]) if not sy]
        if not cands:
            nopair_m+=1; continue
        tm+=1; ctm+=1
        em,_ef=extra_of(new)
        if any((mmap.get((old,pn,ds),pn)==nm) or ((mmap.get((old,pn,ds),pn),ds) in em)
               for pn in cands):
            hm+=1; chm+=1
        else:
            missd.append((old,new,'m',nm,ds,','.join('%s=>%s'%(pn,mmap.get((old,pn,ds),pn)) for pn in cands)))
    for nm,ds,acc in of:
        if acc&0x1000: continue
        if nm in ('this$0','$assertionsDisabled','serialVersionUID'): continue
        st=bool(acc&0x8)
        cands=[pn for pn,sy in pfs.get((ds,st),[]) if not sy]
        if not cands:
            nopair_f+=1; continue
        tf+=1; ctf+=1
        _em,ef=extra_of(new)
        if any((fmap.get((old,pn),pn)==nm) or (fmap.get((old,pn),pn) in ef) for pn in cands):
            hf+=1; chf+=1
        else:
            missd.append((old,new,'f',nm,ds,','.join('%s=>%s'%(pn,fmap.get((old,pn),pn)) for pn in cands)))
    # 反查：tsrg 里已映射但不在分母（可能错了/重复）的条目
    rows.append((old,new,chm,ctm,chf,ctf))
    if chm<ctm or chf<ctf: miss.append((old,new,ctm-chm,ctf-chf))

print(f'方法 {hm}/{tm} = {100*hm/max(1,tm):.1f}%   字段 {hf}/{tf} = {100*hf/max(1,tf):.1f}%')
print(f'（因 R8 删除/无同形对应而未入分母：方法 {nopair_m} 条，字段 {nopair_f} 条）')
print(f'类数 {len(rows)}；完全覆盖类 {sum(1 for r in rows if r[2]==r[3] and r[4]==r[5])}')
with open(HOME+'/out/work/cov_miss.tsv','w') as w:
    w.write('probe\ttarget\tkind\toracleName\tdesc\tprobeCandidates\n')
    for r in missd: w.write('\t'.join(map(str,r))+'\n')
print('未命中明细 %d 条 -> ~/out/work/cov_miss.tsv' % len(missd))
with open(HOME+'/out/work/cov_detail.tsv','w') as w:
    w.write('abcd\tjgit\t方法命中\t方法分母\t字段命中\t字段分母\n')
    for r in rows: w.write('\t'.join(map(str,r))+'\n')
