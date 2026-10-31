#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
_DE = _os.path.join(_os.path.dirname(_JG), 'deob')
if _DE not in _sys.path:
    _sys.path.insert(0, _DE)
import sys  # noqa: E402
import paths as _P  # noqa: E402
import checks  # noqa: E402  （通用 kit 的实现）
"""widen_access.py —— 本项目入口；实现是通用 kit 的 `tools/deob/checks.py::widen`。

把"改名后跨包访问 package-private"的 access 放宽，覆盖四类：
  1. 成员引用（invoke*/字段读写）→ 成员 + owner 类 public
  2. 类级访问（new/checkcast/instanceof/const-class/anewarray）→ 被访问类 public
  3. 继承/实现（extends/implements）→ 父类/接口 public
  4. override 家族 → 两侧 public

**必须在 FART 之前、对合并包跑**（判据依赖"原本同包、映射后跨包"，需要 --map 看最终包名）。
见 docs/BUILD.md §3b。

用法:
  python3 tools/jgit/pipeline/widen_access.py <jar> [--out F] [--map 类映射] [--apply]
  不带 --apply 只报告。
"""


def load_map(path):
    mp = {}
    for l in open(path, encoding='utf-8'):
        f = l.rstrip('\n').split('\t')
        if len(f) > 1 and f[0] != 'abcd_class':
            mp[f[0] if '/' in f[0] else 'abcd/' + f[0]] = f[1]
    return mp


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    src = sys.argv[1]
    out = None; mapf = None; apply_ = '--apply' in sys.argv; report = '--report' in sys.argv
    args = sys.argv[2:]
    for k, a in enumerate(args):
        if a == '--out':
            out = args[k+1]
        if a == '--map':
            mapf = args[k+1]
    mp = load_map(mapf or _P.MAP)
    stats, dst = checks.widen(src, out, mp, apply_ and not report)
    print('跨包需放宽：类 %d / 成员 %d' % (stats['classes'], stats['members']))
    for r in stats['reasons'][:40]:
        print('   ', r)
    if apply_ and not report:
        print('已写出 %s（改写 %d 个 class）' % (dst, stats.get('written', 0)))
        print('  自检：public 与 private/protected 并存 %d 处（应为 0）' % stats.get('clash', -1))


if __name__ == '__main__':
    main()
