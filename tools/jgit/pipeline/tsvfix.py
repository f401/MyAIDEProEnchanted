#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""tsvfix.py — 声明式修类映射（jgit_map_clean.tsv）。

fix 行: probe ␉ old ␉ new ␉ 证据
  old='-' 表示新增;  new='-' 表示删除该行
exact 校验 old，防止表过期误改。用法: tsvfix.py <tsv> <fix> [--apply]
"""
import sys


def main():
    tsv, fixf = sys.argv[1], sys.argv[2]
    apply = '--apply' in sys.argv
    rows = []
    for ln in open(tsv):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        f = ln.split('\t')
        rows.append(f)
    idx = {}
    for i, f in enumerate(rows):
        idx[f[0]] = i
    edits = []
    for ln in open(fixf):
        ln = ln.rstrip('\n')
        if not ln.strip() or ln.startswith('#'):
            continue
        f = ln.split('\t')
        if len(f) != 4:
            raise SystemExit('bad fix line: %r' % ln)
        edits.append(f)
    done = skip = 0
    for probe, old, new, ev in edits:
        i = idx.get(probe)
        cur = rows[i][1] if i is not None else None
        if cur != (None if old == '-' else old):
            print('SKIP  %-10s 现=%r 期望=%r' % (probe, cur, old))
            skip += 1
            continue
        if new == '-':
            del rows[i]
            idx = {f[0]: k for k, f in enumerate(rows)}
            print('DEL   %-10s (原 %s)' % (probe, old))
        elif i is None:
            rows.append([probe, new, ev])
            idx[probe] = len(rows) - 1
            print('ADD   %-10s -> %s' % (probe, new))
        else:
            rows[i][1] = new
            print('OK    %-10s %s -> %s' % (probe, old, new))
        done += 1
    print('\n# 应用 %d, 跳过 %d' % (done, skip))
    if apply:
        open(tsv, 'w').write('\n'.join('\t'.join(f) for f in rows) + '\n')
        print('# 已写回 %s (%d 行)' % (tsv, len(rows)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
