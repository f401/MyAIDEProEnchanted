#!/usr/bin/env python3
"""mapping.py —— 映射表：类映射(TSV) + 成员映射(TSRG 块) + TSRG2 输出。

真相是这两张表；`mappings.txt`（TSRG2）永远由它们生成，不要手改。
  class_map : `探针 <TAB> 目标 [<TAB> 证据]`   （探针可写裸名，前缀由工程配置给）
  member_map: TSRG 块
      abcd/X  some/pkg/X
      \t<旧名> <描述符> <新名>      ← 方法
      \t<旧字段名> <新字段名>        ← 字段
"""
import os
import re
import zipfile
import collections

import jvm


def full(probe, prefix):
    return probe if '/' in probe else prefix + '/' + probe


class ClassMap:
    def __init__(self, path=None, prefix='abcd'):
        self.path = path
        self.prefix = prefix
        self.rows = []          # [(probe_as_written, target, evidence)]

    def load(self):
        if not self.path or not os.path.exists(self.path):
            return self
        for line in open(self.path, encoding='utf-8'):
            line = line.rstrip('\n')
            if not line or line.startswith('#'):
                continue
            f = line.split('\t')
            if len(f) < 2:
                continue
            self.rows.append((f[0], f[1], f[2] if len(f) > 2 else ''))
        return self

    def save(self):
        with open(self.path, 'w', encoding='utf-8') as f:
            for probe, target, ev in self.rows:
                f.write('%s\t%s%s\n' % (probe, target, ('\t' + ev) if ev else ''))

    @property
    def dict(self):
        return {full(p, self.prefix): t for p, t, _ in self.rows}

    def targets(self):
        return collections.Counter(t for _, t, _ in self.rows)

    def set(self, probe, target, evidence=''):
        for i, (p, t, e) in enumerate(self.rows):
            if p == probe:
                self.rows[i] = (probe, target, evidence or e)
                return
        self.rows.append((probe, target, evidence))

    def delete(self, probe):
        self.rows = [r for r in self.rows if r[0] != probe]


class MemberMap:
    """blocks: 有序 [(probe, target, [line,...])]，line 为去掉前导 TAB 的原文。"""

    def __init__(self, path=None):
        self.path = path
        self.order = []
        self.blocks = {}
        self.target = {}

    def load(self):
        if not self.path or not os.path.exists(self.path):
            return self
        cur = None
        for line in open(self.path, encoding='utf-8'):
            line = line.rstrip('\n')
            if not line.strip():
                continue
            if not line.startswith('\t'):
                f = line.split(' ')
                cur = f[0]
                self.order.append(cur)
                self.blocks[cur] = []
                self.target[cur] = f[1] if len(f) > 1 else cur
            else:
                self.blocks[cur].append(line[1:])
        return self

    def save(self):
        with open(self.path, 'w', encoding='utf-8') as f:
            for probe in self.order:
                f.write('%s %s\n' % (probe, self.target.get(probe, probe)))
                for ln in self.blocks[probe]:
                    f.write('\t' + ln + '\n')

    def iter_members(self):
        """→ (probe, kind, name, desc, new)"""
        for probe in self.order:
            for ln in self.blocks[probe]:
                f = ln.split(' ')
                if not f or f[0] == 'static':
                    continue
                if len(f) >= 3 and f[1].startswith('('):
                    yield probe, 'm', f[0], f[1], f[2]
                elif len(f) >= 2:
                    yield probe, 'f', f[0], '', f[-1]

    def index(self):
        mm, fm = {}, {}
        for probe, kind, name, desc, new in self.iter_members():
            if kind == 'm':
                mm[(probe, name, desc)] = new
            else:
                fm[(probe, name)] = new
        return mm, fm

    def find_line(self, probe, kind, name, desc=''):
        for i, ln in enumerate(self.blocks.get(probe, [])):
            f = ln.split(' ')
            if not f or f[0] == 'static':
                continue
            if kind == 'm' and len(f) >= 3 and f[0] == name and f[1] == desc:
                return i
            if kind == 'f' and len(f) >= 2 and f[0] == name:
                return i
        return None

    def set(self, probe, kind, name, desc, new):
        """new=None 删除；返回 'OK'/'ADD'/'DEL'/'SKIP'"""
        i = self.find_line(probe, kind, name, desc)
        if new is None:
            if i is None:
                return 'SKIP'
            del self.blocks[probe][i]
            return 'DEL'
        if i is None:
            if kind == 'm':
                self.blocks.setdefault(probe, []).append('%s %s %s' % (name, desc, new))
            else:
                self.blocks.setdefault(probe, []).append('%s %s' % (name, new))
            return 'ADD'
        f = self.blocks[probe][i].split(' ')
        f[-1] = new
        self.blocks[probe][i] = ' '.join(f)
        return 'OK'

    def ensure_block(self, probe, target):
        if probe not in self.blocks:
            self.order.append(probe)
            self.blocks[probe] = []
            self.target[probe] = target


# ---------- static 标志（TSRG2 的 `\t\tstatic` 只对方法有效） ----------

def static_index(jars):
    """probe 类 → {(名字,描述符): 是否 static}；同时返回 字段集合。"""
    idx = {}
    for path in jars:
        if not os.path.exists(path):
            continue
        z = zipfile.ZipFile(path)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            cn = n[:-6]
            if cn in idx:
                continue
            try:
                c = jvm.parse(z.read(n))
            except Exception:
                continue
            idx[cn] = {(m['name'], m['desc']): bool(m['acc'] & 0x8) for m in c['members'] if m['kind'] == 'm'}
    return idx


def emit_tsrg2(project, member_map=None, class_map=None, out=None):
    """写出 TSRG2：头部（可选）+ 按类映射顺序的块 + static 标记。返回行数。"""
    cm = class_map or ClassMap(project.class_map, project.probe_prefix).load()
    mm = member_map or MemberMap(project.member_map).load()
    out = out or project.out_tsrg
    stat = static_index(project.base_jars + project.input_jars)
    targets = {}
    lines = []
    if project.head and os.path.exists(project.head):
        for ln in open(project.head, encoding='utf-8'):
            ln = ln.rstrip('\n')
            if ln or ln == '':
                lines.append(ln)
    n_cls = n_mem = 0
    for probe_w, target, _ev in cm.rows:
        probe = full(probe_w, project.probe_prefix)
        if target in targets:
            raise SystemExit('目标重复: %s 与 %s 都 -> %s' % (probe, targets[target], target))
        targets[target] = probe
        lines.append('%s %s' % (probe, target))
        n_cls += 1
        for ln in mm.blocks.get(probe, []):
            lines.append('\t' + ln)
            n_mem += 1
            f = ln.split(' ')
            if len(f) >= 3 and f[1].startswith('('):
                if stat.get(probe, {}).get((f[0], f[1])) and f[-1] != f[0]:
                    lines.append('\t\tstatic')
    with open(out, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines) + '\n')
    return n_cls, n_mem, len(lines)


# ---------- 声明式编辑（mapfix 语义） ----------

def apply_edits(member_map, edits):
    """edits: [(probe, 'm'|'f', name, desc, old, new)]；old 与现状不符则跳过。"""
    mm = member_map
    done = []
    for probe, kind, name, desc, old, new in edits:
        i = mm.find_line(probe, kind, name, desc)
        cur = None
        if i is not None:
            cur = mm.blocks[probe][i].split(' ')[-1]
        if cur != old:
            done.append(('SKIP', probe, name, desc, cur, old))
            continue
        mm.set(probe, kind, name, desc, new)
        done.append(('DEL' if new is None else ('OK' if i is not None else 'ADD'),
                     probe, name, desc, old, new))
    return done


def read_edits(path):
    out = []
    for line in open(path, encoding='utf-8'):
        line = line.rstrip('\n')
        if not line.strip() or line.startswith('#'):
            continue
        f = line.split('\t')
        if len(f) != 6:
            raise SystemExit('bad edit line: %r' % line)
        probe, kind, name, desc, old, new = f
        out.append((probe, kind, name, '' if desc == '-' else desc,
                    None if old == '-' else old, None if new == '-' else new))
    return out
