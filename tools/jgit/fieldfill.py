#!/usr/bin/env python3
"""fieldfill.py [--apply]：多候选字段用「访问者方法集合」定名。
探针侧：本类方法里 iget/iput/sget/sput 自己的字段；oracle 侧：refmap(tag=9)。
访问者按已映射的方法名翻译后比 Jaccard。"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp'}
mp={}
for l in open(HOME+'/out/work/jgit_map_clean.tsv'):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
z=zipfile.ZipFile(ORACLE); ORC={}
def orc(name):
    if name not in ORC:
        try: ORC[name]=JB.parse(z.read(name+'.class'))
        except KeyError: ORC[name]=None
    return ORC[name]
IDX={}
for f in os.listdir(SRC):
    if not f.endswith('.smali'): continue
    t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
    m=re.search(r'^\.class\s+([^\n]+)$',t,re.M)
    if m: IDX.setdefault(m.group(1).split()[-1].rstrip(';').lstrip('L'), t)
print('探针索引',len(IDX),flush=True)
def tsrg_state():
    lines=[l for l in open(TSRG).read().split('\n') if l]
    blocks=[];cur=None
    for l in lines:
        if not l.startswith('\t'): cur=[l,[]];blocks.append(cur)
        else: blocks[-1][1].append(l)
    bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
    used=collections.defaultdict(set); mnames={}
    for k,b in bd.items():
        for l in b[1]:
            s=l[1:].split(' ')
            if len(s)==2: used[k].add(('f',s[1]))
            else:
                used[k].add(('m',s[2]))
                mnames[(k,s[0],norm(s[1]))]=s[2]
    return blocks,bd,used,mnames
FIELDREF=re.compile(r'Labcd/([A-Za-z0-9_$]+);->([A-Za-z0-9_$]+):')
def probe_state(cn):
    t=IDX.get('abcd/'+cn)
    if t is None: return None,None
    if True:
        fields={};acc=collections.defaultdict(set)
        for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if b and ':' in b[0]:
                n_,d_=b[0].split(':',1); fields[n_]=dict(desc=norm(d_),static='static' in tl,syn='synthetic' in tl)
        methods={}
        for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
            tl=mm.group(1).split(); b=[x for x in tl if x not in MODS]
            if not b or '(' not in b[0]: continue
            n_=b[0][:b[0].index('(')]; d_=norm(b[0][b[0].index('('):])
            methods[(n_,d_)]=mm.group(2)
        for (n_,d_),body in methods.items():
            for own,fld in FIELDREF.findall(body):
                if own==cn and fld in fields: acc[fld].add((n_,d_))
        return fields,acc
def main(apply=False):
    blocks,bd,used,mnames=tsrg_state()
    props=[];stat=collections.Counter()
    for cn in list(mp):
        fields,acc=probe_state(cn)
        if not fields: continue
        tgt=mp[cn]
        oc=orc(tgt)
        if not oc: continue
        ofields={m['name']:m for m in oc['members'] if m['kind']=='f'}
        if not ofields: continue
        # oracle 字段访问者
        oacc=collections.defaultdict(set)
        for m in oc['members']:
            if m['kind']!='m' or not m['code']: continue
            i=0; code=m['code']; n=len(code)
            while i<n:
                op=code[i]
                L=JB.LEN.get(op,1)
                if op in (0xb2,0xb3,0xb4,0xb5) and i+2<n:
                    idx=int.from_bytes(code[i+1:i+3],'big'); rm=oc['refmap'].get(idx)
                    if rm and rm[0]==tgt and rm[3]==9: oacc[rm[1]].add(m['name'])
                    i+=3; continue
                if op==0xaa:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    lo=int.from_bytes(code[base+4:base+8],'big',signed=True); hi=int.from_bytes(code[base+8:base+12],'big',signed=True)
                    i=base+12+4*(hi-lo+1); continue
                if op==0xab:
                    pad=(4-((i+1)%4))%4; base=i+1+pad
                    np_=int.from_bytes(code[base+4:base+8],'big',signed=True); i=base+8+8*np_; continue
                if op==0xc4 and i+1<n: i+= 6 if code[i+1]==0x84 else 4; continue
                i+=L
        taken={(x[0],x[1]) for x in used[cn]}
        for fname,f in fields.items():
            if f['syn'] or ('f',fname) in taken: continue
            cand=[m for m in oc['members'] if m['kind']=='f' and m['desc']==f['desc'] and bool(m['acc']&0x8)==f['static'] and ('f',m['name']) not in taken]
            if len(cand)<2: continue
            ps={(mnames.get((cn,a,b),a)) for a,b in acc.get(fname,set())}
            if len(ps)<2 and not acc.get(fname): stat['no_acc']+=1; continue
            scored=[]
            for m in cand:
                os_=oacc.get(m['name'],set())
                j=len(ps&os_)/max(1,len(ps|os_)) if (ps or os_) else 0.0
                scored.append((j,m['name'],len(os_)))
            scored.sort(reverse=True)
            best,second=scored[0],(scored[1] if len(scored)>1 else (0,'',0))
            if best[0]>=0.65 and best[0]-second[0]>=0.3:
                props.append((cn,fname,f['desc'],best[1],best[0],second[0])); stat['ok']+=1
            else: stat['ambig']+=1
    print(dict(stat))
    for p in props[:25]: print('  ',p[0],p[1],p[2][:34],'->',p[3],f'{p[4]:.2f}/{p[5]:.2f}')
    if apply:
        n=0
        for cn,fname,desc,new,_,_ in props:
            b=bd[cn]; ln='\t%s %s'%(fname,new)
            if b[1].count(ln)==0: b[1].append(ln); n+=1
        out=[]
        for b in blocks: out.append(b[0]); out.extend(b[1])
        open(TSRG,'w').write('\n'.join(out)+'\n')
        print('写入',n)
if __name__=='__main__': main('--apply' in sys.argv)
