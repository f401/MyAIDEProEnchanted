#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""rebuild_tsrg.py —— 逐个 part 从 class_map.tsv 重建 members.tsrg（块顺序 / 去重 / 丢陈旧块）。

分表结构（见 process/deob.json 的 `parts`）：

    process/truth/<part>/class_map.tsv   类映射（顺序决定本 part 的块顺序）
    process/truth/<part>/members.tsrg    成员映射（TSRG 块）
    process/truth/<part>/params.tsv      参数名（由 paramfill 生成）

每个 part 单独处理、单独写回；**不碰别的 part**。备份写到 `$HOME/out/work/rebuild/`。
处理完自动派生：`paramfill.py --write`（参数名）→ `emit_tsrg2.py process/mappings.txt`。
"""
import os
import shutil
import subprocess
import sys

HOME = os.path.expanduser('~')
BACKUP = os.path.join(HOME, 'out', 'work', 'rebuild')
MAPS = _P.MAPPINGS


def _key(probe):
    # jsch 等第三方包在 APK 里未被混淆，tsv 里直接写全名；abcd/* 写裸名
    return probe if '/' in probe else 'abcd/' + probe


def rebuild_part(part):
    d = os.path.join(_P.TRUTH, part)
    tsv = os.path.join(d, 'class_map.tsv')
    tsrg = os.path.join(d, 'members.tsrg')
    if not (os.path.exists(tsv) and os.path.exists(tsrg)):
        return None

    # 1. 读旧 tsrg 块
    blocks, order, dupblock, cur = {}, [], [], None
    for line in open(tsrg, encoding='utf-8').read().split('\n'):
        if not line:
            continue
        if line.startswith('\t'):
            if cur is None:
                raise SystemExit('%s: member before class: %r' % (part, line))
            blocks[cur].append(line)
        else:
            f = line.split(' ')
            key = f[0]
            if key in blocks:
                dupblock.append(key)
            else:
                blocks[key] = []
                order.append(key)
            cur = key

    # 2. 读 tsv（顺序 = 输出顺序）
    rows = []
    for line in open(tsv, encoding='utf-8').read().rstrip('\n').split('\n'):
        if not line.strip() or line.startswith('#'):
            continue
        f = line.split('\t')
        if len(f) < 2:
            raise SystemExit('%s: bad tsv line %r' % (part, line))
        rows.append((f[0], f[1]))

    # 3. 组装（块顺序按 tsv；同签名成员去重；类目标查重）
    out, seen_target, dup_member = [], {}, 0
    for probe, target in rows:
        key = _key(probe)
        if key not in blocks:
            print('  WARN %s 无成员块: %s %s' % (part, key, target))
            blocks[key] = []
        clean, seen = [], set()
        for l in blocks[key]:
            f = l.split(' ')
            k = (f[0],) + tuple(f[1:-1])       # 方法: name+desc；字段: name
            if k in seen:
                dup_member += 1
                continue
            seen.add(k)
            clean.append(l)
        if target in seen_target:
            raise SystemExit('%s 目标重复: %s 与 %s 都 -> %s' % (part, probe, seen_target[target], target))
        seen_target[target] = probe
        out.append('%s %s' % (key, target))
        out.extend(clean)

    dropped = [k for k in order if k not in {_key(r[0]) for r in rows}]
    print('%-6s 旧块 %d / tsv %d / 输出块 %d / 丢陈旧块 %d / 去重成员 %d%s' % (
        part, len(order), len(rows), len(rows), len(dropped), dup_member,
        (' / 重复块 %d' % len(dupblock)) if dupblock else ''))
    for k in dropped:
        print('  DROP', k)

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copyfile(tsrg, os.path.join(BACKUP, part + '.members.tsrg.bak'))
    with open(tsrg, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out) + '\n')
    return dict(part=part, blocks=len(rows), dropped=len(dropped), dup=dup_member)


def main():
    did = [r for r in (rebuild_part(p) for p in _P.PARTS) if r]
    print('合计：part %d / 类块 %d / 丢陈旧块 %d / 去重成员 %d' % (
        len(did), sum(r['blocks'] for r in did),
        sum(r['dropped'] for r in did), sum(r['dup'] for r in did)))

    # 5. 派生品：参数名（各 part 的 params.tsv）+ TSRG2（mappings.txt）
    here = os.path.dirname(os.path.abspath(__file__))
    for cmd in (['paramfill.py', '--write'], ['emit_tsrg2.py', MAPS]):
        r = subprocess.run([sys.executable, os.path.join(here, cmd[0])] + cmd[1:])
        if r.returncode:
            raise SystemExit('派生失败：%s' % cmd[0])


if __name__ == '__main__':
    main()
