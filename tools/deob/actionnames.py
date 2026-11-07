#!/usr/bin/env python3
"""actionnames.py —— 从 `getName()` 的返回常量批量列出"动作类"及其标签（硬判据）。

AIDE 的菜单动作都实现 `abcd/Yl` / `abcd/Wl`，而 `getName()` 一定返回**字符串字面量**
（混淆器不改字面量）。于是 `类 → 菜单标签` 是可复现的，标签再转 CamelCase 就是类名。

用法:
  python3 tools/deob/actionnames.py [--jar ...] [--only-unmapped] [--tsv]
输出: probe <TAB> 标签 <TAB> 建议目标 <TAB> 实现的接口
"""
import os, re, sys, json, zipfile, argparse
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for p in ('tools/jgit', 'tools/deob'):
    q = os.path.join(REPO, p)
    if q not in sys.path:
        sys.path.insert(0, q)
import jvmbody, jvmcode

IFACES = ('abcd/Yl', 'abcd/Wl', 'abcd/_l', 'abcd/am')


def camel(label):
    words = re.findall(r'[A-Za-z0-9]+', label)
    out = ''.join(w[:1].upper() + w[1:] for w in words)
    if out[:1].isdigit():
        out = 'N' + out
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', default=os.path.join(REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--only-unmapped', action='store_true')
    ap.add_argument('--tsv', action='store_true')
    a = ap.parse_args()
    mapped = set()
    for d in os.listdir(os.path.join(REPO, 'jobs')):
        f = os.path.join(REPO, 'jobs', d, 'class_map.tsv')
        if os.path.exists(f):
            for ln in open(f, encoding='utf-8'):
                t = ln.split('\t')
                if t and t[0]:
                    mapped.add(t[0] if '/' in t[0] else 'abcd/' + t[0])
    z = zipfile.ZipFile(a.jar)
    rows = []
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if a.only_unmapped and cn in mapped:
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        ifs = c.get('ifaces') or []
        if not any(i in ifs for i in IFACES):
            continue
        label = None
        for m in c['members']:
            if m['name'] == 'getName' and m.get('code'):
                ev = jvmcode.decode(c, m['code'])
                ss = [e[1] for e in ev if e[0] == 'ldc' and isinstance(e[1], str)]
                if len(ss) == 1:
                    label = ss[0]
                break
        rows.append((cn, label or '', ','.join(i.split('/')[-1] for i in ifs if i in IFACES)))
    rows.sort(key=lambda r: (r[1] == '', r[0]))
    for cn, label, ifs in rows:
        if a.tsv:
            print('%s\t%s\tcom/aide/ui/actions/%sAction\t%s' % (cn, label, camel(label) if label else '?', ifs))
        else:
            print('%-14s %-40s %-6s %s' % (cn, label or '(无字面量)', ifs, 'com/aide/ui/actions/%sAction' % (camel(label) if label else '?')))


if __name__ == '__main__':
    main()
