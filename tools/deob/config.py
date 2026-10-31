#!/usr/bin/env python3
"""config.py —— 反混淆工程配置（JSON）。

一个"工程"= 一套待改名的探针 + 若干 oracle 版本 + 若干**映射分表**（part）。
所有通用工具都从这里取路径，不再硬编码任何项目路径。

**分表（parts）**：一个 APK 往往同时改名了多个依赖（jgit / jsch / AIDE 自有类…）。
把它们的真相按 part 分目录放，`mappings.txt` 再按 `parts` 顺序汇总——这样改动、评审、复用
都不会互相污染：

    truth/jgit/{class_map.tsv, members.tsrg, params.tsv}
    truth/jsch/{class_map.tsv, members.tsrg}
    truth/head/mappings_head.txt        ← 原样拼在输出最前的历史补丁

`parts` 里也可以直接写对象 `{"name": "...", "dir": "..."}`。没有 `parts` 时退化为
老写法（`class_map` / `member_map` / `param_map` / `head` 各一个文件），代码里统一按
**列表**访问（`project.class_map` 是路径列表）。

字段（除 name 外都可省略）：
  probe_dir       smali 根目录（探针类源码），如 "src/smali"
  smali_index     可选：`类描述符 <TAB> 文件名` 索引（大小写不敏感 FS 必用）
  probe_prefix    探针包前缀，默认 "abcd"；**每个 part 可以各写一个**（覆盖工程默认），
                  例如一个 APK 里 jgit 用 `abcd`、另一个库用 `zz`
  parts           映射分表目录列表（见上）；每目录自动认 class_map.tsv / members.tsrg /
                  params.tsv / mappings_head.txt
  class_map       类映射 TSV：`探针 <TAB> 目标 [<TAB> 证据]`（可给列表，等价于单 part）
  member_map      成员映射（TSRG 块文件，可给列表）
  param_map       可选的参数名表 TSV：`类 <TAB> 方法 <TAB> 描述符 <TAB> 序号 <TAB> 参数名 [<TAB> 来源]`
  head            可选的 TSRG2 头部行（原样拼在输出最前面；可给列表）
  out_tsrg        生成的 TSRG2 输出路径
  allow           白名单 TSV：`探针 <TAB> 新名 <TAB> 理由`（可选）
  base_jars       改名输入 jar 列表（用于 static 标志、validate）
  input_jars      实际要改名的 jar（可 glob）
  oracle_jars     oracle 版本：{"label": "...", "path": "..."} 或 ["path", ...]
  src_root        可选的原始源码根（如 "$HOME/src/jgit"，可给列表）：抽象/接口方法
                  的参数名从这里读声明（多个依赖各一份源码时用列表）
  out_dir         产物目录（默认 "out"）
  root            所有相对路径的基准（默认=配置文件所在目录）
"""
import json, os, glob


def _expand(p, root):
    if not p:
        return p
    p = os.path.expanduser(os.path.expandvars(p))
    return p if os.path.isabs(p) else os.path.join(root, p)


def _globs(pats, root):
    out = []
    for p in pats or []:
        e = _expand(p, root)
        out.extend(sorted(glob.glob(e)) if any(c in e for c in '*?[') else [e])
    return out


class Project:
    def __init__(self, path):
        self.path = os.path.abspath(path)
        base = os.path.dirname(self.path)
        with open(self.path, encoding='utf-8') as f:
            self.raw = json.load(f)
        c = self.raw
        # root：相对路径的基准（默认=配置文件所在目录；写 ".." 表示用仓库根）
        self.root = os.path.abspath(os.path.join(base, c.get('root') or '.'))
        self.name = c.get('name', os.path.basename(self.root))
        self.probe_dir = _expand(c.get('probe_dir'), self.root)
        self.probe_prefix = (c.get('probe_prefix') or 'abcd').rstrip('/')
        self.smali_index = _expand(c.get('smali_index'), self.root)
        self.parts = self._parse_parts(c)
        # 文件 → 该 part 的探针前缀（ClassMap/emit 用；短名探针按它展开）
        self.class_map_prefix = {p['class_map']: p['probe_prefix']
                                 for p in self.parts if p['class_map']}
        self.class_map = [p['class_map'] for p in self.parts if p['class_map']]
        self.member_map = [p['member_map'] for p in self.parts if p['member_map']]
        self.param_map = [p['param_map'] for p in self.parts if p['param_map']]
        self.head = [p['head'] for p in self.parts if p['head']]
        self.out_tsrg = _expand(c.get('out_tsrg'), self.root)
        self.allow = _expand(c.get('allow'), self.root)
        self.base_jars = _globs(c.get('base_jars'), self.root)
        self.input_jars = _globs(c.get('input_jars'), self.root)
        self.out_dir = _expand(c.get('out_dir') or 'out', self.root)
        _sr = c.get('src_root')
        self.src_root = [_expand(x, self.root) for x in (list(_sr) if isinstance(_sr, list) else [x for x in [_sr] if x])]
        oj = []
        for o in c.get('oracle_jars') or []:
            if isinstance(o, str):
                oj.append((os.path.basename(o)[:20], _expand(o, self.root)))
            else:
                oj.append((o.get('label') or os.path.basename(o['path'])[:20], _expand(o['path'], self.root)))
        self.oracle_jars = [x for x in oj if os.path.exists(x[1])]

    def _parse_parts(self, c):
        """→ [{'name','dir','class_map','member_map','param_map','head'}]（按输出顺序）。"""
        out = []
        for item in c.get('parts') or []:
            if isinstance(item, str):
                d = _expand(item, self.root)
                name = os.path.basename(d.rstrip('/')) or d
            else:
                d = _expand(item.get('dir'), self.root)
                name = item.get('name') or os.path.basename((d or '').rstrip('/'))
            cm = os.path.join(d, 'class_map.tsv') if d else None
            mm = os.path.join(d, 'members.tsrg') if d else None
            pm = os.path.join(d, 'params.tsv') if d else None
            hd = None
            for nm in ('mappings_head.txt', 'head.txt'):
                if d and os.path.exists(os.path.join(d, nm)):
                    hd = os.path.join(d, nm)
                    break
            pre = ((item.get('probe_prefix') if not isinstance(item, str) else None)
                   or self.probe_prefix).rstrip('/')
            out.append(dict(name=name, dir=d, probe_prefix=pre,
                            class_map=cm if cm and os.path.exists(cm) else None,
                            member_map=mm if mm and os.path.exists(mm) else None,
                            param_map=pm if pm and os.path.exists(pm) else None,
                            head=hd))
        if out:
            return out
        # 兼容老写法：单值（或列表）直接当一份 part
        return [dict(name='default', dir=None, probe_prefix=self.probe_prefix,
                     class_map=_expand(c.get('class_map'), self.root),
                     member_map=_expand(c.get('member_map'), self.root),
                     param_map=_expand(c.get('param_map'), self.root),
                     head=_expand(c.get('head'), self.root))]

    def part_of(self, probe_or_target):
        """按目标全名找 part（写工具用；找不到返回 None）。"""
        for p in self.parts:
            if p['class_map'] and os.path.exists(p['class_map']):
                for line in open(p['class_map'], encoding='utf-8'):
                    f = line.rstrip('\n').split('\t')
                    if len(f) > 1 and f[1] == probe_or_target:
                        return p['name']
        return None

    def describe(self):
        parts = '\n'.join('    %-10s %-34s %s' % (p['name'], p['probe_prefix'],
                                                   p['dir'] or '(单文件)') for p in self.parts)
        return ('工程 %s\n  probe_dir   %s\n  parts       %d\n%s\n  out_tsrg    %s\n'
                '  base_jars   %d\n  input_jars  %d\n  oracle      %s' % (
                    self.name, self.probe_dir, len(self.parts), parts, self.out_tsrg,
                    len(self.base_jars), len(self.input_jars),
                    ', '.join('%s' % l for l, _ in self.oracle_jars) or '（无）'))


def load(path):
    return Project(path)
