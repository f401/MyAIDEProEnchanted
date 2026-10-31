#!/usr/bin/env python3
"""split_truth.py —— 把「一份大 truth」按归属拆成多个 part 目录（或只看分布）。

**为什么分**：一个 APK 里往往同时改名了多个依赖（jgit / jsch / AIDE 自有类…）。
把它们塞进同一张 tsv，改动时冲突、评审时看不清、复用也只能整份搬。按 part 分开后：

    process/truth/<part>/class_map.tsv   探针 <TAB> 目标 <TAB> 证据
    process/truth/<part>/members.tsrg    TSRG 块
    process/truth/<part>/params.tsv      参数名（可选）

`process/deob.json` 的 `parts` 决定拼接顺序；`mappings.txt` 由各 part 汇总生成。

归属只看**目标全名**（不是探针名）：

| part | 目标前缀 |
|---|---|
| jgit | `org/eclipse/jgit/` |
| jsch | `com/jcraft/jsch/` |
| aide | `com/aide/`、`abcd/aide/` |

用法：
  python3 tools/deob/split_truth.py --report                 # 只看分布
  python3 tools/deob/split_truth.py --write --src <truth目录> --out <truth目录>
"""
import argparse
import collections
import os
import shutil
import sys

RULES = [
    ('jgit', ('org/eclipse/jgit/',)),
    ('jsch', ('com/jcraft/jsch/',)),
    ('aide', ('com/aide/', 'abcd/aide/')),
]
HEAD_NAME = 'mappings_head.txt'


def bucket_of(target):
    for name, pres in RULES:
        if target.startswith(pres):
            return name
    return None


def _probe_full(probe, prefix='abcd'):
    return probe if '/' in probe else prefix + '/' + probe


def read_class_map(path):
    rows = []
    for line in open(path, encoding='utf-8'):
        line = line.rstrip('\n')
        if not line or line.startswith('#'):
            continue
        f = line.split('\t')
        if len(f) < 2:
            continue
        rows.append(f)
    return rows


def read_members(path):
    """→ [(probe, target, [line,...])]，line 已去掉前导 TAB。"""
    out, cur = [], None
    for line in open(path, encoding='utf-8'):
        line = line.rstrip('\n')
        if not line.strip():
            continue
        if not line.startswith('\t'):
            f = line.split(' ')
            cur = [f[0], f[1] if len(f) > 1 else f[0], []]
            out.append(cur)
        else:
            cur[2].append(line[1:])
    return out


def split(src, out, prefix='abcd', write=False, log=print):
    cm_path = os.path.join(src, 'class_map.tsv')
    mm_path = os.path.join(src, 'members.tsrg')
    pr_path = os.path.join(src, 'params.tsv')
    head_path = os.path.join(src, HEAD_NAME)

    cm = read_class_map(cm_path)
    owner2part = {}
    for f in cm:
        part = bucket_of(f[1])
        if part is None:
            raise SystemExit('无法归属的类（目标前缀没有规则）：%s -> %s' % (f[0], f[1]))
        owner2part[_probe_full(f[0], prefix)] = part
    groups = collections.defaultdict(lambda: dict(cm=[], mm=[], pr=[]))
    for f in cm:
        groups[bucket_of(f[1])]['cm'].append(f)

    for probe, target, lines in read_members(mm_path) if os.path.exists(mm_path) else []:
        part = owner2part.get(probe)
        if part is None:
            part = bucket_of(target) or 'other'
        groups[part]['mm'].append((probe, target, lines))

    n_pr = 0
    if os.path.exists(pr_path):
        for line in open(pr_path, encoding='utf-8'):
            if not line.strip() or line.startswith('#'):
                continue
            f = line.rstrip('\n').split('\t')
            if len(f) < 5:
                continue
            part = owner2part.get(f[0])
            if part is None:
                raise SystemExit('参数行的类不在 class_map 里：%s' % f[0])
            groups[part]['pr'].append(f)
            n_pr += 1

    log('类 %d / 成员行 %d / 参数行 %d → part：%s' % (
        len(cm), sum(len(b[2]) for g in groups.values() for b in g['mm']), n_pr,
        ', '.join('%s(类%d 成员%d 参数%d)' % (k, len(v['cm']),
                                             sum(len(b[2]) for b in v['mm']), len(v['pr']))
                  for k, v in groups.items())))
    if not write:
        return groups

    for part, v in groups.items():
        d = os.path.join(out, part)
        os.makedirs(d, exist_ok=True)
        with open(os.path.join(d, 'class_map.tsv'), 'w', encoding='utf-8') as f:
            for row in v['cm']:
                f.write('\t'.join(row) + '\n')
        with open(os.path.join(d, 'members.tsrg'), 'w', encoding='utf-8') as f:
            for probe, target, lines in v['mm']:
                f.write('%s %s\n' % (probe, target))
                for ln in lines:
                    f.write('\t' + ln + '\n')
        if v['pr']:
            with open(os.path.join(d, 'params.tsv'), 'w', encoding='utf-8') as f:
                f.write('# 参数名：从 oracle jar 的 LocalVariableTable 取（index 是实参序号，0 起、不含 this）\n')
                f.write('# owner\tname\tdesc\tindex\tparam\tsrc\n')
                for row in v['pr']:
                    f.write('\t'.join(row) + '\n')
        log('  写出 %s：类 %d / 成员行 %d / 参数行 %d' % (
            d, len(v['cm']), sum(len(b[2]) for b in v['mm']), len(v['pr'])))

    if os.path.exists(head_path):
        hd = os.path.join(out, 'head')
        os.makedirs(hd, exist_ok=True)
        shutil.copyfile(head_path, os.path.join(hd, HEAD_NAME))
        log('  写出 %s（原样搬）' % os.path.join(hd, HEAD_NAME))
    return groups


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument('--src', default='process/truth')
    ap.add_argument('--out', default=None, help='默认同 --src（就地拆）')
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--write', action='store_true')
    ap.add_argument('--report', action='store_true')
    a = ap.parse_args(argv)
    split(a.src, a.out or a.src, a.prefix, write=a.write and not a.report)
    return 0


if __name__ == '__main__':
    raise SystemExit(main(sys.argv[1:]))
