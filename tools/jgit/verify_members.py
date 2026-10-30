#!/usr/bin/env python3
"""校验 tsrg 成员映射：新名必须在 oracle 目标类(或祖先)中存在且描述符一致"""
import os,re,sys,zipfile,collections
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
TSRG=HOME+'/out/work/jgit_members_clean.tsrg'
TSV=HOME+'/out/work/jgit_map_clean.tsv'
z=zipfile.ZipFile(HOME+'/out/oracle/jgit/j-3.7.1.201504261725-r.jar')
mp={}
for l in open(TSV):
    f=l.rstrip('\n').split('\t')
    if len(f)>1 and f[0]!='abcd_class': mp['abcd/'+f[0]]=f[1]
cls={}
for n in z.namelist():
    if not n.endswith('.class'): continue
    c=JB.parse(z.read(n))
    if c and c['this']: cls[c['this']]=c
PJ=zipfile.ZipFile(os.path.join(os.path.dirname(os.path.abspath(__file__)),'..','..','process','base','merged_ok.jar'))
_pc={}
def probe_field(cn,pname):
    if cn not in _pc:
        try:
            c=JB.parse(PJ.read(cn+'.class')); _pc[cn]=c
        except KeyError:
            _pc[cn]=None
    c=_pc[cn]
    if not c: return None
    for m in c['members']:
        if m['kind']=='f' and m['name']==pname: return m['desc']
    return None

def norm(d): return re.sub(r'L([A-Za-z0-9_$/$.]+);',lambda m:'L'+mp.get(m.group(1),m.group(1))+';',d)
def shape(d):
    if '(' not in d: return d
    b=d[1:d.index(')')];r=d[d.index(')')+1:]
    one=lambda x:'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '('+''.join(one(p) for p in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])',b))+')'+one(r)
def find(cn,name,desc,kind,seen=None):
    seen=seen or set()
    if cn in seen: return False
    seen.add(cn)
    c=cls.get(cn)
    if not c: return None
    for m in c['members']:
        if m['kind']==kind and m['name']==name and (m['desc']==desc or shape(m['desc'])==shape(desc)): return True
    for p in ([c['sup']] if c['sup'] else [])+list(c['ifaces']):
        r=find(p,name,desc,kind,seen)
        if r: return True
    return False
R8={('abcd/KC','writeTo'),('abcd/wH','inflate'),('abcd/wH','newObjectToPack')}
# 已知「oracle 版本偏旧」白名单：条目来自 out/work/verify_allow.tsv（probe<TAB>新名<TAB>理由）
ALLOW={}
try:
    _ap=HOME+'/out/work/verify_allow.tsv'
    if not os.path.exists(_ap):
        _ap='/storage/emulated/0/MyAIDEProEnchanted/process/verify_allow.tsv'
    for _l in open(_ap):
        _f=_l.rstrip('\n').split('\t')
        if len(_f)>=2 and not _l.startswith('#'): ALLOW[(_f[0],_f[1])]=_f[2] if len(_f)>2 else ''
except IOError: pass
bad=[];typemiss=[];unk=0;tot=0;r8=[];allow=[]
NOT_IN_ORACLE=[]   # 目标类不在 oracle 里：多为匿名类占位名（$1/$2…），非 $数字 结尾的才是真可疑
cur=None
for l in open(TSRG):
    l=l.rstrip('\n')
    if not l: continue
    if not l.startswith('\t'): cur=l.split()[0]; continue
    s=l[1:].split(' ')
    new=mp.get(cur)
    if new and new not in cls:
        NOT_IN_ORACLE.append((cur,new)); continue
    if not new or new not in cls: continue
    tot+=1
    if len(s)==2:
        nm,new2=s; r=find(new,new2,'',None) if False else None
        ok=False
        c=cls[new]
        # 字段：靠名字+类型未知，退化为名字存在
        stack=[new];seen=set()
        while stack:
            cn=stack.pop()
            if cn in seen: continue
            seen.add(cn)
            cc=cls.get(cn)
            if not cc: continue
            for m in cc['members']:
                if m['kind']=='f' and m['name']==new2:
                    ok=True
                    pd=probe_field(cur,s[0])
                    if pd and m['desc']:
                        fp=lambda d: 'O' if d.lstrip('[').startswith('L') else d.lstrip('[')
                        if fp(pd)!=fp(m['desc']) and (cur,new2) not in ALLOW: typemiss.append((cur,s[0],new2,pd,m['desc']))
                    break
            if ok: break
            for p in ([cc['sup']] if cc['sup'] else [])+list(cc['ifaces']): stack.append(p)
        if not ok:
            if (cur,new2) in ALLOW: allow.append((cur,'',new2,ALLOW[(cur,new2)]))
            else: bad.append((cur,new,'field',s[0],new2,'字段名不存在'))
    else:
        nm,ds,new2=s
        r=find(new,new2,norm(ds),'m')
        if r is False:
            if (cur,new2) in R8: r8.append((cur,norm(ds),new2))
            elif (cur,new2) in ALLOW: allow.append((cur,norm(ds),new2,ALLOW[(cur,new2)]))
            else: bad.append((cur,new,'method',nm,norm(ds),new2))
        elif r is None: unk+=1
susp=[x for x in NOT_IN_ORACLE
      if not re.search(r'\$\d+$', x[1])                      # 匿名类编号占位
      and not x[1].startswith('com/jcraft')                   # 第三方保留原名
      and not x[1].startswith('abcd/')                        # 已判定非 jgit：搬回原包、不改名
      and (x[0], x[1]) not in ALLOW]
print('目标类不在 oracle（多为匿名类占位名，正常）%d 条；其中非 $数字 结尾、需人工确认 %d 条' % (len(NOT_IN_ORACLE), len(susp)))
for x in susp[:10]: print('   ', x)
try:
    if '--dump-bad' in sys.argv:
        with open(HOME+'/out/work/verify_bad.tsv','w') as _fh:
            for b in bad:
                _fh.write('%s\t%s\t%s\t%s\t%s\n' % (b[0], 'm' if b[2]=='method' else 'f', b[3], b[4], b[5]))
except Exception as _e:
    print('dump-bad 失败', _e)
print('成员映射',tot,'无法校验(未知类)',unk,'不一致',len(bad),'字段类型不符',len(typemiss),'已知R8签名重写',len(r8),'已知oracle版本差异',len(allow))
for t in typemiss[:60]: print('   F',t)
for a in allow[:20]: print('   ~',a)
for b in bad[:40]: print(' ',b)
