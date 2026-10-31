#!/usr/bin/env python3
"""config.py —— 反混淆工程配置（JSON）。

一个"工程"= 一套待改名的探针 + 若干 oracle 版本 + 两张映射表。所有通用工具都从这里取路径，
不再硬编码任何项目路径。

字段（除 name 外都可省略）：
  probe_dir       smali 根目录（探针类源码），如 "src/smali"
  smali_index     可选：`类描述符 <TAB> 文件名` 索引（大小写不敏感 FS 必用）
  probe_prefix    探针包前缀，默认 "abcd"（类描述符去壳后用于查 index）
  class_map       类映射 TSV：`探针 <TAB> 目标 [<TAB> 证据]`
  member_map      成员映射（TSRG 块文件）
  param_map       可选的参数名表 TSV：`类 <TAB> 方法 <TAB> 描述符 <TAB> 序号 <TAB> 参数名 [<TAB> 来源]`
  head            可选的 TSRG2 头部行（原样拼在输出最前面）
  out_tsrg        生成的 TSRG2 输出路径
  allow           白名单 TSV：`探针 <TAB> 新名 <TAB> 理由`（可选）
  base_jars       改名输入 jar 列表（用于 static 标志、validate）
  input_jars      实际要改名的 jar（可 glob）
  oracle_jars     oracle 版本：{"label": "...", "path": "..."} 或 ["path", ...]
  src_root        可选的原始源码根（如 "$HOME/src/jgit"）：抽象/接口方法的参数名从这里读声明
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
        self.class_map = _expand(c.get('class_map'), self.root)
        self.member_map = _expand(c.get('member_map'), self.root)
        self.param_map = _expand(c.get('param_map'), self.root)
        self.head = _expand(c.get('head'), self.root)
        self.out_tsrg = _expand(c.get('out_tsrg'), self.root)
        self.allow = _expand(c.get('allow'), self.root)
        self.base_jars = _globs(c.get('base_jars'), self.root)
        self.input_jars = _globs(c.get('input_jars'), self.root)
        self.out_dir = _expand(c.get('out_dir') or 'out', self.root)
        self.src_root = _expand(c.get('src_root'), self.root)
        oj = []
        for o in c.get('oracle_jars') or []:
            if isinstance(o, str):
                oj.append((os.path.basename(o)[:20], _expand(o, self.root)))
            else:
                oj.append((o.get('label') or os.path.basename(o['path'])[:20], _expand(o['path'], self.root)))
        self.oracle_jars = [x for x in oj if os.path.exists(x[1])]

    def describe(self):
        return ('工程 %s\n  probe_dir   %s\n  class_map   %s\n  member_map  %s\n  out_tsrg    %s\n'
                '  base_jars   %d\n  input_jars  %d\n  oracle      %s' % (
                    self.name, self.probe_dir, self.class_map, self.member_map, self.out_tsrg,
                    len(self.base_jars), len(self.input_jars),
                    ', '.join('%s' % l for l, _ in self.oracle_jars) or '（无）'))


def load(path):
    return Project(path)
