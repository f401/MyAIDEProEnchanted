#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""jgittext.py [--apply]：JGitText 消息键指纹定名
探针读的 JGitText 字段名未被混淆；oracle 方法体里也读同一批键。键集合通常 1-3 个，几乎唯一。"""
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
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
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
def okeys(cn):
    """oracle 类: {(mname,mdesc): set(JGitText 键)}"""
    c=orc(cn); out={}
    if not c: return out
    for m in c['members']:
        if m['kind']!='m' or not m['code']: continue
        K=set(); i=0; code=m['code']; n=len(code)
        guard=0
        while i<n:
            guard+=1
            if guard>200000 or i<0: break
            try: op=code[i]
            except IndexError: break
            if 0xb2<=op<=0xb9 and i+2<n:
                rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
                if rm and rm[0].endswith('/JGitText') and rm[3]==9: K.add(rm[1])
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
        out[(m['name'],m['desc'])]=K
    return out
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
KEY=re.compile(r'Lorg/eclipse/jgit/JGitText;->([A-Za-z0-9_]+):')
props=[];stat=collections.Counter()
for cn in mp:
    t=IDX.get(cn)
    if not t: continue
    tgt=mp[cn]; oc=orc(tgt)
    if not oc: continue
    ok=okeys(tgt)
    taken=used[cn]
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
        if not b or '(' not in b[0]: continue
        rn=b[0][:b[0].index('(')]; rd=norm(b[0][b[0].index('('):])
        if rn.startswith('<'): continue
        if 'synthetic' in tl or 'bridge' in tl: continue
        K=set(KEY.findall(mm.group(2)))
        if not K: continue
        cand=[m for m in oc['members'] if m['kind']=='m' and m['desc']==rd
              and bool(m['acc']&0x8)==('static' in tl) and ('m',m['name']) not in taken]
        if len(cand)<2: 
            stat['lt2']+=1; continue
        scored=[]
        for m in cand:
            Ko=ok.get((m['name'],m['desc']),set())
            inter=len(K&Ko)
            scored.append((inter/len(K), inter, m['name'], len(Ko)))
        scored.sort(reverse=True)
        best=scored[0]; second=scored[1] if len(scored)>1 else (0,0,'',0)
        if best[0]==1.0 and best[1]>=len(K) and best[2]!=rn and best[0]>second[0]:
            props.append((cn,rn,mm.group(1).strip().split()[-1] if False else rd,best[2],tuple(sorted(K)))); stat['ok']+=1
        else: stat['ambig']+=1
print(dict(stat))
for p in props[:20]: print('  ',p[0],p[1],'->',p[3],p[4])
if '--apply' in sys.argv:
    n=0
    for cn,rn,rd,new,K in props:
        b=bd[cn.replace('abcd/','')]
        # 需要原始 desc：从 smali 取
        t=IDX[cn]; raw=None
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            b2=[x for x in mm.group(1).split() if x not in MODS]
            if b2 and '(' in b2[0] and b2[0][:b2[0].index('(')]==rn and norm(b2[0][b2[0].index('('):])==rd:
                raw=b2[0][b2[0].index('('):]; break
        if not raw: continue
        ln='\t%s %s %s'%(rn,raw,new)
        if b[1].count(ln)==0: b[1].append(ln); n+=1
    out=[]
    for b in blocks: out.append(b[0]); out.extend(b[1])
    open(TSRG,'w').write('\n'.join(out)+'\n')
    print('写入',n)
