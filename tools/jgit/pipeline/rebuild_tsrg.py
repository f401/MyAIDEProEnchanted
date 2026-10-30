#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""从 tsv（唯一类名真相）重建 tsrg：每类只保留一个块，成员行按旧类名取。
- tsv 顺序决定类块顺序
- 旧 tsrg 中不在 tsv 的块（陈旧块）整块丢弃
- 成员行去重（同 name+desc 只留一条）
"""
import sys, os
HOME = os.path.expanduser('~')
TSV = _P.MAP
TSRG_IN = _P.TSRG
TSRG_OUT = _P.TSRG
HEAD = _P.HEAD
MAPS = '/storage/emulated/0/MyAIDEProEnchanted/process/mappings.txt'

# 1. 读旧 tsrg 块
blocks = {}
order = []
cur = None
dupblock = []
for line in open(TSRG_IN).read().split('\n'):
    if not line:
        continue
    if line.startswith('\t'):
        if cur is None:
            raise SystemExit('member before class: %r' % line)
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
print('旧 tsrg: 类块 %d, 重复块 %d' % (len(order), len(dupblock)))
for k in dupblock:
    print('  DUP BLOCK', k)

# 2. 读 tsv
rows = []
for line in open(TSV).read().rstrip('\n').split('\n'):
    f = line.split('\t')
    if len(f) < 2:
        raise SystemExit('bad tsv line %r' % line)
    rows.append((f[0], f[1]))

# 3. 组装
out = []
seen_target = {}
dropped = []
dup_member = 0
def _key(probe):
    # jsch 等第三方包在 APK 里未被混淆，tsv 里直接写全名；abcd/* 写裸名
    return probe if '/' in probe else 'abcd/' + probe

for probe, target in rows:
    key = _key(probe)
    if key not in blocks:
        print('  WARN 无成员块:', key, target)
        blocks[key] = []
    lines = blocks[key]
    clean = []
    seen = set()
    for l in lines:
        f = l.split(' ')
        # 方法行: name desc newname ; 字段行: name newname
        sig = tuple(f[1:-1])
        k = (f[0],) + sig
        if k in seen:
            dup_member += 1
            continue
        seen.add(k)
        clean.append(l)
    if target in seen_target:
        raise SystemExit('目标重复: %s 与 %s 都 -> %s' % (probe, seen_target[target], target))
    seen_target[target] = probe
    out.append('%s %s' % (key, target))
    out.extend(clean)

# 4. 丢弃的陈旧块
for key in order:
    if key not in set(_key(r[0]) for r in rows):
        dropped.append((key, blocks[key] and None))
dropped = [k for k in order if k not in set(_key(r[0]) for r in rows)]
print('tsv 类 %d, 输出类块 %d, 丢弃陈旧块 %d, 去重成员 %d' % (len(rows), len(rows), len(dropped), dup_member))
for k in dropped:
    print('  DROP', k)

import shutil
shutil.copyfile(TSRG_IN, TSRG_IN + '.bak')
open(TSRG_OUT, 'w').write('\n'.join(out) + '\n')

# 5. mappings.txt
head = open(HEAD).read().rstrip('\n').split('\n')
while head and head[-1] == '':
    head.pop()
open(MAPS, 'w').write('\n'.join(head) + '\n' + '\n'.join(out) + '\n')
print('mappings.txt: 头 %d + jgit %d 行' % (len(head), len(out)))
