#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""emit_tsrg2.py —— 输出 TSRG2 的映射文件（字段行可带 static 标记）。

实测（FART 1.0.8 内置 srgutils）：TSRG2 里**方法行不接受 static 标记** ——
`\tstatic <name> <desc> <new>` 与 `\tstatic <desc> <name> <new>` 都报
"Invalid TSRG v2 line, to many parts"。字段行 `\tstatic <name> <new>` 可用。
static 写法（与 mappings_head.txt 一致，已实测）：**跟在该方法行后面单独一行、两个 tab**：

\t(I)V someStaticMethod newName
\t\tstatic

srgutils 的解析器把这行 meta("is_static","true") 给**刚解析的方法**（IMethod.meta）。
注意：它只对**方法**有效 —— 跟在字段行后面会报 "Invalid TSRG v2 line, to many parts"。

TSRG2 语法：静态成员行前加 `static`，正是用来区分「同名同描述符的 static/virtual」。
用法: python3 tools/jgit/emit_tsrg2.py <out.txt>
"""
import os, sys, zipfile
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
TSRG = _P.TSRG
HEAD = _P.HEAD
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'


def main():
    z = zipfile.ZipFile(PROBE)
    acc = {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        c = parse_class(z.read(n))
        if not c or not c['this']:
            continue
        d = {}
        for nm, ds, a in c['methods']:
            d[('m', nm, ds)] = a
        for nm, ds, a in c['fields']:
            d[('f', nm, '')] = a
        acc[c['this']] = d

    out = []
    hdr = None
    stat = 0
    nfstat = 0
    for path in (HEAD, TSRG):
        cur = None
        for ln in open(path):
            ln = ln.rstrip('\n')
            if not ln.strip():
                continue
            if ln.startswith('tsrg2'):
                hdr = hdr or ln
                continue
            if ln[0] not in (' ', '\t'):
                cur = ln.split()[0]
                out.append(ln)
                continue
            p = ln.split()
            if len(p) < 2:
                out.append(ln); continue
            a = acc.get(cur, {})
            if len(p) == 3:
                a = a.get(('m', p[0], p[1]), 0)
                out.append('\t%s %s %s' % (p[0], p[1], p[2]))
                if a & 0x8:
                    out.append('\t\tstatic')
            else:
                a = a.get(('f', p[0], ''), 0)
                out.append('\t%s %s' % (p[0], p[1]))
            if a & 0x8:
                stat += 1
    out.insert(0, hdr or 'tsrg2 obf deobf')
    dst = sys.argv[1]
    open(dst, 'w').write('\n'.join(out) + '\n')
    print('写出 %s: %d 行, 其中 static 方法标记 %d 条' % (dst, len(out), stat - nfstat))


if __name__ == '__main__':
    main()
