#!/usr/bin/env python3
import os as _os, sys as _sys
_PIPE = _os.path.dirname(_os.path.abspath(__file__))
_JG = _os.path.dirname(_PIPE)
_sys.path.insert(0, _PIPE)
_sys.path.insert(0, _JG)
for _sub in ('pipeline', 'naming', 'audit', 'inspect', 'stage', 'deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
_DE = _os.path.join(_os.path.dirname(_JG), 'deob')
if _os.path.isdir(_DE) and _DE not in _sys.path:
    _sys.path.append(_DE)
import paths as _P            # noqa: E402
import params as _PRM         # noqa: E402
import tinyv2 as _T           # noqa: E402
from emit_tiny2 import jar_access  # noqa: E402

"""tiny_roundtrip.py —— 迁移的**硬判据**：tiny → TSRG2 必须与 process/mappings.txt 逐行相同。

正向（emit_tsrg2）和反向（这里）都从同一个基线 jar 取 static 标志，所以这条门禁证明的是
"tiny 没丢/没串任何一条映射"，而不是"两份产物恰好一样"。

注意 TSRG2 的两个历史怪癖，反向必须复刻，否则 diff 会假报警：
  1. `\\t\\tstatic` 只跟在**改过名**的静态方法后面（emit_tsrg2 的 p[2] != p[0]）；
  2. 参数行是 `\\t\\t<实参序号> <名> <名>`（两列同名），不是 tiny 的 LVT 槽位。

用法: python3 tools/jgit/pipeline/tiny_roundtrip.py [--tiny=..] [--tsrg=..]
"""
import zipfile


def to_tsrg(classes, acc):
    out = ['tsrg2 obf deobf']
    npar = nst = 0
    for c in classes:
        out.append('%s %s' % (c['official'], c['named']))
        for m in c['members']:
            if m['kind'] == 'f':
                out.append('\t%s %s' % (m['official'], m['named']))
                continue
            out.append('\t%s %s %s' % (m['official'], m['desc'], m['named']))
            st = bool(acc.get(c['official'], {}).get(('m', m['official'], m['desc']), 0) & 0x8)
            if st and m['named'] != m['official']:
                out.append('\t\tstatic')
                nst += 1
            if m['params']:
                args = _PRM.desc_args(m['desc'])
                for p in m['params']:
                    idx = [k for k in range(len(args))
                           if _T.lv_index(args, k, st) == p['lv']]
                    if len(idx) != 1:
                        raise SystemExit('%s.%s%s 的 lv=%d 对不上实参序号（候选 %r）'
                                         % (c['official'], m['official'], m['desc'], p['lv'], idx))
                    out.append('\t\t%d %s %s' % (idx[0], p['official'], p['named']))
                    npar += 1
    return out, npar, nst


def main():
    tiny = _os.path.join(_P.JOB, 'mappings.tiny')
    tsrg = _P.MAPPINGS
    for a in _sys.argv[1:]:
        if a.startswith('--tiny='):
            tiny = a.split('=', 1)[1]
        elif a.startswith('--tsrg='):
            tsrg = a.split('=', 1)[1]
    ns, classes = _T.read(tiny)
    acc, _ft = jar_access(_P.BASE_OK)
    got, npar, nst = to_tsrg(classes, acc)
    want = [ln.rstrip('\n') for ln in open(tsrg, encoding='utf-8') if ln.strip()]
    npad = sum(1 for ln in want if ln.startswith('\t\t') and not ln.strip() == 'static')
    if got == want:
        print('✔ round-trip 一致：类 %d / 行 %d / 参数 %d / static %d（对面参数 %d）'
              % (len(classes), len(got), npar, nst, npad))
        return 0
    print('✘ round-trip 不一致：tiny→tsrg %d 行，mappings.txt %d 行' % (len(got), len(want)))
    shown = 0
    for i in range(max(len(got), len(want))):
        a = got[i] if i < len(got) else '<EOL>'
        b = want[i] if i < len(want) else '<EOL>'
        if a != b:
            print('   L%-6d tiny→tsrg: %r' % (i + 1, a))
            print('   %-6s tsrg     : %r' % ('', b))
            shown += 1
            if shown >= 10:
                print('   …（只显示前 10 处）')
                break
    return 1


if __name__ == '__main__':
    _sys.exit(main())
