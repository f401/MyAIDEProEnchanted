#!/usr/bin/env python3
"""typesolve.py [--apply]：阻塞类型求解
证据：(a) 该类型上被调用的方法描述符（可翻译部分）(b) 自身成员形状 (c) super/kind
输出每个阻塞类型的 top 候选与分项得分。"""
import os,re,sys,zipfile,collections,json
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
TOK=re.compile(r'\[*(?:L[^;]+;|[ZBCSIJFD])')
def toks(d): return [t.lstrip('[') for t in TOK.findall(d)]
def shape(d):
    out=[]
    for t in toks(d):
        out.append('O' if t.startswith('L') else t)
    return ','.join(out)
def kind_of(flags):
    if 'annotation' in flags: return 'ann'
    if 'interface' in flags: return 'iface'
    if 'enum' in flags: return 'enum'
    return 'cls'
# 探针索引
IDX={}; KIND={}; SUP={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if not m: continue
    cn=m.group(1).split()[-1].rstrip(';').lstrip('L')
    if cn in IDX: continue
    IDX[cn]=t; KIND[cn]=kind_of(m.group(1).split())
    s=re.search(r'^\.super\s+(\S+?);',t,re.M); SUP[cn]=s.group(1) if s else None
# 被调用/被访问的成员（按 owner 聚合）
CALL=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$<>]+)(\([^)]*\)[^ \n]*|:[^ \n]+)?')
use_m=collections.defaultdict(set); use_f=collections.defaultdict(set)
for cn,t in IDX.items():
    for own,nm,rest in CALL.findall(t):
        if not rest: continue
        if rest.startswith('('): use_m[own].add(norm(rest))
        else: use_f[own].add(norm(rest[1:]))
# 阻塞度：出现在已映射类成员描述的未映射类型
block=collections.Counter()
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    for line in re.finditer(r'^(?:\.field|\.method)\s+([^\n]+)$',t,re.M):
        for ty in re.findall(r'L(abcd/[A-Za-z0-9_$]+);',line.group(1)):
            y=ty.replace('abcd/','')
            if 'abcd/'+y not in mp: block[y]+=1
# oracle
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'); ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
def oinfo(c):
    mds={m['desc'] for m in c['members'] if m['kind']=='m'}
    fds={m['desc'] for m in c['members'] if m['kind']=='f'}
    own={(m['kind'],m['desc'],bool(m['acc']&0x8)) for m in c['members'] if not m['acc']&0x1000}
    return mds,fds,own
OI={cn:oinfo(c) for cn,c in ORC.items()}
def okind(cn):
    raw=z.read(cn+'.class'); import struct
    v=struct.unpack_from('>H',raw,8)[0]  # 不可靠，改从 parse 结果推导
    return None
res=[]
for tn,cnt in block.most_common():
    t=IDX.get('abcd/'+tn)
    if not t: continue
    # 自身成员
    own=set()
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and ':' in b[0] and 'synthetic' not in tl:
            own.add(('f',norm(b[0].split(':',1)[1]),'static' in tl))
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if b and '(' in b[0] and 'synthetic' not in tl and 'bridge' not in tl:
            nm=b[0][:b[0].index('(')]
            if nm.startswith('<'): continue
            own.add(('m',norm(b[0][b[0].index('('):]),'static' in tl))
    inv={d for d in use_m.get(tn,()) if 'Labcd/' not in d}
    invf={d for d in use_f.get(tn,()) if 'Labcd/' not in d}
    if len(inv)+len(invf)+len(own)<3: continue
    sup=SUP.get('abcd/'+tn); esup=None
    if sup:
        y=sup[1:-1] if sup.startswith('L') else sup
        esup=mp.get('abcd/'+y,'abcd/'+y) if y.startswith('abcd/') else y
    kind=KIND.get('abcd/'+tn)
    scored=[]
    for cn,(mds,fds,oown) in OI.items():
        # kind 过滤
        raw=z.read(cn+'.class'); v=int.from_bytes(raw[8:10],'big') if False else None
        cov=0.0; n=0
        if inv:
            cov+=len(inv&mds)/len(inv); n+=1
        if invf:
            cov+=len(invf&fds)/len(invf); n+=1
        cov=cov/max(1,n)
        j=len(own&oown)/max(1,len(own|oown))
        # shape 覆盖
        sh={shape(d) for d in inv}
        osh=mds and {shape(d) for d in mds} or set()
        shc=len(sh&osh)/max(1,len(sh)) if sh else 0
        sc=0.45*cov+0.25*j+0.20*shc
        if esup and ORC[cn]['sup']==esup: sc+=0.10
        scored.append((sc,cov,j,shc,cn))
    scored.sort(reverse=True)
    if scored: res.append((cnt,tn,scored[:3]))
print('候选阻塞类型',len(res),flush=True)
for cnt,tn,c3 in res[:40]:
    print(f'== abcd/{tn} 阻塞 {cnt}')
    for sc,cov,j,shc,cn in c3:
        print(f'     {sc:.2f} (desc {cov:.2f}/own {j:.2f}/shape {shc:.2f})  {cn}')
if '--apply' in sys.argv:
    print('（apply 由 apply_types.py 执行，此处只输出）')
