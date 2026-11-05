#!/usr/bin/env python3
"""fieldorder.py —— 用"方法体里字段写顺序"给同描述符字段定名（构造器顺序票的一般化）。

对每个已定名的方法对（探针 old/desc ↔ oracle real/desc），抽出两侧 putfield 的**顺序序列**，
若长度相同且 op 序列相同就逐位投票。多条方法投票聚合后唯一最高票者胜。

方法对齐：javap -p -c 的打印顺序 == class 文件成员顺序，配合 jvmbody 拿名字/描述符；
两侧数量不一致的类整体跳过（不猜）。
"""
import os,sys,re,subprocess,collections,zipfile
sys.path.insert(0,'/storage/emulated/0/MyAIDEProEnchanted/tools/jgit')
import jvmbody
H=os.path.expanduser('~'); R='/storage/emulated/0/MyAIDEProEnchanted'
FL=re.compile(r'//\s+Field\s+(\S+?):')
HDR=re.compile(r'^  \S.*?[\w$>]\(([^)]*)\)\s*(?:throws\s+[\w\s.,$]+)?;')
def ops(path):
    txt=subprocess.run(['javap','-p','-c',path],capture_output=True,text=True).stdout
    out=[]; cur=None
    for ln in txt.split('\n'):
        if HDR.match(ln) and ' class ' not in ln and not ln.strip().startswith('static {'):
            cur=[]; out.append(cur); continue
        m=re.match(r'^\s+(\d+): (get|put)(field|static)\s', ln)
        if m and cur is not None:
            fm=FL.search(ln)
            if fm:
                owner,name=fm.group(1).rsplit('/',1) if '/' in fm.group(1) else (None,fm.group(1))
                cur.append((m.group(2), owner, name))
    return out
def methods(path):
    c=jvmbody.parse(open(path,'rb').read())
    return [(m['name'],m['desc']) for m in c['members'] if m['kind']=='m' and m['name']!='<clinit>']
def table(path):
    o=ops(path); ms=methods(path)
    if len(o)!=len(ms): return None
    return dict(zip(ms,o))
def tr(desc,cmap):
    return re.sub(r'L([\w/$]+);', lambda m:'L'+(cmap.get(m.group(1)) or m.group(1))+';', desc)
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
    votes=collections.defaultdict(collections.Counter); npair=0; skip=[]
    for p,o in cmap.items():
        try: open(H+'/tmp/_p.class','wb').write(z.read(p+'.class'))
        except KeyError: continue
        try: open(H+'/tmp/_o.class','wb').write(oz.read(o+'.class'))
        except KeyError: continue
        pb=table(H+'/tmp/_p.class'); ob=table(H+'/tmp/_o.class')
        if pb is None or ob is None: skip.append((p,o)); continue
        for (pk,old,desc),real in mmap.items():
            if pk!=p: continue
            a=pb.get((old,desc)); b=ob.get((real,tr(desc,cmap)))
            if not a or not b: continue
            a=[x for x in a if x[0] in ('get','put')]
            b=[x for x in b if x[0] in ('get','put')]
            if len(a)!=len(b) or not a: continue
            if [x[0] for x in a]!=[x[0] for x in b]: continue
            npair+=1
            for x,y in zip(a,b):
                if x[0]=='put' and x[1] in (None,p) and y[1] in (None,o): votes[(p,x[2])][y[2]]+=1
    print('参与投票的方法对:',npair,' 跳过(数量不齐)的类:',len(skip))
    rows=[]
    for (p,f),c in sorted(votes.items()):
        if (p,f) in fmap: continue
        (name,n),*rest=c.most_common(1)+[('',0)]
        second=rest[0][1] if rest else 0
        if n>=2 and n>second: rows.append((p,f,name,n,second))
    used=set(v for (pk2,f2),v in fmap.items())
    rows=[r for r in rows if r[2] not in used]
    print('可定名字段:',len(rows),'（已剔除与同类已用名冲突的候选）')
    for r in rows: print('   %-10s %-6s → %-24s (票 %d vs %d)'%r)
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
