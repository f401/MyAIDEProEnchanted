#!/usr/bin/env python3
"""shape.py —— 用"成员形状多重集"跨 oracle 版本找候选类。

形状 = (方法:(折叠描述符, static) 多重集, 字段:(折叠类型, static) 多重集)。
折叠：描述符里的类型若能经 class_map 翻译成真名就用真名，否则折成 `LO`（loose）。
**形状命中只是候选**，必须再用 body（字符串/引用/调用点）复核。
"""
import collections
import re

from oracle import TYPEREF


def fold(desc, class_map=None, loose=True):
    def rep(m):
        t = m.group(1)
        if class_map and t in class_map:
            return 'L' + class_map[t] + ';'
        return 'LO' if loose else 'L' + t + ';'
    return TYPEREF.sub(rep, desc or '')


def signature(methods, fields, class_map=None, loose=True):
    ms = collections.Counter()
    fs = collections.Counter()
    for n, d, s in methods:
        if n in ('<init>', '<clinit>'):
            continue
        ms[(fold(d, class_map, loose), bool(s))] += 1
    for n, d, s in fields:
        fs[(fold(d, class_map, loose), bool(s))] += 1
    return tuple(sorted(ms.items())), tuple(sorted(fs.items()))


def build_index(oracle, class_map=None, loose=True, prefix='org/'):
    idx = collections.defaultdict(list)
    for label in oracle.labels:
        for cls in oracle.classes(label):
            if prefix and not cls.startswith(prefix):
                continue
            m = oracle.members(label, cls)
            if not m:
                continue
            idx[signature(m['methods'], m['fields'], class_map, loose)].append((label, cls))
    return idx


def find(idx, methods, fields, class_map=None, loose=True, topk=8):
    """→ [(label, cls)]，同签名多版本去重后返回。"""
    sig = signature(methods, fields, class_map, loose)
    hits = idx.get(sig, [])
    seen, out = set(), []
    for label, cls in hits:
        if cls in seen:
            continue
        seen.add(cls)
        out.append((label, cls))
        if len(out) >= topk:
            break
    return out


def overlap_index(oracle, probe_methods, class_map=None, prefix='org/', min_hit=1, topk=10):
    """形状不完全相等时的"最像"打分：按描述符重合度排序。"""
    pm = collections.Counter()
    for n, d, s in probe_methods:
        if n in ('<init>', '<clinit>'):
            continue
        pm[fold(d, class_map)] += 1
    res = []
    for label in oracle.labels:
        for cls in oracle.classes(label):
            if prefix and not cls.startswith(prefix):
                continue
            m = oracle.members(label, cls)
            if not m:
                continue
            om = collections.Counter()
            for n, d, s in m['methods']:
                if n in ('<init>', '<clinit>'):
                    continue
                om[fold(d, class_map)] += 1
            hit = sum(min(v, om.get(k, 0)) for k, v in pm.items())
            if hit >= min_hit:
                res.append((hit / max(1, sum(pm.values())), hit, cls, label))
    res.sort(key=lambda t: (-t[0], -t[1]))
    seen, out = set(), []
    for r in res:
        if r[2] in seen:
            continue
        seen.add(r[2]); out.append(r)
        if len(out) >= topk:
            break
    return out
