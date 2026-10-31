#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""类级重打分：TF-IDF 覆盖率打分 + 硬约束(kind/嵌套规则)，用于复核/纠错整套类映射。
输出 ~/out/work/rescore.tsv: probe 当前目标 当前分 最佳目标 最佳分 第二 前三分
"""
import os,re,sys,zipfile,math,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
SRC='/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
ORACLE=HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
MAP=_P.MAP
MODS={'public','private','protected','static','final','abstract','synthetic','constructor',
      'declared-synchronized','varargs','bridge','native','transient','volatile','strictfp',
      'interface','enum','annotation'}
TYPEREF=re.compile(r'L([A-Za-z0-9_$/$.]+);')
CM=re.compile(r'^\.class\s+([^\n]+)$',re.M)
SUP=re.compile(r'^\.super\s+(\S+);?',re.M)
IFC=re.compile(r'^\.implements\s+(\S+);?',re.M)

mp={}
for l in open(MAP):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp[f[0] if '/' in f[0] else 'abcd/'+f[0]]=f[1]
def norm(d): return TYPEREF.sub(lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)

def kind_of(flags):
    if 'annotation' in flags: return 'ann'
    if 'interface' in flags: return 'iface'
    if 'enum' in flags: return 'enum'
    return 'cls'

def probe_tokens(t,mapk=True):
    toks=set(); kind=None; sup=None
    m=CM.search(t)
    if not m: return None
    decl=m.group(1).split()
    kind=kind_of(decl)
    ms=SUP.search(t); sup=ms.group(1) if ms else None
    for x in IFC.findall(t): toks.add('i:'+(norm(x) if mapk else x))
    body_start=m.end()
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method',t,re.M|re.S):
        tl=mm.group(1).split(); b=None
        for x in tl:
            if x not in MODS: b=x;break
        if not b or '(' not in b: continue
        nm=b[:b.index('(')]; ds=b[b.index('('):]
        ds=norm(ds) if mapk else ds
        st='S' if 'static' in tl else ''
        if nm=='<init>': toks.add('c:'+ds)
        elif nm=='<clinit>': continue
        else: toks.add('m:'+ds+st)
    for mm in re.finditer(r'^\.field\s+([^\n]+)$',t,re.M):
        tl=mm.group(1).split(); b=None
        for x in tl:
            if x not in MODS: b=x;break
        if not b or ':' not in b: continue
        n,ds=b.split(':',1)
        toks.add('f:'+(norm(ds) if mapk else ds)+('S' if 'static' in tl else ''))
    return dict(kind=kind,sup=norm(sup) if (sup and mapk) else sup,toks=toks)

def oracle_index():
    z=zipfile.ZipFile(ORACLE)
    idx={}
    for n in z.namelist():
        if not n.endswith('.class'): continue
        c=JB.parse(z.read(n))
        if not c or not c['this']: continue
        acc=None
        toks=set(); kind='cls'
        if c['acc_off'] is not None: pass
        # kind from access flags: need raw; JB stores acc_off only. 读 class 头 2 字节
        raw=z.read(n); v=__import__('struct').unpack_from('>H',raw,c['acc_off'])[0]
        if v&0x2000: kind='ann'
        elif v&0x200: kind='iface'
        elif v&0x4000: kind='enum'
        for f in c['ifaces']:
            if f: toks.add('i:'+f)
        for mm in c['members']:
            nm,ds,a=mm['name'],mm['desc'],mm['acc']
            if mm['kind']=='m':
                if nm=='<init>': toks.add('c:'+ds)
                elif nm=='<clinit>': continue
                else: toks.add('m:'+ds+('S' if a&0x8 else ''))
            else:
                toks.add('f:'+ds+('S' if a&0x8 else ''))
        idx[c['this']]=dict(kind=kind,sup=c['sup'],toks=toks,
                            nest=[x['this'] for x in []] or None)
    return idx

def main():
    idx=oracle_index()
    names=list(idx)
    N=len(names)
    df=collections.Counter()
    for k in names:
        for t in idx[k]['toks']: df[t]+=1
    idf={t:math.log((N+1)/(df[t]+1))+0.3 for t in df}
    # 嵌套父类表（oracle）
    parent={}
    for k in names:
        if '$' in k:
            base,_,rest=k.rpartition('$')
            if base in idx and not rest.isdigit(): parent[k]=base
    childof=collections.defaultdict(set)
    for c,p in parent.items(): childof[p].add(c)
    probes={}
    for f in os.listdir(SRC):
        if not f.endswith('.smali'): continue
        t=open(os.path.join(SRC,f),encoding='utf-8',errors='replace').read()
        p=probe_tokens(t)
        if not p: continue
        probes[p['toks'] and CM.search(t).group(1).split()[-1].rstrip(';').lstrip('L') or f]=p
    print('probes',len(probes),'oracle',N,flush=True)
    out=[]
    for pn,p in probes.items():
        tk=p['toks']
        den=sum(idf.get(t,1.0) for t in tk) or 1.0
        cands=[]
        for on in names:
            o=idx[on]
            if o['kind']!=p['kind']: continue
            # 嵌套硬约束
            if '$' in pn:
                base=pn.rsplit('$',1)[0]
                tgt=mp.get(base)
                if tgt and parent.get(on)!=tgt: continue
            num=sum(idf.get(t,0.3) for t in tk & o['toks'])
            score=num/den
            if p['sup'] and o['sup']: score+= 0.15*(p['sup']==o['sup'])
            cands.append((score,on))
        cands.sort(reverse=True)
        cur=mp.get(pn)
        curs=next((s for s,o in cands if o==cur),0.0)
        out.append((pn,cur or '',curs,cands[:3],len(tk)))
    out.sort(key=lambda r:(r[2]))
    with open(HOME+'/out/work/rescore.tsv','w') as w:
        for pn,cur,curs,c3,n in out:
            s=' | '.join(f'{o}:{v:.2f}' for v,o in c3)
            w.write(f'{pn}\t{cur}\t{curs:.3f}\t{n}\t{s}\n')
    print('写出 rescore.tsv', len(out))
    bad=[r for r in out if r[1] and r[3] and r[3][0][1]!=r[1] and r[2]<r[3][0][0]-0.15]
    print('当前目标明显劣于最佳候选:',len(bad))
    for r in bad[:60]: print(' ',r[0],'cur',r[1],f'{r[2]:.2f}','best',r[3][0][1],f'{r[3][0][0]:.2f}','toks',r[4])
if __name__=='__main__': main()
