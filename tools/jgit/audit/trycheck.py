#!/usr/bin/env python3
"""trycheck.py —— 体检：jar 里还有没有"catch IndexOutOfBounds 但 try 范围不含数组访问"的方法。

这类方法是 AIDE dex 的缺陷（`Config$StringReader` 靠越界判 EOF，见 docs/NOTES.md §6），
不修就会在运行期 `ArrayIndexOutOfBoundsException`。修法是 `pipeline/fix_try.py`。

用法: python3 tools/jgit/audit/trycheck.py <jar>        # 退出码 0 = 干净
"""
import os
import sys
import zipfile

sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'pipeline'))
import fix_try  # noqa: E402


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    z = zipfile.ZipFile(sys.argv[1])
    n = 0
    for info in z.infolist():
        if not info.filename.endswith('.class'):
            continue
        try:
            fixes = fix_try.scan(z.read(info.filename))
        except Exception:
            continue
        for _off, old, new, nm, ds, t in fixes:
            print('  %-46s %-8s %-28s end_pc %d -> %d  [%s]'
                  % (info.filename[:-6], nm, ds[:28], old, new, t))
            n += 1
    print('可疑 %d 条%s' % (n, '（跑 pipeline/fix_try.py 修）' if n else '（干净）'))
    return 0 if n == 0 else 1


if __name__ == '__main__':
    raise SystemExit(main())
