#!/usr/bin/env python3
"""keyclass.py [--apply]：用「类级 JGitText 键集合」识别未映射的 jgit 类（键名未被混淆，与描述符无关）"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'),t)
KEY=re.compile(r'Lorg/eclipse/jgit/JGitText;->([A-Za-z0-9_]+):')
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
def ckeys_orc(c):
    K=set()
    for m in c['members']:
        if m['kind']!='m' or not m['code']: continue
        i=0;code=m['code'];n=len(code)
        while i<n:
            if i<0 or i>=n: break
            op=code[i]
            if 0xb2<=op<=0xb9 and i+2<n:
                rm=c['refmap'].get(int.from_bytes(code[i+1:i+3],'big'))
                if rm and rm[0].endswith('/JGitText') and rm[3]==9: K.add(rm[1])
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
    return K
OK={cn:ckeys_orc(c) for cn,c in ORC.items()}
MANY=set(mp.values())
props=[];stat=collections.Counter()
for cn,t in IDX.items():
    if cn in mp: continue
    K=set(KEY.findall(t))
    if len(K)<2: continue
    scored=[]
    for on,Ko in OK.items():
        if on in MANY or not Ko: continue
        inter=len(K&Ko)
        if inter==0: continue
        scored.append((inter/len(K), inter/len(Ko), inter, on))
    if not scored: stat['nocand']+=1; continue
    scored.sort(reverse=True)
    b=scored[0]; sec=scored[1] if len(scored)>1 else (0,0,0,'')
    if b[0]>=0.6 and b[2]>=2 and b[0]-sec[0]>=0.2:
        props.append((cn,b[3],b[0],b[2],len(K))); stat['ok']+=1
    else: stat['ambig']+=1
print(dict(stat))
for p in props[:30]: print(f'  abcd/{p[0]}  ->  {p[1]}  键覆盖 {p[2]:.2f} ({p[3]}/{p[4]})')
if '--apply' in sys.argv:
    TSV=HOME+'/out/work/jgit_map_clean.tsv'
    rows=[l.rstrip('\n').split('\t') for l in open(TSV) if l.strip()]
    rows=[r for r in rows if r[0]!='abcd_class']
    d={r[0]:r for r in rows}
    n=0
    for cn,on,cov,inter,tot in props:
        o=cn.replace('abcd/','')
        if o in d: continue
        if on in MANY: continue
        rows.append([o,on,'keyclass:类级 JGitText 键覆盖 %.2f (%d/%d)'%(cov,inter,tot)]); MANY.add(on); n+=1
    rows.sort(key=lambda r:r[0])
    open(TSV,'w').write('\n'.join('\t'.join(r) for r in rows)+'\n')
    print('写入类映射',n)
