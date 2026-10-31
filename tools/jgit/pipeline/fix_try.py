#!/usr/bin/env python3
import os as _os, sys as _sys
_DE = _os.path.join(_os.path.dirname(_os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))), 'deob')
if _DE not in _sys.path:
    _sys.path.insert(0, _DE)
import fixtry  # noqa: E402
"""fix_try.py —— 本项目入口；实现是通用 kit 的 `tools/deob/fixtry.py`。

修"try 范围不含数组访问"的异常表（AIDE dex 里 `Config$StringReader` 那类靠越界判 EOF 的代码）。
必须在 `widen_access` 之前跑，见 docs/BUILD.md §3a。

用法: python3 tools/jgit/pipeline/fix_try.py <in.jar> [<out.jar>] [--apply]
"""


def main():
    args = [a for a in _sys.argv[1:] if not a.startswith('--')]
    if not args:
        raise SystemExit(__doc__)
    src = args[0]
    out = args[1] if len(args) > 1 else src[:-4] + '_try.jar'
    write = '--apply' in _sys.argv
    n = fixtry.fix(src, out, write=write, log=print)
    print(('修 %d 条异常表 → %s' % (n, out)) if write
          else '需要修 %d 条异常表（加 --apply 才写盘）' % n)


if __name__ == '__main__':
    main()
