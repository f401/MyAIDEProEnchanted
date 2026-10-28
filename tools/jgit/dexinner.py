#!/usr/bin/env python3
"""dexinner.py <dex> [L类名; ...]

查看 dex 里 **dalvik 嵌套注解** 的原始值（InnerClass / EnclosingClass / EnclosingMethod）。
不给类名时导出所有含 '$' 的类。

⚠️ 本仓库的 AIDE Pro 混淆体里这些注解的 name/EnclosingClass 值是**投毒**的
   （同 4 个诱饵值复用在 300+ 类上），只能当"是不是匿名类"的弱信号，
   不能当命名依据。证据见 docs/JGIT-METADATA.md §4。
"""
import sys
from dexlib import Dex


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    path = sys.argv[1]
    d = Dex(open(path, 'rb').read())
    want = set(sys.argv[2:])
    for cd in d.class_defs():
        name = d.type(cd['class_idx'])
        if want:
            if name not in want:
                continue
        elif '$' not in name:
            continue
        if not cd['annotations_off']:
            continue
        # annotations_off -> annotations_directory_item，其第 1 个 u4 才是 annotation_set_item
        set_off = d.u4(cd['annotations_off'])
        try:
            anns = d.parse_annotation_set(set_off)
        except Exception as e:
            print('%s\tPARSE_FAIL:%s' % (name, e))
            continue
        got = enc = enm = None
        for t, elems in anns:
            kv = dict(elems)
            if t == 'Ldalvik/annotation/InnerClass;':
                got = kv
            elif t == 'Ldalvik/annotation/EnclosingClass;':
                enc = kv
            elif t == 'Ldalvik/annotation/EnclosingMethod;':
                enm = kv
        if got is None and enc is None and enm is None:
            continue
        nm = '<none>' if got is None else repr(got.get('name'))
        fl = '-' if got is None else str(got.get('accessFlags'))
        outer = '-' if enc is None else str(enc.get('value'))
        meth = '-'
        if enm is not None:
            v = enm.get('value')
            if isinstance(v, tuple) and v and v[0] == 'ref':
                try:
                    c, mn = d.method(v[1])
                    meth = '%s->%s' % (c, mn)
                except Exception:
                    meth = 'ref%s' % (v[1],)
            else:
                meth = repr(v)
        print('%s\tname=%s\tflags=%s\touter=%s\tin_method=%s' % (name, nm, fl, outer, meth))
    return 0


sys.exit(main())
