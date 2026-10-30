#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""批量应用第一批类级纠正 + 新增 nls 三件套 + 成员映射；同步三个文件。"""
import os,collections
HOME=os.path.expanduser('~')
TSV=_P.MAP
TSRG=_P.TSRG
MAPS='/storage/emulated/0/MyAIDEProEnchanted/process/mappings.txt'

CLS={'GF':('org/eclipse/jgit/nls/TranslationBundle','body:nls/TranslationBundle 1:1(字段原名 effectiveLocale/resourceBundle,load(Locale) 用 getBundle)'),
     'zK':('org/eclipse/jgit/util/FileUtils','body:6 个 static File 方法 = delete/delete(int)/mkdir/mkdirs 与其重载(委托链+File.mkdirs/mkdir/delete)'),
     'lH':('org/eclipse/jgit/internal/storage/file/PackReverseIndex','body:ctor(PackIndex)+findObject(long)+findNextOffset(long,long),int[]/long[] 桶数组'),
     'OA':('org/eclipse/jgit/api/AddCommand','body:extends GitCommand,call()->DirCache,filepatterns/workingTreeIterator/update')}
NEW=[('DF','org/eclipse/jgit/nls/GlobalBundleCache','body:static Map<Locale,Map<Class,TranslationBundle>>+synchronized lookupBundle(newInstance+load)'),
     ('FF','org/eclipse/jgit/nls/NLS','body:ROOT_LOCALE=Locale("","",""),InheritableThreadLocal<NLS> local,ConcurrentHashMap<Class,TranslationBundle> map,get/getBundleFor'),
     ('EF','org/eclipse/jgit/nls/NLS$1','nest:EnclosingClass=FF(NLS),InheritableThreadLocal.initialValue->new NLS(Locale.getDefault())')]
MEMB=[('GF',['j6 (Ljava/util/Locale;)V load']),
      ('zK',['j6 (Ljava/io/File;Z)V mkdir','DW (Ljava/io/File;Z)V mkdirs','DW (Ljava/io/File;)V mkdir',
             'FH (Ljava/io/File;)V mkdirs','j6 (Ljava/io/File;I)V delete','j6 (Ljava/io/File;)V delete']),
      ('OA',['FH filepatterns','Hw workingTreeIterator','v5 update',
             'j6 (Ljava/lang/String;)Labcd/OA; addFilepattern','DW (Z)Labcd/OA; setUpdate']),
      ('DF',['j6 cachedBundles','j6 (Ljava/util/Locale;Ljava/lang/Class;)Labcd/GF; lookupBundle']),
      ('FF',['j6 ROOT_LOCALE','DW local','FH locale','Hw map',
             'DW (Ljava/lang/Class;)Labcd/GF; get','j6 (Ljava/lang/Class;)Labcd/GF; getBundleFor'])]

rows=[l.rstrip('\n').split('\t') for l in open(TSV) if l.strip()]
rows=[r for r in rows if r[0]!='abcd_class']
byold={r[0]:r for r in rows}
for o,(n,ev) in CLS.items():
    assert o in byold,o
    byold[o][1]=n; byold[o][2]=ev
for o,n,ev in NEW:
    if o in byold: byold[o][1]=n; byold[o][2]=ev
    else:
        r=[o,n,ev]; rows.append(r); byold[o]=r
tgt=collections.Counter(r[1] for r in rows)
dup=[k for k,v in tgt.items() if v>1]
assert not dup,dup
rows.sort(key=lambda r:r[0])
with open(TSV,'w') as w:
    for r in rows: w.write('\t'.join(r)+'\n')
print('TSV 类数',len(rows))

# tsrg
lines=open(TSRG).read().split('\n')
blocks=[];cur=None
for l in lines:
    if not l: continue
    if not l.startswith('\t'): cur=[l,[ ]] if False else [l,[]]; blocks.append(cur)
    else: blocks[-1][1].append(l)
    continue
bd={b[0].split()[0].replace('abcd/',''):b for b in blocks}
for o,(n,ev) in CLS.items():
    if o in bd: bd[o][0]='abcd/%s %s'%(o,n)
    else:
        b=['abcd/%s %s'%(o,n),[]]; blocks.append(b); bd[o]=b
for o,n,ev in NEW:
    if o in bd: bd[o][0]='abcd/%s %s'%(o,n)
    else:
        b=['abcd/%s %s'%(o,n),[]]; blocks.append(b); bd[o]=b
for o,ms in MEMB:
    if o not in bd:
        b=['abcd/%s %s'%(o,dict((x[0],x[1]) for x in [(c[0],c[1]) for c in CLS.items()])),[]]
    have={m.strip() for m in bd[o][1]}
    for m in ms:
        if '\t'+m not in bd[o][1]: bd[o][1].append('\t'+m)
blocks.sort(key=lambda b:b[0].split()[0])
out=[]
for b in blocks:
    out.append(b[0]); out.extend(b[1])
open(TSRG,'w').write('\n'.join(out)+'\n')
print('TSRG 类块',len(blocks),'成员行',sum(len(b[1]) for b in blocks))

# mappings.txt: 保留前 359 行，重建 jgit 块
src=open(MAPS).read().split('\n')
head=[]
for i,l in enumerate(src):
    if l.startswith('abcd/') and ' org/eclipse/jgit/' in l: break
    head.append(l)
while head and head[-1]=='': head.pop()
open(MAPS,'w').write('\n'.join(head)+'\n'+'\n'.join(out)+'\n')
print('mappings.txt 头部',len(head),'行；总行',len(head)+len(out))
