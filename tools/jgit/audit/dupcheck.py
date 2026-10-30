#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""dupcheck.py — 类文件成员体检（重复定义 / 转储 / 继承传播预测）。

D8 对重复成员会打:
  Warning: Ignoring an implementation of the method X because it has multiple definitions
并任意丢弃一份 —— 等于把确定性丢掉, 必须消灭。

用法:
  python3 tools/jgit/dupcheck.py <jar>                     # 扫描重复成员, TSV 输出, 有冲突 exit 1
  python3 tools/jgit/dupcheck.py <jar> --verbose           # 额外打印统计到 stderr
  python3 tools/jgit/dupcheck.py <jar> --dump <cls> [...]   # 转储若干类的 super/成员 (cls 用 internal name)
"""
import sys, zipfile, struct

CP_SIZES = {7: 2, 9: 4, 10: 4, 11: 4, 8: 2, 3: 4, 4: 4, 5: 8, 6: 8, 12: 4,
            1: -1, 15: 3, 16: 2, 17: 4, 18: 4, 19: 2, 20: 2}


def parse_cp(b):
    n = struct.unpack_from('>H', b, 8)[0]
    cp, i, k = [None], 10, 1
    while k < n:
        tag = b[i]; i += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, i)[0]
            cp.append(b[i + 2:i + 2 + ln].decode('utf-8', 'replace'))
            i += 2 + ln
        elif tag in (5, 6):
            # 8 字节且在常量池占两个槽位 —— 必须补占位, 否则后序索引全错位
            cp.append(struct.unpack_from('>Q', b, i)[0]); i += 8
            cp.append(None); k += 1
        else:
            sz = CP_SIZES[tag]
            cp.append(b[i:i + sz])
            i += sz
        k += 1
    return cp, i


def u2(b, i):
    return struct.unpack_from('>H', b, i)[0]


def cname(cp, idx):
    """CONSTANT_Class -> internal name。"""
    e = cp[idx]
    if isinstance(e, bytes) and len(e) == 2:
        return cp[struct.unpack('>H', e)[0]]
    return e


def parse_class(b):
    cp, i = parse_cp(b)
    out = {'this': cname(cp, u2(b, i + 2)), 'super': cname(cp, u2(b, i + 4)),
           'ifaces': [], 'methods': [], 'fields': []}
    i += 6
    ni = u2(b, i); i += 2
    out['ifaces'] = [cname(cp, u2(b, i + 2 * k)) for k in range(ni)]
    i += 2 * ni
    for kind in ('fields', 'methods'):
        cnt = u2(b, i); i += 2
        for _ in range(cnt):
            acc, nm, ds = u2(b, i), cp[u2(b, i + 2)], cp[u2(b, i + 4)]
            i += 6
            na = u2(b, i); i += 2
            for _ in range(na):
                i += 6 + struct.unpack_from('>I', b, i + 2)[0]
            out[kind].append((nm, ds, acc))
    return out


def main():
    jar = sys.argv[1]
    z = zipfile.ZipFile(jar)
    if '--dump' in sys.argv:
        for cn in sys.argv[sys.argv.index('--dump') + 1:]:
            c = parse_class(z.read(cn + '.class'))
            print('== %s  extends %s  impl %s' % (c['this'], c['super'], ','.join(c['ifaces'])))
            for nm, ds, acc in c['fields']:
                print('   F 0x%04x %-12s %s' % (acc, nm, ds))
            for nm, ds, acc in c['methods']:
                print('   M 0x%04x %-12s %s' % (acc, nm, ds))
        return 0
    verbose = '--verbose' in sys.argv
    bad = nclass = 0
    for info in z.infolist():
        n = info.filename
        if not n.endswith('.class'):
            continue
        nclass += 1
        try:
            c = parse_class(z.read(n))
        except Exception as e:
            print('%s\tPARSE_ERROR\t%s: %s' % (n[:-6], type(e).__name__, e))
            bad += 1
            continue
        for kind in ('methods', 'fields'):
            seen = {}
            for nm, ds, acc in c[kind]:
                seen.setdefault((nm, ds), []).append(acc)
            for (nm, ds), accs in seen.items():
                if len(accs) > 1:
                    bad += 1
                    print('%s\t%s\t%s %s\tdup=%d\tflags=%s' % (
                        n[:-6], kind[:-1].upper(), nm, ds, len(accs),
                        ','.join('0x%04x' % a for a in accs)))
    if verbose:
        print('# classes=%d conflicts=%d' % (nclass, bad), file=sys.stderr)
    return 1 if bad else 0


if __name__ == '__main__':
    sys.exit(main())
