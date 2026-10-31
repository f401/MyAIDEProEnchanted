#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""nestcheck.py —— 用 dex 的 InnerClasses 关系做硬校验。

规则（来自 dex 的 innerClasses 表，不经任何推论）：
  dex 声明  inner 是 outer 的成员类  ⇒  target(inner) 必须形如 target(outer) + "$…"

三种违规：
  FLAT     dex 说它是内部类，映射却给了个顶层名（没有 $）
  OUTER-UNMAPPED  内层改成了 A$b，但 dex 的外层还没改名（产物里 outer 仍叫 abcd/xx）
  PREFIX   内层改成 A$b，而 dex 外层被映射成了别的名字 B

用法:
  python3 tools/jgit/nestcheck.py <probe.jar> <map.tsv> [--verbose]
"""
import sys, os, zipfile, struct, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_cp, u2, cname


def inner_classes(b):
    """返回 [(inner, outer, innerName, flags)]；inner/outer 为 internal name 或 None。"""
    cp, i = parse_cp(b)
    i += 6
    ni = u2(b, i); i += 2 + 2 * ni
    for kind in ('fields', 'methods'):
        cnt = u2(b, i); i += 2
        for _ in range(cnt):
            i += 6
            na = u2(b, i); i += 2
            for _ in range(na):
                i += 6 + struct.unpack_from('>I', b, i + 2)[0]
    na = u2(b, i); i += 2
    out = []
    for _ in range(na):
        name = cp[u2(b, i)]
        ln = struct.unpack_from('>I', b, i + 2)[0]
        body = i + 6
        i = body + ln
        if name != 'InnerClasses':
            continue
        n = u2(b, body)
        for k in range(n):
            o = body + 2 + 8 * k
            ii, oi, nm = u2(b, o), u2(b, o + 2), u2(b, o + 4)
            fl = u2(b, o + 6)
            inn = cname(cp, ii) if ii else None
            outr = cname(cp, oi) if oi else None
            out.append((inn, outr, cp[nm] if nm else None, fl))
    return out


def main():
    # --self：不看映射，直接校验产物自洽（等价于 D8 的 Malformed inner-class attribute 判据）
    if '--self' in sys.argv:
        z = zipfile.ZipFile(sys.argv[1])
        bad, tot = 0, 0
        for info in z.infolist():
            if not info.filename.endswith('.class'):
                continue
            for inner, outer, nm, fl in inner_classes(z.read(info.filename)):
                if not inner or not outer:
                    continue
                tot += 1
                if not inner.startswith(outer + '$'):
                    bad += 1
                    print('BAD  %-58s outer=%-52s name=%s' % (inner, outer, nm))
        print('# 自洽校验: %d 条边, %d 条违规' % (tot, bad))
        return 1 if bad else 0
    jar, tsv = sys.argv[1], sys.argv[2]
    verbose = '--verbose' in sys.argv
    mp = {}
    for ln in open(tsv):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2 and f[0] != 'abcd_class':
            mp[f[0] if '/' in f[0] else 'abcd/'+f[0]] = f[1]
    z = zipfile.ZipFile(jar)
    edges, seen = [], set()
    for info in z.infolist():
        n = info.filename
        if not n.endswith('.class'):
            continue
        try:
            for e in inner_classes(z.read(n)):
                key = (e[0], e[1])
                if key not in seen:
                    seen.add(key)
                    edges.append(e)
        except Exception as ex:
            print('# PARSE %s: %s' % (n, ex))
    print('# dex InnerClasses 边: %d（其中 outer 非空 %d）'
          % (len(edges), sum(1 for e in edges if e[1])))
    res = collections.Counter()
    rows = []
    for inner, outer, nm, fl in edges:
        if not outer or not inner:
            continue
        ti, to = mp.get(inner), mp.get(outer)
        if ti is None:
            res['inner-unmapped'] += 1
            continue
        if '$' in ti:
            # dex 的 outer 只到“最外层被命名的类”（三层嵌套会被压成首段），
            # 所以只要求 target(inner) 以 target(outer)+'$' 开头，不要求是紧邻前缀。
            if to is None:
                res['OUTER-UNMAPPED'] += 1
                rows.append(('OUTER-UNMAPPED', inner, ti, outer, '-', nm))
            elif not ti.startswith(to + '$'):
                res['PREFIX'] += 1
                rows.append(('PREFIX', inner, ti, outer, to, nm))
            else:
                res['ok'] += 1
        else:
            res['FLAT'] += 1
            rows.append(('FLAT', inner, ti, outer, to or 'abcd/' + outer, nm))
    for k, v in res.most_common():
        print('  %-16s %d' % (k, v))
    print()
    for r in sorted(rows):
        print('%-15s %-22s -> %-46s outer=%-14s(%s) name=%s'
              % (r[0], r[1], r[2], r[3], r[4], r[5]))
    return 1 if rows else 0


if __name__ == '__main__':
    sys.exit(main())
