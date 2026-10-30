#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""vprobe.py —— 用探针观察到的签名当指纹，定位 AIDE 内置 jgit 的真实版本"""
import os,zipfile,sys
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
HOME=os.path.expanduser('~')
D=HOME+'/out/oracle/jgit'
JARS=[os.path.join(D,f) for f in sorted(os.listdir(D)) if f.endswith('.jar')]
def parse(z,cn):
    try: return JB.parse(z.read(cn+'.class'))
    except KeyError: return None
def sigs(c): return {(m['name'],m['desc']) for m in c['members'] if m['kind']=='m'}
def fnames(c): return {m['name'] for m in c['members'] if m['kind']=='f'}
def allnames(c): return {m['name'] for m in c['members']}
# (标签, 类, 判定类型, 参数)
CH=[
 ('ObjectStream 无 getType','org/eclipse/jgit/lib/ObjectStream','nosig',('getType','()I')),
 ('OS$Filter 无 getType','org/eclipse/jgit/lib/ObjectStream$Filter','nosig',('getType','()I')),
 ('DirCache.writeTo(OS)','org/eclipse/jgit/dircache/DirCache','sig',('writeTo','(Ljava/io/OutputStream;)V')),
 ('DirCache.writeTo(F,OS)','org/eclipse/jgit/dircache/DirCache','sig',('writeTo','(Ljava/io/File;Ljava/io/OutputStream;)V')),
 ('WCur.inflate(...,Z)I','org/eclipse/jgit/internal/storage/file/WindowCursor','sig',('inflate','(Lorg/eclipse/jgit/internal/storage/file/PackFile;J[BZ)I')),
 ('WCur.inflate(...,I)I','org/eclipse/jgit/internal/storage/file/WindowCursor','sig',('inflate','(Lorg/eclipse/jgit/internal/storage/file/PackFile;J[BI)I')),
 ('WCur.newObjToPack(AnyObj,I)','org/eclipse/jgit/internal/storage/file/WindowCursor','sig',('newObjectToPack','(Lorg/eclipse/jgit/lib/AnyObjectId;I)Lorg/eclipse/jgit/internal/storage/file/ObjectToPack;')),
 ('WCur.newObjToPack(RevObj)','org/eclipse/jgit/internal/storage/file/WindowCursor','sig',('newObjectToPack','(Lorg/eclipse/jgit/revwalk/RevObject;)Lorg/eclipse/jgit/internal/storage/file/LocalObjectToPack;')),
 ('RevWalk.lookupAny(2arg)','org/eclipse/jgit/revwalk/RevWalk','sig',('lookupAny','(Lorg/eclipse/jgit/lib/AnyObjectId;I)Lorg/eclipse/jgit/revwalk/RevObject;')),
 ('RevWalk.lookupOrNull','org/eclipse/jgit/revwalk/RevWalk','sig',('lookupOrNull','(Lorg/eclipse/jgit/lib/AnyObjectId;)Lorg/eclipse/jgit/revwalk/RevObject;')),
 ('Transport.load','org/eclipse/jgit/transport/Transport','name','load'),
 ('Transport.registerByService','org/eclipse/jgit/transport/Transport','name','registerByService'),
 ('Transport.scan','org/eclipse/jgit/transport/Transport','name','scan'),
 ('RenameDetector.rejoinModifies','org/eclipse/jgit/diff/RenameDetector','name','rejoinModifies'),
 ('RenameDetector.findRenames','org/eclipse/jgit/diff/RenameDetector','name','findRenames'),
 ('PackParser$ObjectTypeAndSize','org/eclipse/jgit/transport/PackParser$ObjectTypeAndSize','exist',None),
 ('PackParser$UnresolvedDelta','org/eclipse/jgit/transport/PackParser$UnresolvedDelta','exist',None),
 ('HunkHeader$OldImage','org/eclipse/jgit/patch/HunkHeader$OldImage','exist',None),
 ('ConfigLine.prefix','org/eclipse/jgit/lib/ConfigLine','fname','prefix'),
 ('FileObjectDatabase','org/eclipse/jgit/internal/storage/file/FileObjectDatabase','exist',None),
 ('LargePackedWholeObject','org/eclipse/jgit/internal/storage/file/LargePackedWholeObject','exist',None),
 ('ObjectReuseAsIs.copyObjectAsIs','org/eclipse/jgit/internal/storage/pack/ObjectReuseAsIs','name','copyObjectAsIs'),
 ('nls/TranslationBundle','org/eclipse/jgit/nls/TranslationBundle','exist',None),
 ('MutableInteger.value','org/eclipse/jgit/util/MutableInteger','fname','value'),
]
def check(c,kind,arg):
    if kind=='exist': return True
    if kind=='sig': return arg in sigs(c)
    if kind=='nosig': return arg not in sigs(c)
    if kind=='name': return arg in allnames(c)
    if kind=='fname': return arg in fnames(c)
    return False
for i,(lab,_,_,_) in enumerate(CH): print(f'{i+1}. {lab}')
print()
for jar in JARS:
    try: z=zipfile.ZipFile(jar)
    except Exception: continue
    row=[]
    for lab,cn,kind,arg in CH:
        c=parse(z,cn)
        row.append(bool(c is not None and check(c,kind,arg)))
    print(f'{os.path.basename(jar)[:42]:44s} {sum(row):2d}/{len(CH)} '+' '.join('Y' if v else '.' for v in row))
