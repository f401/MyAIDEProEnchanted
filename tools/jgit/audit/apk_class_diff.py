#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""apk_class_diff.py <jar> <apk|dex目录> [类前缀]

对比 jar 的类集合与 dex 的类集合，列出 **dex 里缺失的类**（出包前的最后一道核对）。
第二个参数可以是 APK/ZIP，也可以是 D8 的输出目录（直接读里面的 classes*.dex）。

注意：早期实现是在整块 dex 字节里做子串搜索（`b'Lxxx;' in dex`），
21773 个类 × 45MB dex 会跑几分钟；现在改成解析 dex 的 type 表（dexlib），秒级完成。
"""
import sys, os, zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dexlib import Dex

jar = sys.argv[1]
target = sys.argv[2]
pref = sys.argv[3] if len(sys.argv) > 3 else ''

zj = zipfile.ZipFile(jar)
jn = set(n[:-6] for n in zj.namelist() if n.endswith('.class') and n.startswith(pref))

if os.path.isdir(target):
    blobs = [(f, open(os.path.join(target, f), 'rb').read())
             for f in sorted(os.listdir(target)) if f.endswith('.dex')]
else:
    za = zipfile.ZipFile(target)
    blobs = [(n, za.read(n)) for n in za.namelist() if n.endswith('.dex')]

dex_classes = set()
total = 0
for name, blob in blobs:
    total += len(blob)
    try:
        d = Dex(blob)
    except Exception as e:
        print('!! %s 解析失败: %s' % (name, e))
        continue
    for cd in d.class_defs():
        try:
            dex_classes.add(d.type(cd['class_idx'])[1:-1])
        except Exception:
            pass

print('jar 类数 %d（前缀 %r）' % (len(jn), pref))
print('dex 文件 %d 个 / %.1f MB，dex 类数 %d' % (len(blobs), total / 1048576.0, len(dex_classes)))
miss = sorted(jn - dex_classes)
extra = sorted(dex_classes - jn)
print('dex 里缺失的类: %d' % len(miss))
for m in miss[:30]:
    print('   -', m)
if len(miss) > 30:
    print('   ... 其余 %d 条省略' % (len(miss) - 30))
print('dex 多出的类（jar 里没有）: %d' % len(extra))
for m in extra[:10]:
    print('   +', m)
