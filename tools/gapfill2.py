#!/usr/bin/env python3
"""gapfill2.py [--apply]：多候选成员用方法体证据（字符串常量 + 引用成员对）定名。
仅在 类别质量闸 通过 且 最佳分明显领先次佳 时才采纳。"""
import os,re,sys,zipfile,collections,struct
sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
BLOCK=set()
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
z=zipfile.ZipFile(ORACLE); ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c

def ofeat(cl, code):
    S=set(); R=set(); I=set(); i=0; n=len(code or b'')
    while i<n:
        op=code[i]
        if op==0x12 and i+1<n:
            s=cl['strs'].get(code[i+1])
            if s is not None and s in cl['utf']: S.add(cl['utf'][s])
            i+=2; continue
        if op==0x13 and i+2<n:
            k=int.from_bytes(code[i+1:i+3],'big'); s=cl['strs'].get(k)
            if s is not None and s in cl['utf']: S.add(cl['utf'][s])
            i+=3; continue
        if op==0x10 and i+1<n: I.add(code[i+1] if code[i+1]<128 else code[i+1]-256); i+=2; continue
        if op==0x11 and i+2<n: I.add(int.from_bytes(code[i+1:i+3],'big',signed=True)); i+=3; continue
        if 0x02<=op<=0x08: I.add(op-3); i+=1; continue
        if 0xb2<=op<=0xb9 and i+2<n:
            idx=int.from_bytes(code[i+1:i+3],'big'); rm=cl['refmap'].get(idx)
            if rm: R.add(rm[0]+'->'+rm[1])
            i+=3; continue
        if op==0xaa:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            if base+12>n: break
            lo=int.from_bytes(code[base+4:base+8],'big',signed=True); hi=int.from_bytes(code[base+8:base+12],'big',signed=True)
            i=base+12+4*(hi-lo+1); continue
        if op==0xab:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            if base+8>n: break
            np_=int.from_bytes(code[base+4:base+8],'big',signed=True); i=base+8+8*np_; continue
        if op==0xc4 and i+1<n: i+= 6 if code[i+1]==0x84 else 4; continue
        i+=JB.LEN.get(op,1)
    return S,R,I

SRE=re.compile(r'const-string(?:/jumbo)?\s+v\d+,\s*"((?:[^"\\]|\\.)*)"')
IRE=re.compile(r'const(?:/4|/16)?\s+v\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)')
RRE=re.compile(r'L([A-Za-z0-9_$/$.]+);->([A-Za-z0-9_$<>]+)')
def probe_members():
    out={}
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
        if not m: continue
        cn=m.group(1).split()[-1].rstrip(';').lstrip('L')
        if cn not in mp: continue
        L=[]
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if b and ':' in b[0]:
                n_,d_=b[0].split(':',1); L.append(('f',n_,d_,norm(d_),'static' in tl,'synthetic' in tl,None))
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if not b or '(' not in b[0]: continue
            n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
            body=mm.group(2)
            S={x.replace('\\"','"') for x in SRE.findall(body)}
            R={a+'->'+c for a,c in RRE.findall(body)}
            I={int(x,16) if x.lower().startswith(('0x','-0x')) else int(x) for x in IRE.findall(body)}
            L.append(('m',n_,d_,norm(d_),'static' in tl,'synthetic' in tl or 'bridge' in tl,(S,R,I)))
        out[cn]=L
    return out

def tsrg_state():
    lines=[l for l in open(TSRG).read().split('\n') if l]
    blocks=[];cur=None
    for l in lines:
        if not l.startswith('\t'): cur=[l,[]];blocks.append(cur)
        else: blocks[-1][1].append(l)
    bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
    used=collections.defaultdict(set)
    for k,b in bd.items():
        for l in b[1]:
            s=l[1:].split(' ')
            used[k].add(('f',s[1]) if len(s)==2 else ('m',s[2]))
    return blocks,bd,used

def gate(L,tgt):
    oc=ORC.get(tgt)
    if not oc: return 0.0
    tot=hit=0
    for kind,name,draw,d,fst,syn,_ in L:
        if syn or (kind=='m' and name.startswith('<')): continue
        tot+=1
        if any(m['kind']==kind and m['desc']==d and bool(m['acc']&0x8)==fst for m in oc['members']): hit+=1
    return hit/max(1,tot)

def main(apply=False):
    pm=probe_members(); blocks,bd,used=tsrg_state()
    props=[]; stat=collections.Counter()
    for cn,L in pm.items():
        tgt=mp[cn]
        if cn in BLOCK or tgt not in ORC: continue
        if gate(L,tgt)<0.6: stat['skip_class']+=1; continue
        oc=ORC[tgt]
        taken={(x[0],x[1]) for x in used[cn]}
        for kind,name,draw,d,fst,syn,feat in L:
            if syn or (kind=='m' and name.startswith('<')): continue
            cand=[m for m in oc['members'] if m['kind']==kind and m['desc']==d and bool(m['acc']&0x8)==fst and (kind,m['name']) not in taken]
            if len(cand)<2: continue
            if kind!='m' or not feat: stat['no_evidence']+=1; continue
            S,R,I=feat
            if not S and not R and not I: stat['no_evidence']+=1; continue
            scored=[]
            Rn={x.split('->')[1] for x in R}
            for m in cand:
                So,Ro,Io=ofeat(oc,m['code'])
                Ron={x.split('->')[1] for x in Ro}
                ss=len(S&So)/max(1,len(S)) if S else None
                rr=len(R&Ro)/max(1,len(R)) if R else None
                rn=len(Rn&Ron)/max(1,len(Rn)) if Rn else None
                iv=len(I&Io)/max(1,len(I)) if I else None
                parts=[(x,w) for x,w in ((ss,2),(rr,1),(rn,1),(iv,1)) if x is not None]
                sc=sum(x*w for x,w in parts)/sum(w for _,w in parts)
                scored.append((sc,m['name'],len(S&So),len(Rn&Ron)))
            scored.sort(reverse=True)
            best=scored[0]; second=scored[1] if len(scored)>1 else (0,'',0,0)
            if best[0]>=0.55 and best[0]-second[0]>=0.2:
                props.append((cn,kind,name,draw,d,best[1],best[0],second[0],best[1]!=name)); stat['ok']+=1
            else: stat['ambiguous']+=1
    print(dict(stat))
    for p in props[:20]: print('  ',p[0],p[1],p[2],'->',p[5],f'sc={p[6]:.2f} 次={p[7]:.2f}')
    if apply:
        n=0
        for cn,kind,name,draw,d,new,_,_,chg in props:
            if not chg: continue
            b=bd[cn.replace('abcd/','')]; ln=('\t%s %s %s'%(name,draw,new)) if kind=='m' else ('\t%s %s'%(name,new))
            if b[1].count(ln)==0: b[1].append(ln); n+=1
        out=[]
        for b in blocks: out.append(b[0]); out.extend(b[1])
        open(TSRG,'w').write('\n'.join(out)+'\n')
        print('写入',n)
if __name__=='__main__': main('--apply' in sys.argv)
