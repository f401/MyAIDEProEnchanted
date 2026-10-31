#!/usr/bin/env python3
"""smali.py —— 探针侧（smali）解析与定位。

大小写不敏感文件系统（FUSE/exFAT）上 `qF$a.smali` 与 `qF$a.1.smali` 会互相覆盖，
所以**类 → 文件名**必须查索引（`smali_index.tsv`），不要用 `类名 + .smali` 直接拼。
"""
import os
import re

MODS = {'public', 'private', 'protected', 'static', 'final', 'abstract', 'synthetic',
        'constructor', 'declared-synchronized', 'varargs', 'bridge', 'native',
        'transient', 'volatile', 'strictfp', 'enum', 'mandatory', 'empty'}


class Index:
    """类描述符 → smali 文件名。index 缺失时退化为 <短名>.smali。"""

    def __init__(self, path=None):
        self.map = {}
        if path and os.path.exists(path):
            for line in open(path, encoding='utf-8'):
                f = line.rstrip('\n').split('\t')
                if len(f) >= 2:
                    self.map[f[0]] = f[1]

    def file_for(self, probe_dir, probe):
        """类 → smali 文件。`probe_dir` 可以给**多个根**（一个 APK 常有 smali_classes2…）。

        先按索引里的文件名在各根下找，再按"包路径 + .smali"直接拼；都找不到时
        返回第一个根下的猜测路径（保持老行为，调用方用 os.path.exists 判）。
        """
        roots = list(probe_dir) if isinstance(probe_dir, (list, tuple)) else [probe_dir]
        roots = [r for r in roots if r]
        name = self.map.get(probe)
        short = probe.split('/', 1)[1] if '/' in probe else probe
        # 先试**完整描述符路径**，再退索引里的裸文件名。
        # （踩过：多个 probe_roots 时，索引只存裸名 `k.smali`，会在第一个根
        #   `src/smali/abcd/k.smali` 里命中同名但无关的类把内容读错。）
        cands = [probe + '.smali'] + ([name] if name and name != probe + '.smali' else [])
        if short != probe:
            cands.append(short + '.smali')
        # 候选**按优先级**遍历、根作内层：否则第一个根里的裸名（`abcd/k.smali`）
        # 会抢在别的根里的完整路径（`smali_classes2/com/a/b/g/k.smali`）前面。
        for c in cands:
            for r in roots:
                p = os.path.join(r, c)
                if os.path.exists(p):
                    return p
        return os.path.join(roots[0] if roots else '.', cands[-1])


def parse(path):
    """→ dict(descriptor, access, super, ifaces, methods[(n,d,static,synthetic)], fields,...)"""
    t = open(path, encoding='utf-8', errors='replace').read()
    m = re.search(r'^\.class\s+([^\n]+)$', t, re.M)
    if not m:
        return None
    toks = m.group(1).split()
    desc = toks[-1]
    out = dict(descriptor=desc.rstrip(';').lstrip('L'), class_access=toks[:-1],
               methods=[], fields=[], body={}, super=None, ifaces=[])
    for mm in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method', t, re.M | re.S):
        toks = mm.group(1).split()
        sig = None
        for x in toks:
            if x not in MODS:
                sig = x
                break
        if not sig or '(' not in sig:
            continue
        nm = sig[:sig.index('(')]
        ds = sig[sig.index('('):]
        st = 'static' in toks
        syn = 'synthetic' in toks or 'bridge' in toks
        out['methods'].append((nm, ds, st, syn))
        out['body'][(nm, ds)] = mm.group(2)
    for mm in re.finditer(r'^\.field\s+([^\n]+)$', t, re.M):
        toks = mm.group(1).split()
        fld = None
        for x in toks:
            if x not in MODS:
                fld = x
                break
        if not fld or ':' not in fld:
            continue
        n, ds = fld.split(':', 1)
        out['fields'].append((n, ds, 'static' in toks, 'synthetic' in toks))
    sm = re.search(r'^\.super\s+([^\n]+)$', t, re.M)
    out['super'] = sm.group(1).strip() if sm else None
    out['ifaces'] = re.findall(r'^\.implements\s+([^\n]+)$', t, re.M)
    return out


def iter_classes(probe_dir, prefix='abcd'):
    """遍历探针目录下的类文件（不做大小写去重，需要确定性时用 Index）。"""
    for f in sorted(os.listdir(probe_dir)):
        if f.endswith('.smali'):
            yield prefix + '/' + f[:-6], os.path.join(probe_dir, f)


def body_lines(body, strip=True):
    out = []
    for ln in body.split('\n'):
        s = ln.strip() if strip else ln
        if not s:
            continue
        if s.startswith(('.locals', '.end', '.annotation', '.param', 'value =',
                         '.catch', ':try', ':catch', '.line', '.prologue', '.source')):
            continue
        out.append(s)
    return out
