#!/usr/bin/env python3
"""labelnames.py —— 扫"返回单个字符串字面量的标签方法"，批量给 UI 类定名。

判据：混淆器不改字符串字面量。若某类的 `getTitle()/getSummary()/getLabel()/getName()/
getDescription()` 方法体是 `ldc "..."` 后直接返回，那么这个字面量就是它在界面上显示的文字。
配合"实现的接口/父类"就能定类名（如 Preference 页 → `...Preference`）。

用法:
  python3 tools/deob/labelnames.py [--methods getTitle,getSummary] [--only-unmapped] [--tsv]
"""
import os, sys, zipfile, argparse, collections
REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for p in ('tools/jgit', 'tools/deob'):
    q = os.path.join(REPO, p)
    if q not in sys.path:
        sys.path.insert(0, q)
import jvmbody, jvmcode

LABEL_METHODS = ('getTitle', 'getSummary', 'getLabel', 'getDescription', 'getText',
                 'getName', 'getMessage', 'toString')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', default=os.path.join(REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--methods', default=','.join(LABEL_METHODS))
    ap.add_argument('--only-unmapped', action='store_true')
    ap.add_argument('--tsv', action='store_true')
    a = ap.parse_args()
    want = set(x for x in a.methods.split(',') if x)
    mapped = set()
    for d in os.listdir(os.path.join(REPO, 'jobs')):
        f = os.path.join(REPO, 'jobs', d, 'class_map.tsv')
        if os.path.exists(f):
            for ln in open(f, encoding='utf-8'):
                t = ln.split('\t')
                if t and t[0]:
                    mapped.add(t[0] if '/' in t[0] else 'abcd/' + t[0])
    z = zipfile.ZipFile(a.jar)
    out = []
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if not cn.startswith('abcd/') or (a.only_unmapped and cn in mapped):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        hits = []
        for m in c['members']:
            if m['name'] in want and m.get('code') and m['desc'].startswith('()Ljava/lang/String;'):
                ev = jvmcode.decode(c, m['code'])
                ss = [e[1] for e in ev if e[0] == 'ldc' and isinstance(e[1], str)]
                if len(ss) == 1:
                    hits.append((m['name'], ss[0]))
        if hits:
            out.append((cn, c.get('sup') or '', ','.join((c.get('ifaces') or [])[:2]), hits))
    for cn, sup, ifs, hits in sorted(out):
        txt = ' | '.join('%s="%s"' % (k, v) for k, v in hits[:3])
        if a.tsv:
            print('%s\t%s\t%s\t%s' % (cn, txt, sup, ifs))
        else:
            print('%-16s %-60s sup=%-28s ifc=%s' % (cn, txt[:60], sup, ifs))


if __name__ == '__main__':
    main()
