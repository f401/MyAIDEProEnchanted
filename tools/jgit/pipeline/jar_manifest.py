#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""jar_manifest.py <jar...> [--check <hex>] [--list]

给出 jar 的**内容指纹**（与 zip 的条目顺序/时间戳/压缩方式无关）：

    manifest_sha256 = sha256( 按类名排序后的 "sha256(内容)  条目名\\n" 拼接 )

用途：验证「同一份 mappings + 同一个 FART 版本」产出的 jar 是否**内容一致**。
整包 sha256 会因为 zip 元数据（时间戳/extra field）不同而不同，不能用来判等
（实测同一输入两次产出差 8 字节，内容完全相同）。

`--check` 时退出码 0=一致，1=不一致；同时会打印类数与逐条差异（若有）。
"""
import sys, os, zipfile, hashlib


def manifest(path):
    z = zipfile.ZipFile(path)
    rows = []
    for info in z.infolist():
        if info.filename.endswith('/'):
            continue
        h = hashlib.sha256(z.read(info.filename)).hexdigest()
        rows.append((info.filename, h))
    rows.sort()
    m = hashlib.sha256()
    for name, h in rows:
        m.update(('%s  %s\n' % (h, name)).encode('utf-8'))
    return m.hexdigest(), dict(rows), z


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    check = None
    if '--check' in sys.argv:
        check = sys.argv[sys.argv.index('--check') + 1]
        args = [a for a in args if a != check]
    listing = '--list' in sys.argv
    if not args:
        print(__doc__)
        return 2

    first = None
    for p in args:
        if not os.path.exists(p):
            print('缺失: %s' % p)
            return 2
        mh, entries, z = manifest(p)
        classes = sum(1 for n in entries if n.endswith('.class'))
        print('%-40s 条目 %6d 类 %6d  manifest %s' % (os.path.basename(p), len(entries), classes, mh))
        if first is None:
            first = (mh, entries, p)
        elif mh == first[0]:
            print('  == 与 %s 内容一致' % os.path.basename(first[2]))
        else:
            print('  != 与 %s 内容不一致' % os.path.basename(first[2]))
            a, b = first[1], entries
            only_a = sorted(set(a) - set(b))
            only_b = sorted(set(b) - set(a))
            diff = sorted(n for n in set(a) & set(b) if a[n] != b[n])
            print('     仅前者 %d 条 / 仅后者 %d 条 / 内容不同 %d 条' % (len(only_a), len(only_b), len(diff)))
            for n in (only_a[:8] + only_b[:8] + diff[:8]):
                print('       ', n)
        if listing:
            for n, h in sorted(entries.items()):
                print('   %s  %s' % (h[:16], n))

    if check:
        ok = (first[0] == check)
        print('\n--check %s → %s' % (check, 'PASS' if ok else 'FAIL(实际 %s)' % first[0]))
        return 0 if ok else 1
    return 0


sys.exit(main())
