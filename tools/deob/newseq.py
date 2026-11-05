#!/usr/bin/env python3
"""newseq.py —— 用"方法体里 new 的顺序"给**同形类**定名（异常族/凭据族这类形状完全一样的类）。

判据：同一份源码、dx 不打乱语句顺序 ⇒ 已定名方法 M 与它的 oracle 对应 M' 里，
`new` 出来的类按位置一一对应。多个方法投票聚合，唯一最高票者胜。

用法:
  python tools/deob/newseq.py <part> --oracle-jar=<jar> --oprefix=<oracle 包前缀> [--apply]
"""
import os,sys,re,subprocess,collections,zipfile
sys.path.insert(0,'/storage/emulated/0/MyAIDEProEnchanted/tools/jgit')
import jvmbody
H=os.path.expanduser('~'); R='/storage/emulated/0/MyAIDEProEnchanted'
HDR=re.compile(r'^  \S.*?[\w$>]\(([^)]*)\)\s*(?:throws\s+[\w\s.,$]+)?;')
NEW=re.compile(r'^\s+(\d+): new\s+#\d+\s+//\s+class (\S+)$')
def per_method(path):
    txt=subprocess.run(['javap','-p','-c',path],capture_output=True,text=True).stdout
    out=[]; cur=None
    for ln in txt.split('\n'):
        if HDR.match(ln) and ' class ' not in ln and not ln.strip().startswith('static {'):
            cur=[]; out.append(cur); continue
        m=NEW.match(ln)
        if m and cur is not None: cur.append(m.group(2))
    return out
def methods(path):
    c=jvmbody.parse(open(path,'rb').read())
    return [(m['name'],m['desc']) for m in c['members'] if m['kind']=='m' and m['name']!='<clinit>']
def tr(d,cmap):
    return re.sub(r'L([\w/$]+);', lambda m:'L'+(cmap.get(m.group(1)) or m.group(1))+';', d)
def main():
    argv=[x for x in sys.argv[1:] if not x.startswith('--')]
    part=argv[0] if argv else 'jgit'
    apply_='--apply' in sys.argv
    oj=[x.split('=',1)[1] for x in sys.argv if x.startswith('--oracle-jar=')]
    op=[x.split('=',1)[1] for x in sys.argv if x.startswith('--oprefix=')]
    if not oj: sys.exit('需要 --oracle-jar=<jar>')
    oprefix=op[0] if op else ''
    cmap={}
    for ln in open(R+'/jobs/%s/class_map.tsv'%part,encoding='utf-8'):
        t=ln.rstrip('\n').split('\t')
        if len(t)>=2 and t[0]: cmap[t[0] if '/' in t[0] else 'abcd/'+t[0]]=t[1]
    mmap={}; cur=None
    for ln in open(R+'/jobs/%s/members.tsrg'%part,encoding='utf-8'):
        if not ln.startswith('\t'):
            t=ln.split(); cur=t[0] if t else None; continue
        t=ln.strip().split()
        if len(t)>=3 and cur: mmap[(cur,t[0],t[1])]=t[2]
    z=zipfile.ZipFile(R+'/process/base/merged_ok.jar')
    oz=zipfile.ZipFile(oj[0])
    votes=collections.defaultdict(collections.Counter); npair=0
    ocache={}
    for p,o in cmap.items():
        try: open(H+'/tmp/_p.class','wb').write(z.read(p+'.class'))
        except KeyError: continue
        try: open(H+'/tmp/_o.class','wb').write(oz.read(o+'.class'))
        except KeyError: continue
        pm=per_method(H+'/tmp/_p.class'); pn=methods(H+'/tmp/_p.class')
        om=per_method(H+'/tmp/_o.class'); on=methods(H+'/tmp/_o.class')
        if len(pm)!=len(pn) or len(om)!=len(on): continue
        for (pk,old,desc),real in mmap.items():
            if pk!=p: continue
            i=pn.index((old,desc)) if (old,desc) in pn else -1
            if i<0: continue
            j=on.index((real,tr(desc,cmap))) if (real,tr(desc,cmap)) in on else -1
            if j<0: continue
            a=pm[i]; b=om[j]
            if not a or len(a)!=len(b): continue
            npair+=1
            for x,y in zip(a,b):
                if x in cmap: continue                      # 只对未定名类投票
                if y not in ocache:
                    try: ocache[y]=True
                    except Exception: pass
                votes[x][y]+=1
    rows=[]
    for x,c in votes.items():
        (y,n),*rest=c.most_common(1)+[('',0)]
        second=rest[0][1] if rest else 0
        if n>=2 and n>second: rows.append((x,y,n,second))
    print('参与投票的方法对:',npair,' 可定名类:',len(rows))
    for r in rows[:60]: print('   %-12s → %-58s (票 %d vs %d)'%r)
    if apply_ and rows:
        path=R+'/jobs/%s/class_map.tsv'%part
        rows2=sorted(rows)
        with open(path,'a',encoding='utf-8') as w:
            for x,y,n,second in rows2:
                w.write('%s\t%s\tsrc:方法体里 new 的顺序对齐（%d 个方法投票、领先 %d）—— 同形类只能靠"谁在哪里 new 它"定\n'%(x,y,n,second))
        print('追加',len(rows2),'行到',path)
main()
