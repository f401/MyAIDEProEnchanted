#!/usr/bin/env python3
"""tinyv2.py —— 极小的 Tiny v2（`tiny 2 0`）读写器，够用即可。

只支持本项目需要的子集：类 / 方法 / 字段 / 参数 / **注释**（`c` 行）。
局部变量（`v`）和 `p` 的注释都按行原样保留，不解释语义。

Tiny v2 与我们 TSRG2 的**列序不同**，这是最容易写错的地方：

    TSRG2 :  \\t<名字> <描述符> <新名>
    Tiny  :  \\tm\\t<描述符>\\t<名字>\\t<新名>        ← 描述符在前！

参数的索引：**实测 FART 1.0.8（内置 srgutils）把 `p` 的下标当成"描述符实参序号"**
（0 起、long/double 算 1 个、实例与静态**同号**），不是 LocalVariableTable 槽位：

    javac -g 的 Beta.inst(String,long,int) → LVT 槽 1/2/4，tiny 里写 p 0/1/2
    实测（$HOME/tmp/tinyfill，两份用例）：p 0 → 第 1 个实参，p 1 → 第 2 个，与 static 无关

Tiny v2 的书面约定是 LVT 槽位（Yarn 那种实例方法从 1 起；long/double 占 2 槽），两个实现
不一致。**本项目以 FART 为准**（打包链路只有它），需要书面约定时用 `--param-index=lv`
（emit_tiny2 / tiny_roundtrip / validate_tiny 都认这个开关），换算用 slots()/lv_index()。

注释（`c` 行）是本项目引入 tiny 的唯一理由：TSRG2/ProGuard 都没有"成员级注释"的位置。
"""
_TAB = {'\\': '\\\\', '\t': '\\t', '\n': '\\n', '\r': '\\r'}
_UN = {'\\': '\\', 't': '\t', 'n': '\n', 'r': '\r'}

HEADER = 'tiny\t2\t0'


def esc(s):
    """写盘前转义：反斜杠、制表、换行、回车。"""
    return ''.join(_TAB.get(ch, ch) for ch in (s or ''))


def unesc(s):
    out, i = [], 0
    while i < len(s):
        ch = s[i]
        if ch == '\\' and i + 1 < len(s):
            out.append(_UN.get(s[i + 1], s[i + 1]))
            i += 2
        else:
            out.append(ch)
            i += 1
    return ''.join(out)


def slots(t):
    """一个类型在 LVT 里占几个槽（long/double = 2）。"""
    return 2 if t in ('J', 'D') else 1


def lv_index(args, argidx, static):
    """实参序号(0 起) → LocalVariableTable 槽位（仅 `--param-index=lv` 时用）。"""
    lv = 0 if static else 1
    for a in args[:argidx]:
        lv += slots(a)
    return lv


def read(path):
    """→ (命名空间列表, [类])；类 = {official, named, comment, members}，
    成员 = {kind:'m'|'f', desc, official, named, comment, params:[{lv,official,named,comment}]}。"""
    ns, classes = None, []
    cls = mem = None
    for ln, line in enumerate(open(path, encoding='utf-8'), 1):
        line = line.rstrip('\n')
        if not line:
            continue
        if line.startswith('tiny'):
            f = line.split('\t')
            if len(f) < 4 or f[1] != '2' or f[0] != 'tiny':
                raise SystemExit('%s:%d 不是 Tiny v2 头：%r' % (path, ln, line))
            ns = f[3:]
            continue
        if ns is None:
            raise SystemExit('%s:%d 头行缺失（第一行必须是 tiny 2 0 ...）' % (path, ln))
        lvl = 0
        while lvl < len(line) and line[lvl] == '\t':
            lvl += 1
        f = line[lvl:].split('\t')
        w = len(ns)
        if lvl == 0:
            if f[0] != 'c':
                raise SystemExit('%s:%d 顶层只允许 c 行：%r' % (path, ln, line))
            if len(f) < w:
                raise SystemExit('%s:%d 名字列不足 %d 个：%r' % (path, ln, w, line))
            cls = {'official': f[1], 'named': f[2] if w > 1 else '',
                   'comment': unesc(f[1 + w]) if len(f) > 1 + w and f[1 + w] else '',
                   'members': []}
            classes.append(cls)
            mem = None
        elif lvl == 1:
            if cls is None:
                raise SystemExit('%s:%d 成员行在类行之前' % (path, ln))
            if f[0] == 'c':
                cls['comment'] = unesc(f[1]) if len(f) > 1 else ''
                continue
            if f[0] not in ('m', 'f'):
                raise SystemExit('%s:%d 未知类级子项 %r' % (path, ln, f[0]))
            if len(f) < w + 1:
                raise SystemExit('%s:%d 成员行列数不足：%r' % (path, ln, line))
            mem = {'kind': f[0], 'desc': f[1], 'official': f[2],
                   'named': f[3] if w > 1 else '',
                   'comment': unesc(f[2 + w]) if len(f) > 2 + w and f[2 + w] else '',
                   'params': []}
            cls['members'].append(mem)
        else:
            if mem is None:
                raise SystemExit('%s:%d 三级行在成员行之前' % (path, ln))
            if f[0] == 'c':
                mem['comment'] = unesc(f[1]) if len(f) > 1 else ''
                continue
            if f[0] != 'p':
                raise SystemExit('%s:%d 只支持 p 行（局部变量 v 不支持）：%r' % (path, ln, line))
            mem['params'].append({'index': int(f[1]), 'official': f[2],
                                  'named': f[3] if w > 1 else '',
                                  'comment': unesc(f[2 + w]) if len(f) > 2 + w and f[2 + w] else ''})
    if ns is None:
        raise SystemExit('%s 是空文件' % path)
    return ns, classes


def write(path, ns, classes):
    out = ['\t'.join([HEADER] + list(ns))]
    for c in classes:
        row = ['c', c['official'], c.get('named') or '']
        if c.get('comment'):
            row.append(esc(c['comment']))
        out.append('\t'.join(row))
        for m in c['members']:
            row = [m['kind'], m['desc'], m['official'], m.get('named') or '']
            if m.get('comment'):
                row.append(esc(m['comment']))
            out.append('\t' + '\t'.join(row))
            for p in m.get('params') or []:
                row = ['p', str(p['index']), p['official'], p.get('named') or '']
                if p.get('comment'):
                    row.append(esc(p['comment']))
                out.append('\t\t' + '\t'.join(row))
    with open(path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out) + '\n')
    return len(out)
