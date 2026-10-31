#!/usr/bin/env python3
"""javasrc.py —— 从 .java 源码里读出**方法声明的形参名**（用在 oracle jar 没有 Code 的抽象/接口方法上）。

口径（都可复现）：
  1) 去掉注释/字符串/字符字面量；
  2) 只认 `名字(参数) [throws ...] {` 或 `... ;` 这种声明形状；
  3) 每个参数段必须解析出「类型 + 名字」，名字是合法标识符、不是关键字；
  4) 先按 (方法名, 参数个数) 分组；组里有**无方法体**的声明（抽象/接口方法）时只用这些；
  5) 还有多条时用形参类型（去掉泛型/包名/注解）与字节码描述符逐个比对；
  6) 仍不唯一 → 返回 None（不猜）。
"""
import os
import re

KW = {'if', 'for', 'while', 'switch', 'catch', 'synchronized', 'return', 'new', 'assert',
      'else', 'do', 'try', 'throw', 'case', 'super', 'this', 'instanceof', 'yield'}
_IDENT = re.compile(r'[A-Za-z_$][\w$]*')
_DECL = re.compile(r'(?<![\w$.])([A-Za-z_$][\w$]*)\s*\(([^()]*)\)\s*'
                   r'(?:throws\s+[\w$.,\s]+?)?\s*([{;])')
_PRIM = {'I': 'int', 'J': 'long', 'Z': 'boolean', 'B': 'byte', 'C': 'char',
         'S': 'short', 'F': 'float', 'D': 'double', 'V': 'void'}


def strip_literals(s):
    out, i, n = [], 0, len(s)
    while i < n:
        c = s[i]
        if c == '/' and i + 1 < n and s[i + 1] == '/':
            j = s.find('\n', i)
            i = n if j < 0 else j
            out.append(' ')
        elif c == '/' and i + 1 < n and s[i + 1] == '*':
            j = s.find('*/', i + 2)
            i = n if j < 0 else j + 2
            out.append(' ')
        elif c in '"\'':
            q, i = c, i + 1
            while i < n:
                if s[i] == '\\':
                    i += 2
                    continue
                if s[i] == q:
                    i += 1
                    break
                i += 1
            out.append(q + q)
        else:
            out.append(c)
            i += 1
    return ''.join(out)


def _split_params(txt):
    """按顶层逗号切；`<...>`/`[...]`/`(...)` 里的逗号不算。"""
    out, depth, cur = [], 0, ''
    for c in txt:
        if c in '<([':
            depth += 1
        elif c in '>)]':
            depth -= 1
        if c == ',' and depth == 0:
            out.append(cur)
            cur = ''
        else:
            cur += c
    if cur.strip():
        out.append(cur)
    return out


def _simple_type(t):
    t = re.sub(r'@[\w$.]+(\([^)]*\))?', ' ', t)          # 注解
    t = re.sub(r'\bfinal\b', ' ', t)
    t = re.sub(r'<[^<>]*>', '', t)                       # 泛型（含一层嵌套）
    t = re.sub(r'<[^<>]*>', '', t)
    t = t.replace('...', '[]').replace(' ', '')
    return t.rsplit('.', 1)[-1]


def _param(seg):
    """'final Map<String,Integer> rows' → ('Map', 'rows')；解析不出返回 None。"""
    seg = seg.strip()
    if not seg:
        return None
    m = _IDENT.findall(_simple_type(seg.replace('[]', ' ')))
    seg2 = seg.replace('...', '[]')
    toks = [t for t in re.split(r'\s+', seg2) if t]
    if len(toks) < 2:
        return None
    name = toks[-1].replace('[]', '')
    if not _IDENT.fullmatch(name) or name in KW:
        return None
    typ = _simple_type(' '.join(toks[:-1]))
    return (typ, name)


def file_decls(path):
    """→ {(方法名, 参数个数): [(类型元组, 名字元组, 有无方法体)]}"""
    txt = strip_literals(open(path, encoding='utf-8', errors='replace').read())
    out = {}
    for m in _DECL.finditer(txt):
        name, raw, term = m.group(1), m.group(2), m.group(3)
        if name in KW:
            continue
        if re.search(r'new\s+$', txt[max(0, m.start() - 8):m.start()]):
            continue
        ps = [_param(s) for s in _split_params(raw)]
        if any(p is None for p in ps):
            continue
        key = (name, len(ps))
        out.setdefault(key, set()).add((tuple(p[0] for p in ps),
                                        tuple(p[1] for p in ps),
                                        term == ';'))
    return {k: sorted(v) for k, v in out.items()}


def desc_simple_types(desc):
    """'(ILjava/lang/String;[B)V' → ('int','String','byte[]')"""
    out, i = [], 1
    while i < len(desc) and desc[i] != ')':
        dim = 0
        while desc[i] == '[':
            dim += 1
            i += 1
        if desc[i] == 'L':
            j = desc.index(';', i)
            nm = desc[i + 1:j].rsplit('/', 1)[-1].rsplit('$', 1)[-1]
            i = j + 1
        else:
            nm = _PRIM.get(desc[i], desc[i])
            i += 1
        out.append(nm + '[]' * dim)
    return tuple(out)


def lookup(src_root, owner, method, desc):
    """owner 如 `org/eclipse/jgit/lib/RefDatabase`（可含 `$内部类`）；method 是方法名（或 `<init>`）。"""
    outer = owner.split('$')[0]
    path = os.path.join(src_root, outer + '.java')
    if not os.path.exists(path):
        return None
    name = outer.rsplit('/', 1)[-1] if method in ('<init>', '<clinit>') else method
    want = desc_simple_types(desc)
    cand = file_decls(path).get((name, len(want)))
    if not cand:
        return None
    bodyless = [c for c in cand if c[2]]
    if bodyless:
        cand = bodyless
    exact = [c for c in cand if c[0] == want]
    if len(exact) == 1:
        return list(exact[0][1])
    if len(cand) == 1:
        return list(cand[0][1])
    return None


if __name__ == '__main__':
    import sys
    print(lookup(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]))
