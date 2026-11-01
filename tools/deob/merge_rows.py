#!/usr/bin/env python3
"""merge_rows.py —— 把 classmatch/decisive 的报告行并进 part 的 class_map.tsv。

规则（宁缺勿错）：
  - 已有行一律不覆盖（人工确认过的判据优先）
  - 目标重复一律不写入（两个探针抢同一个 oracle 类 = 至少一个错）
  - 新行证据列写 `shape:<分>`，人工确认后自行改写
用法:
  python3 tools/deob/merge_rows.py --map jobs/spongycastle/class_map.tsv \\
      --report ~/tmp/sc_s1.tsv [--dry]
"""
import os, sys, argparse


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--map', required=True)
    ap.add_argument('--report', required=True, nargs='+')
    ap.add_argument('--dry', action='store_true')
    a = ap.parse_args()
    rows = []
    for ln in open(a.map, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[1]:
            rows.append([t[0], t[1], t[2] if len(t) > 2 else ''])
    have = {r[0] for r in rows}
    used = {r[1] for r in rows}
    added = dup = 0
    for rep in a.report:
        for ln in open(os.path.expanduser(rep), encoding='utf-8'):
            if ln.startswith('#'):
                continue
            t = ln.rstrip('\n').split('\t')
            if len(t) < 3 or not t[1]:
                continue
            p, o, sc = t[0], t[1], t[2]
            if p in have or o in used:
                if p not in have:
                    dup += 1
                    print('  跳过（目标已被占）：%s -> %s' % (p, o))
                continue
            rows.append([p, o, 'shape:%s' % sc])
            have.add(p); used.add(o); added += 1
    print('新增 %d 行，跳过重复目标 %d 行，总计 %d 行' % (added, dup, len(rows)))
    if a.dry:
        return
    with open(a.map, 'w', encoding='utf-8') as w:
        for r in sorted(rows):
            w.write('%s\t%s\t%s\n' % (r[0], r[1], r[2]))


if __name__ == '__main__':
    main()
