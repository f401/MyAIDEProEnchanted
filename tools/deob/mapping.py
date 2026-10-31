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
import params


def full(probe, prefix):
    return probe if '/' in probe else prefix + '/' + probe


class ClassMap:
    """多文件类映射：`path` 可以是单文件或列表（列表顺序 = part 顺序 = 输出顺序）。

    `rows` 仍是 `(探针, 目标, 证据)` 三元组；`src_of[探针]` 记住它来自哪个文件，
    `save()` 按来源分文件写回（新增的行走 `part_path` / 第一个文件），这样
    "一份大表拆成多个 part" 之后，改哪行就只动哪个文件。
    """

    def __init__(self, path=None, prefix='abcd'):
        if path is None:
            self.paths = []
        elif isinstance(path, str):
            self.paths = [path]
        else:
            self.paths = [p for p in path if p]
        self.path = self.paths[0] if self.paths else None
        self.prefix = prefix
        self.rows = []          # [(probe_as_written, target, evidence)]
        self.src_of = {}        # probe_as_written -> 文件

    def load(self):
        for p in self.paths:
            if not p or not os.path.exists(p):
                continue
            for line in open(p, encoding='utf-8'):
                line = line.rstrip('\n')
                if not line or line.startswith('#'):
                    continue
                f = line.split('\t')
                if len(f) < 2:
                    continue
                probe = f[0]
                self.rows.append((probe, f[1], f[2] if len(f) > 2 else ''))
                self.src_of.setdefault(probe, p)
        return self

    def save(self):
        groups = collections.OrderedDict((p, []) for p in self.paths)
        for probe, target, ev in self.rows:
            p = self.src_of.get(probe) or self.path
            groups.setdefault(p, []).append((probe, target, ev))
        for p, rows in groups.items():
            if not p:
                continue
            os.makedirs(os.path.dirname(os.path.abspath(p)) or '.', exist_ok=True)
            with open(p, 'w', encoding='utf-8') as f:
                for probe, target, ev in rows:
                    f.write('%s\t%s%s\n' % (probe, target, ('\t' + ev) if ev else ''))
        return len(self.rows)

    @property
    def dict(self):
        return {full(p, self.prefix): t for p, t, _ in self.rows}

    def targets(self):
        return collections.Counter(t for _, t, _ in self.rows)

    def set(self, probe, target, evidence='', part_path=None):
        for i, (p, t, e) in enumerate(self.rows):
            if p == probe:
                self.rows[i] = (probe, target, evidence or e)
                return
        self.rows.append((probe, target, evidence))
        self.src_of.setdefault(probe, part_path or self.path)

    def delete(self, probe):
        self.rows = [r for r in self.rows if r[0] != probe]
        self.src_of.pop(probe, None)


class MemberMap:
    """多文件成员映射（TSRG 块）。`path` 可为单文件或列表；写回按来源分文件。

    blocks: 有序 [(probe, target, [line,...])]，line 为去掉前导 TAB 的原文。
    """

    def __init__(self, path=None):
        if path is None:
            self.paths = []
        elif isinstance(path, str):
            self.paths = [path]
        else:
            self.paths = [p for p in path if p]
        self.path = self.paths[0] if self.paths else None
        self.order = []
        self.blocks = {}
        self.target = {}
        self.src_of = {}

    def load(self):
        for path in self.paths:
            if not path or not os.path.exists(path):
                continue
            cur = None
            for line in open(path, encoding='utf-8'):
                line = line.rstrip('\n')
                if not line.strip():
                    continue
                if not line.startswith('\t'):
                    f = line.split(' ')
                    cur = f[0]
                    if cur in self.blocks:      # 多文件里同名块：保留第一次（part 顺序即优先级）
                        continue
                    self.order.append(cur)
                    self.blocks[cur] = []
                    self.target[cur] = f[1] if len(f) > 1 else cur
                    self.src_of[cur] = path
                elif cur is not None:
                    self.blocks[cur].append(line[1:])
        return self

    def save(self):
        groups = collections.OrderedDict((p, []) for p in self.paths)
        for probe in self.order:
            groups.setdefault(self.src_of.get(probe) or self.path, []).append(probe)
        for path, probes in groups.items():
            if not path:
                continue
            os.makedirs(os.path.dirname(os.path.abspath(path)) or '.', exist_ok=True)
            with open(path, 'w', encoding='utf-8') as f:
                for probe in probes:
                    f.write('%s %s\n' % (probe, self.target.get(probe, probe)))
                    for ln in self.blocks[probe]:
                        f.write('\t' + ln + '\n')
        return sum(len(self.blocks[p]) for p in self.order)

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

    def ensure_block(self, probe, target, part_path=None):
        if probe not in self.blocks:
            self.order.append(probe)
            self.blocks[probe] = []
            self.target[probe] = target
            self.src_of[probe] = part_path or self.path


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
    """写出 TSRG2：头部（可选）+ 按类映射顺序的块 + static 标记 + 参数名。返回行数。

    参数行是 `\t\t<实参序号> <名字> <名字>`：srgutils 的 TSRG2 解析器要求**两列名字都给**
    （表头 `tsrg2 obf deobf` 有两列，参数行也必须是「序号 + 每列一个名字」共 3 段）。
    """
    cm = class_map or ClassMap(project.class_map, project.probe_prefix).load()
    mm = member_map or MemberMap(project.member_map).load()
    out = out or project.out_tsrg
    stat = static_index(project.base_jars + project.input_jars)
    pmap = params.load_tsv(project.param_map)
    targets = {}
    lines = ['tsrg2 obf deobf']
    heads = project.head if isinstance(project.head, (list, tuple)) else [project.head]
    for hp in heads:
        if not hp or not os.path.exists(hp):
            continue
        for ln in open(hp, encoding='utf-8'):
            ln = ln.rstrip('\n')
            if ln.strip() and ln.strip() != 'tsrg2 obf deobf':
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
                for i, nm, _src in pmap.get((probe, f[0], f[1]), []):
                    lines.append('\t\t%d %s %s' % (i, nm, nm))
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
