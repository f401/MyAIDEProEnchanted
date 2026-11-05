#!/usr/bin/env python3
"""fieldfp.py —— 同描述符字段定名：用「哪些方法碰它 + 那些方法里的整数字面量」当指纹。

为什么需要：jzlib 的 Deflate 有 40 个 int 字段，描述符桶分不开；构造器顺序票只覆盖
"在构造器里按序赋值"的一部分。这里把范围放宽到**所有已定名方法**：
指纹 = {(方法真名, get/put, 该方法内出现过的整数字面量)}，
两侧同一字段的指纹应当逐项相同（同一份源码、dx 不改语句顺序）。
"""
import os,sys,re,subprocess,collections,zipfile
sys.path.insert(0,'/storage/emulated/0/MyAIDEProEnchanted/tools/jgit')
import jvmbody
H=os.path.expanduser('~'); R='/storage/emulated/0/MyAIDEProEnchanted'
FL=re.compile(r'//\s+Field\s+(\S+?):')
HDR=re.compile(r'^  \S.*?[\w$>]\(([^)]*)\)\s*(?:throws\s+[\w\s.,$]+)?;')
def per_method(path):
    txt=subprocess.run(['javap','-p','-c',path],capture_output=True,text=True).stdout
    out=[]; cur=None
    for ln in txt.split('\n'):
        if HDR.match(ln) and ' class ' not in ln and not ln.strip().startswith('static {'):
            cur={'f':[], 'c':set()}; out.append(cur); continue
        if cur is None: continue
        m=re.match(r'^\s+(\d+): (get|put)(field)\s', ln)
        if m:
            fm=FL.search(ln)
            if fm:
                owner,name=fm.group(1).rsplit('/',1) if '/' in fm.group(1) else (None,fm.group(1))
                cur['f'].append((m.group(2), owner, name))
            continue
        m2=re.match(r'^\s+\d+: (bipush|sipush|ldc|ldc_w)\s+(.*)$', ln)
        if m2:
            v=m2.group(2).split()[0]
            try: cur['c'].add(int(v))
            except ValueError: pass
    return out
def methods(path):
    c=jvmbody.parse(open(path,'rb').read())
    return [(m['name'],m['desc']) for m in c['members'] if m['kind']=='m' and m['name']!='<clinit>']
def tr(d,cmap): return re.sub(r'L([\w/$]+);', lambda m:'L'+(cmap.get(m.group(1)) or m.group(1))+';', d)
def main():
    argv=[x for x in sys.argv[1:] if not x.startswith('--')]
    part=argv[0] if argv else 'jzlib'
    apply_='--apply' in sys.argv
    cmap={}
    for ln in open(R+'/jobs/%s/class_map.tsv'%part,encoding='utf-8'):
        t=ln.rstrip('\n').split('\t')
        if len(t)>=2 and t[0]: cmap[t[0]]=t[1]
    fmap={}; mmap={}; cur=None
    for ln in open(R+'/jobs/%s/members.tsrg'%part,encoding='utf-8'):
        if not ln.startswith('\t'):
            t=ln.split(); cur=t[0] if t else None; continue
        t=ln.strip().split()
        if not cur or len(t)<2: continue
        if len(t)==2: fmap[(cur,t[0])]=t[1]
        else: mmap[(cur,t[0],t[1])]=t[2]
    z=zipfile.ZipFile(R+'/process/base/merged_ok.jar')
    oj=[x for x in sys.argv if x.startswith('--oracle-jar=')]
    if not oj: sys.exit('需要 --oracle-jar=<jar>')
    oz=zipfile.ZipFile(oj[0].split('=',1)[1])
    rows=[]
    for p,o in cmap.items():
        try: open(H+'/tmp/_p.class','wb').write(z.read(p+'.class'))
        except KeyError: continue
        try: open(H+'/tmp/_o.class','wb').write(oz.read(o+'.class'))
        except KeyError: continue
        pm=per_method(H+'/tmp/_p.class'); pn=methods(H+'/tmp/_p.class')
        om=per_method(H+'/tmp/_o.class'); on=methods(H+'/tmp/_o.class')
        if len(pm)!=len(pn) or len(om)!=len(on): continue
        pfp=collections.defaultdict(set); ofp=collections.defaultdict(set)
        for m,(nm,desc) in zip(pm,pn):
            r=mmap.get((p,nm,desc)) or nm
            for op,ow,fn in m['f']:
                if ow in (None,p): pfp[fn].add((r,op,tuple(sorted(m['c']))))
        for m,(nm,desc) in zip(om,on):
            for op,ow,fn in m['f']:
                if ow in (None,o): ofp[fn].add((nm,op,tuple(sorted(m['c']))))
        pc=jvmbody.parse(open(H+'/tmp/_p.class','rb').read())
        oc2=jvmbody.parse(open(H+'/tmp/_o.class','rb').read())
        fdesc={m['name']:m['desc'] for m in pc['members'] if m['kind']=='f'}
        odesc={m['name']:m['desc'] for m in oc2['members'] if m['kind']=='f'}
        for f in pfp:
            if (p,f) in fmap: continue
            key=pfp[f]
            cands=[]
            want=tr(fdesc[f],cmap)
            for g,us in ofp.items():
                if odesc.get(g)!=want: continue
                j=len(key&us)/len(key|us)
                cands.append((round(j,3),g))
            cands.sort(reverse=True)
            if not cands: continue
            if cands[0][0]>=0.9 and (len(cands)==1 or cands[0][0]>cands[1][0]):
                rows.append((p,f,cands[0][1],cands[0][0],cands[1][0] if len(cands)>1 else 0.0))
    used=set(v for (pk2,f2),v in fmap.items())
    rows=[r for r in rows if r[2] not in used]
    print('高置信字段:',len(rows),'（已剔除与同类已用名冲突的候选）')
    for r in rows: print('   %-10s %-6s → %-24s (%.2f vs %.2f)'%r)
    if apply_ and rows:
        blocksm=collections.defaultdict(list); order=[]; cur=None
        path=R+'/jobs/%s/members.tsrg'%part
        for ln in open(path,encoding='utf-8'):
            if not ln.startswith('\t'):
                t=ln.split(); cur=t[0] if t else None
                if cur: order.append(cur)
                blocksm[cur].append(ln.rstrip('\n'))
            else: blocksm[cur].append(ln.rstrip('\n'))
        n=0
        for p,f,name,_,_ in rows:
            blocksm[p].append('\t%s %s'%(f,name)); n+=1
        with open(path,'w',encoding='utf-8') as w:
            for pk in order:
                if pk is None: w.write('\n'); continue
                w.write('\n'.join(blocksm[pk])+'\n')
        print('写入',n)
main()
