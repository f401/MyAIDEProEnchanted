#!/usr/bin/env python3
"""oracle.py —— 多版本"真名"侧（class jar）访问。

一个工程可以有多个 oracle 版本（例如 jgit 3.7.1 / 4.11.9 / 5.13.3）。
本模块只做"按标签懒加载 + 成员清单 + 引用常量池"，不做任何项目判断。
"""
import os
import re
import struct
import zipfile
import collections

TYPEREF = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def _parse_class(b):
    n = struct.unpack_from('>H', b, 8)[0]
    o = 10; i = 1
    utf = {}
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, o)[0]
            utf[i] = b[o+2:o+2+ln].decode('utf-8', 'replace'); o += 2 + ln
        elif tag in (7, 8, 16, 19, 20):
            o += 2
        elif tag == 15:
            o += 3
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18):
            o += 4
        elif tag in (5, 6):
            o += 8; i += 1
        else:
            raise ValueError(tag)
        i += 1
    p = o + 6
    ic = struct.unpack_from('>H', b, p)[0]
    p += 2 + 2 * ic
    res = dict(methods=[], fields=[])
    for kind in ('f', 'm'):
        cnt = struct.unpack_from('>H', b, p)[0]; p += 2
        for _ in range(cnt):
            acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
            for _ in range(ac):
                ln = struct.unpack_from('>I', b, p+2)[0]; p += 6 + ln
            (res['fields'] if kind == 'f' else res['methods']).append(
                (utf.get(nm), utf.get(ds), bool(acc & 0x8)))
    return res


class Oracle:
    """oracle_jars: [(label, path)]，按需打开。"""

    def __init__(self, jars):
        self.jars = list(jars)
        self._z = {}
        self._cache = {}
        self._names = {}

    @property
    def labels(self):
        return [l for l, _ in self.jars]

    def _zip(self, label):
        if label not in self._z:
            path = dict(self.jars)[label]
            self._z[label] = zipfile.ZipFile(path)
        return self._z[label]

    def classes(self, label):
        if label not in self._names:
            self._names[label] = [n[:-6] for n in self._zip(label).namelist() if n.endswith('.class')]
        return self._names[label]

    def members(self, label, cls):
        k = (label, cls)
        if k in self._cache:
            return self._cache[k]
        b = None
        try:
            b = self._zip(label).read(cls + '.class')
        except KeyError:
            pass
        v = _parse_class(b) if b else None
        self._cache[k] = v
        return v

    def has(self, label, cls):
        return self.members(label, cls) is not None

    def find(self, cls):
        """在所有版本里找第一个有该类的标签 → (label, members) 或 (None, None)"""
        for l in self.labels:
            m = self.members(l, cls)
            if m:
                return l, m
        return None, None


def norm_desc(desc, class_map):
    """把描述符里的探针类型替换成目标类型（class_map: 'abcd/X' → 'org/...'）。"""
    return TYPEREF.sub(lambda m: 'L' + class_map.get(m.group(1), m.group(1)) + ';', desc)


def shape_of(desc):
    """把描述符折成"形状"：对象→O，数组→[], 基本类型保留。"""
    if '(' not in desc:
        r = desc
        return 'O' if r.lstrip('[').startswith('L') else r.lstrip('[')
    b = desc[1:desc.index(')')]
    r = desc[desc.index(')')+1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(p) for p in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


def member_multiset(members, fold=norm_desc, class_map=None):
    c = collections.Counter()
    for n, d, s in members['methods']:
        if n in ('<init>', '<clinit>'):
            continue
        c[('m', fold(d, class_map or {}) if class_map is not None else d, s)] += 1
    for n, d, s in members['fields']:
        c[('f', fold(d, class_map or {}) if class_map is not None else d, s)] += 1
    return c
