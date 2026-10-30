#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""gapfill.py [--apply]：唯一签名补名（探针成员在 oracle 目标类里同 desc+static 唯一，且未被占用）"""
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
z=zipfile.ZipFile(ORACLE); ORC={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: ORC[c['this']]=c
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
                n_,d_=b[0].split(':',1); L.append(('f',n_,d_,norm(d_),'static' in tl,'synthetic' in tl))
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if b and '(' in b[0]:
                n_=b[0][:b[0].index('(')]; d_=b[0][b[0].index('('):]
                L.append(('m',n_,d_,norm(d_),'static' in tl,'synthetic' in tl or 'bridge' in tl))
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
            if len(s)==2: used[k].add(('f',s[1]))
            else: used[k].add(('m',s[2]))
    return blocks,bd,used
BLOCK={'cC$a','XG$b','nH$d','gE$a','AI$b','pF','HI'}
def gate(cn,L,tgt):
    """类别质量闸：该类探针成员里能按 desc+static 配上 oracle 的比例"""
    oc=ORC.get(tgt)
    if not oc: return 0.0
    tot=hit=0
    for kind,name,draw,d,fst,syn in L:
        if syn or (kind=='m' and name.startswith('<')): continue
        tot+=1
        if any(m['kind']==kind and m['desc']==d and bool(m['acc']&0x8)==fst for m in oc['members']): hit+=1
    return hit/max(1,tot)
def main(apply=False):
    pm=probe_members(); blocks,bd,used=tsrg_state()
    props=[];stat=collections.Counter()
    for cn,L in pm.items():
        tgt=mp[cn]
        if tgt not in ORC: continue
        if cn in BLOCK or gate(cn,L,tgt)<0.6: stat['skip_class']+=1; continue
        oc=ORC[tgt]
        for kind,name,draw,d,fst,syn in L:
            if syn or (kind=='m' and name.startswith('<')): continue
            if (kind,name) in used[cn] or (kind,name) in [(k[0],k[1]) for k in []]: pass
            cand=[m for m in oc['members'] if m['kind']==kind and ((m['desc']==d) if kind=='m' else (m['desc']==d)) and bool(m['acc']&0x8)==fst]
            if kind=='f': cand=[m for m in oc['members'] if m['kind']=='f' and m['desc']==d and bool(m['acc']&0x8)==fst]
            taken={(x[0],x[1]) for x in used[cn]}
            cand=[m for m in cand if (kind,m['name']) not in taken]
            if len(cand)==1:
                new=cand[0]['name']
                if new!=name:
                    props.append((cn,tgt,kind,name,draw,d,new)); stat['uniq']+=1
            elif len(cand)>1: stat['multi']+=1
            else: stat['none']+=1
    print('唯一签名可补:',stat['uniq'],'多候选:',stat['multi'],'无候选:',stat['none'])
    for p in props[:25]: print('  ',p[0],p[2],p[3],'->',p[6],p[5][:60])
    if apply:
        for cn,tgt,kind,name,draw,d,new in props:
            ln=('\t%s %s %s'%(name,draw,new)) if kind=='m' else ('\t%s %s'%(name,new))
            b=bd[cn.replace('abcd/','')]
            if b[1].count(ln)==0: b[1].append(ln)
        out=[]
        for b in blocks: out.append(b[0]); out.extend(b[1])
        open(TSRG,'w').write('\n'.join(out)+'\n')
        print('已写入',len(props))
if __name__=='__main__':
    main('--apply' in sys.argv)
