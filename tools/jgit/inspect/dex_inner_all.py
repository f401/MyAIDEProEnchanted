#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""dex_inner_all.py <dex...> —— 导出所有类的 dalvik 嵌套注解码表

输出列：类描述符 \t InnerClass.name \t accessFlags \t EnclosingClass \t EnclosingMethod \t 来源dex
用于统计"注解是否可信"（同值复用率高 ⇒ 投毒，见 docs/JGIT-METADATA.md §4）。
"""
import sys
from dexlib import Dex

rows = []
for path in sys.argv[1:]:
    b = open(path, 'rb').read()
    d = Dex(b)
    tag = path.split('/')[-1]
    for cd in d.class_defs():
        name = d.type(cd['class_idx'])
        if not cd['annotations_off']:
            continue
        try:
            ca = d.u4(cd['annotations_off'])
            anns = d.parse_annotation_set(ca)
        except Exception as e:
            rows.append('%s\t\t\t\t\t%s\tPARSE_FAIL:%s' % (name, tag, e))
            continue
        got = enc = enm = None
        for t, elems in anns:
            if t == 'Ldalvik/annotation/InnerClass;':
                got = dict(elems)
            elif t == 'Ldalvik/annotation/EnclosingClass;':
                enc = dict(elems)
            elif t == 'Ldalvik/annotation/EnclosingMethod;':
                enm = dict(elems)
        if got is None and enc is None and enm is None:
            continue
        nm = '' if got is None else ('<null>' if got.get('name') is None else got.get('name'))
        fl = '' if got is None else got.get('accessFlags')
        ev = '' if enc is None else enc.get('value')
        em = ''
        if enm is not None:
            v = enm.get('value')
            if isinstance(v, tuple) and v and v[0] == 'ref':
                try:
                    c, mn = d.method(v[1])
                    em = '%s->%s' % (c, mn)
                except Exception:
                    em = 'ref%s' % (v[1],)
            else:
                em = repr(v)
        rows.append('%s\t%s\t%s\t%s\t%s\t%s' % (name, nm, fl, ev, em, tag))
print('\n'.join(rows))
