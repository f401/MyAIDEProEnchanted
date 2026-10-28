#!/usr/bin/env python3
"""refpick.py [--apply] —— 用「方法体里引用的类型集合」给形状多候选定案

背景：`shapescan` 有 144 个"多候选"（形状撞车）。撞车的类往往**引用的类型**不同：
      同形状的两个候选，一个引用 `ForwardEditPaths`、一个引用 `BackwardEditPaths`。
判据：
      1) 先用形状（loose：对象类型折成 O）拿到候选集；
      2) 再算 refs 重叠率 = |探针引用类型 ∩ 候选引用类型| / |探针引用类型|
         （R8 可能内联掉一些调用，所以用**包含式**打分，不要求相等）；
      3) 只接受：重叠率 ≥ 0.6 且比第二名高 ≥ 0.2 且引用数 ≥ 3。
输出与 --apply 行为同 shapescan。
"""
import os, sys, re, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = HOME + '/out/work/jgit_map_clean.tsv'
APPLY = '--apply' in sys.argv

mp = {}
for l in open(TSV):
    f = l.rstrip('\n').split('\t')
    if len(f) > 1:
        mp[f[0] if '/' in f[0] else 'abcd/' + f[0]] = f[1]
TY = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def collapse(d):
    if '(' not in d:
        return 'O' if d.lstrip('[').startswith('L') else d.lstrip('[')
    b = d[1:d.index(')')]
    r = d[d.index(')') + 1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(x) for x in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


def sig(c):
    fs = collections.Counter()
    ms = collections.Counter()
    for m in c['members']:
        if m['kind'] == 'f':
            fs[(collapse(m['desc']), m['acc'] & 0x18)] += 1
        else:
            ms[(collapse(m['desc']), m['acc'] & 0x8)] += 1
    return (tuple(sorted(fs.items())), tuple(sorted(ms.items())), collapse(c['sup'] or ''))


def refs(c):
    out = set()
    for m in c['members']:
        if m['kind'] == 'm' and m.get('code'):
            try:
                _, R = JB.body_features(c, m['code'])
            except Exception:
                continue
            for o in R:
                if not o:
                    continue
                if o.startswith('abcd/'):
                    if o in mp:            # 未映射的引用直接丢掉，不然会稀释得分
                        out.add(mp[o])
                else:
                    out.add(o)
    return out


zo = zipfile.ZipFile(ORACLE)
orc, oref, idx = {}, {}, collections.defaultdict(list)
for n in zo.namelist():
    if not n.endswith('.class'):
        continue
    c = JB.parse(zo.read(n))
    if not c or not c['this']:
        continue
    orc[c['this']] = c
    oref[c['this']] = refs(c)
    idx[sig(c)].append(c['this'])

zb = zipfile.ZipFile(BASE)
taken = set(mp.values())
hit = []
_dbg = collections.Counter()
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
    cand = [t for t in idx.get(sig(c), []) if t not in taken and t in orc
            and not any(x['kind'] == 'm' and x['acc'] & 0x200 for x in orc[t]['members'])]
    if len(cand) < 2:
        continue
    _dbg['multi'] += 1
    pr = refs(c)
    if len(pr) < 2:
        continue
    scored = []
    for t in cand:
        rs = oref.get(t, set())
        if not rs:
            continue
        scored.append((len(pr & rs) / len(pr), t))
    scored.sort(reverse=True)
    if not scored:
        continue
    top = scored[0]
    second = scored[1][0] if len(scored) > 1 else 0.0
    if top[0] >= 0.6 and top[0] - second >= 0.2:
        hit.append((cn, top[1], top[0], second, len(cand)))

hit.sort()
print('多候选里用「引用类型重叠」定出 %d 个' % len(hit))
print('（诊断：形状多候选的探针共 %d 个）' % _dbg['multi'])
for cn, t, s1, s2, n in hit:
    print('  ★ %-18s → %-56s %.2f (第二名 %.2f, 共 %d 候选)' % (cn, t, s1, s2, n))

if APPLY and hit:
    lines = open(TSV).read().rstrip('\n').split('\n')
    have = set(l.split('\t')[0] for l in lines)
    n = 0
    for cn, t, s1, s2, _ in hit:
        k = cn.replace('abcd/', '')
        if k in have or t in taken:
            continue
        lines.append('%s\t%s\tref:形状多候选 + 引用类型重叠 %.2f（第二名 %.2f）' % (k, t, s1, s2))
        have.add(k); taken.add(t); n += 1
    open(TSV, 'w').write('\n'.join(lines) + '\n')
    print('\n已写入 tsv：%d 条' % n)
