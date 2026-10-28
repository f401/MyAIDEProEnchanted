#!/usr/bin/env python3
"""shapescan.py [--loose] [--apply] —— 全库扫描：给**所有未映射的 abcd 类**找唯一形状匹配

与 shapefind.py 同一判据（字段/方法多重集 + super），但用哈希桶做 O(n) 索引，
一次扫完全部未映射类。--loose 把描述符里的对象类型折成 O（容忍未映射类型）。

安全性：
  * 只接受**全 oracle 唯一**命中；
  * 目标名不能已经被别的探针占用（避免 FART 重复目标）；
  * 探针不能已在 tsv 里。
--apply 直接追加到 tsv（证据写 shape:scan[--loose]），之后照例跑 rebuild/verify。
"""
import os, sys, re, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = HOME + '/out/work/jgit_map_clean.tsv'
LOOSE = '--loose' in sys.argv
APPLY = '--apply' in sys.argv

mp = {}
for l in open(TSV):
    f = l.rstrip('\n').split('\t')
    if len(f) > 1:
        mp[f[0]] = f[1]
TY = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def norm(d):
    return TY.sub(lambda m: 'L' + mp.get(m.group(1), m.group(1)) + ';', d)


def collapse(d):
    if '(' not in d:
        return 'O' if d.lstrip('[').startswith('L') else d.lstrip('[')
    b = d[1:d.index(')')]
    r = d[d.index(')') + 1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(x) for x in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


conv = collapse if LOOSE else norm


def sig(c):
    fs = collections.Counter()
    ms = collections.Counter()
    for m in c['members']:
        if m['kind'] == 'f':
            fs[(conv(m['desc']), m['acc'] & 0x18)] += 1
        else:
            ms[(conv(m['desc']), m['acc'] & 0x8)] += 1
    return (tuple(sorted(fs.items())), tuple(sorted(ms.items())), conv(c['sup'] or ''))


z = zipfile.ZipFile(ORACLE)
idx = collections.defaultdict(list)
orc_names = set()
for n in z.namelist():
    if not n.endswith('.class'):
        continue
    c = JB.parse(z.read(n))
    if not c or not c['this']:
        continue
    orc_names.add(c['this'])
    idx[sig(c)].append(c['this'])

taken = set(mp.values())
zb = zipfile.ZipFile(BASE)
hit, amb, none = [], [], []
for n in zb.namelist():
    if not n.endswith('.class'):
        continue
    cn = n[:-6]
    if not cn.startswith('abcd/') or cn in mp:
        continue
    try:
        c = JB.parse(zb.read(n))
    except Exception:
        continue
    if not c or not c['this']:
        continue
    cand = [t for t in idx.get(sig(c), []) if t not in taken]
    if len(cand) == 1:
        hit.append((cn, cand[0]))
    elif len(cand) > 1:
        amb.append((cn, cand))
    else:
        none.append(cn)

# 同一个目标被多个探针命中 ⇒ 该目标不可信，整组丢弃
claim = collections.Counter(t for _, t in hit)
dup = {t for t, n in claim.items() if n > 1}
if dup:
    print('目标被多个探针命中，丢弃: %s' % sorted(dup))
    hit = [(c, t) for c, t in hit if t not in dup]

print('未映射 abcd 类 %d：唯一命中 %d / 多候选 %d / 无候选 %d（%s）'
      % (len(hit) + len(amb) + len(none), len(hit), len(amb), len(none), 'loose' if LOOSE else 'strict'))
for cn, t in hit:
    print('  ★ %-18s → %s' % (cn, t))

if APPLY and hit:
    lines = open(TSV).read().rstrip('\n').split('\n')
    have = set(l.split('\t')[0] for l in lines)
    n = 0
    for cn, t in hit:
        k = cn.replace('abcd/', '')
        if k in have or t in taken:
            continue
        lines.append('%s\t%s\tshape:scan%s（字段/方法多重集+super 全库唯一）'
                     % (k, t, '--loose' if LOOSE else ''))
        have.add(k); taken.add(t); n += 1
    open(TSV, 'w').write('\n'.join(lines) + '\n')
    print('\n已写入 tsv：%d 条' % n)
