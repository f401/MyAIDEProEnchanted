#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""nop_clinit.py <in.jar> <out.jar>：把方法体里对 <clinit> 的 invokestatic 替换成 NOP（D8 不接受显式调用 <clinit>）"""
import sys,os,zipfile,struct
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0,os.path.expanduser('~/tools'))
import jvmbody as JB
src,dst=sys.argv[1],sys.argv[2]
z=zipfile.ZipFile(src); out=zipfile.ZipFile(dst,'w',zipfile.ZIP_DEFLATED)
patched=0
for info in z.infolist():
    data=z.read(info.filename)
    if info.filename.endswith('.class'):
        try:
            c=JB.parse(data)
            if c:
                # 找 refmap 里 <clinit> 的常量池索引
                idxs=[k for k,(ow,nm,ds,tag) in c['refmap'].items() if nm=='<clinit>']
                if idxs:
                    b=bytearray(data); n=0
                    for i in idxs:
                        pat=bytes([0xb8, (i>>8)&0xff, i&0xff])
                        pos=b.find(pat)
                        while pos!=-1:
                            b[pos:pos+3]=b'\x00\x00\x00'; n+=1
                            pos=b.find(pat,pos+3)
                    if n: data=bytes(b); patched+=1
        except Exception: pass
    out.writestr(info,data)
out.close()
print('已修补类数',patched,'->',dst)
