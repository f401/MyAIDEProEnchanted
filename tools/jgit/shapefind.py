#!/usr/bin/env python3
"""shapefind.py <探针裸名...> —— 用「成员形状多重集 + super」在全 oracle 里做唯一匹配

判定：把探针类的**字段**（名字无关，只比 类型+static/final）与**方法**
（名字无关，只比 归一化描述符 + static）做成多重集，要求与某个 oracle 类
**完全相等**（双向包含），并且 super 归一化后相同（或两边都是 Object）。
只有**唯一**一个 oracle 类满足时才输出 ★（否则列候选数）。

用途：给"只出现在别人描述符里"的未映射类型定名（它们没有成员映射可参考）。
"""
import os, sys, re, zipfile, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import jvmbody as JB

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
BASE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'

mp = {}
for l in open(HOME + '/out/work/jgit_map_clean.tsv'):
    f = l.rstrip('\n').split('\t')
    if len(f) > 1:
        mp['abcd/' + f[0]] = f[1]
TY = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def norm(d):
    return TY.sub(lambda m: 'L' + mp.get(m.group(1), m.group(1)) + ';', d)


def normcls(c):
    return mp.get(c, c)


def collapse(d):
    """把描述符里的对象类型全部折成 O（--loose 用，容忍未映射类型）"""
    if '(' not in d:                       # 字段描述符（如 I、[Ljava/lang/String;）
        return 'O' if d.lstrip('[').startswith('L') else d.lstrip('[')
    b = d[1:d.index(')')]
    r = d[d.index(')')+1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(x) for x in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


LOOSE = '--loose' in sys.argv


def shape(c):
    """返回 (fields multiset, methods multiset, super)"""
    fs = collections.Counter()
    ms = collections.Counter()
    for m in c['members']:
        if m['kind'] == 'f':
            fs[((collapse if LOOSE else norm)(m['desc']), 'S' if m['acc'] & 0x8 else '-',
                'F' if m['acc'] & 0x10 else '-')] += 1
        else:
            ms[((collapse if LOOSE else norm)(m['desc']), 'S' if m['acc'] & 0x8 else '-',
                'P' if m['acc'] & 0x2 else ('T' if m['acc'] & 0x4 else '-'))] += 1
    return fs, ms, normcls(c['sup'] or '')


def main():
    probe_names = [a for a in sys.argv[1:] if not a.startswith('--')]
    if not probe_names:
        print(__doc__); return 2
    z = zipfile.ZipFile(ORACLE)
    orc = {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        c = JB.parse(z.read(n))
        if c and c['this']:
            orc[c['this']] = shape(c)
    zb = zipfile.ZipFile(BASE)
    for pn in probe_names:
        cn = pn if pn.startswith('abcd/') else 'abcd/' + pn
        try:
            c = JB.parse(zb.read(cn + '.class'))
        except KeyError:
            print('%s  不存在' % cn); continue
        f1, m1, s1 = shape(c)
        hits = []
        for o, (f2, m2, s2) in orc.items():
            if f1 == f2 and m1 == m2 and (s1 == s2 or (s1 in ('', 'java/lang/Object') and s2 in ('', 'java/lang/Object'))):
                hits.append(o)
        tag = '★' if len(hits) == 1 else ('(%d)' % len(hits) if hits else '✗')
        print('%-16s 字段 %2d 方法 %2d  super %-46s %s %s'
              % (cn, sum(f1.values()), sum(m1.values()), s1,
                 tag, hits[:3] if hits else ''))
    return 0


sys.exit(main())
