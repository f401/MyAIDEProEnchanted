#!/usr/bin/env python3
"""mkindex.py —— 生成 `smali_index.tsv`（类描述符 → **相对根目录的路径**）。

为什么必须有这张表：安卓的 FUSE/exFAT 是**大小写不敏感**的，`abcd/qG.smali` 和
`abcd/QG.smali` 会互相覆盖/别名，`abcd/kL` 直接拼路径会读到 `abcd/KL`。
另外 AIDE 这种包里有 `a/`（单字母包）和 `abcd/` 两个空间，同名短类满天飞，
只存裸文件名会在根之间串味。

所以索引里存**相对路径**（`a/am.smali`、`abcd/am.smali`），`smali.Index.file_for`
用 `os.path.join(root, name)` 就能精确命中。

用法:
  python3 tools/deob/mkindex.py \
      --root src/smali --root src/smali_classes2 --root src/smali_classes3 --root src/smali_classes4 \
      --out process/truth/smali_index.tsv
"""
import argparse, os, re, sys

RE_CLASS = re.compile(r'^\.class\s+.*?(L[^\s;]+;)', re.M)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--root', action='append', required=True)
    ap.add_argument('--out', required=True)
    a = ap.parse_args()
    seen, rows, dup = {}, [], 0
    for root in a.root:
        for dp, _dn, fs in os.walk(root):
            for f in sorted(fs):
                if not f.endswith('.smali'):
                    continue
                p = os.path.join(dp, f)
                try:
                    with open(p, encoding='utf-8', errors='replace') as fh:
                        head = fh.read(400)
                except OSError:
                    continue
                m = RE_CLASS.search(head)
                if not m:
                    continue
                desc = m.group(1)[1:-1]
                rel = os.path.relpath(p, root).replace('\\', '/')
                if desc in seen:
                    # 同描述符出现在两个根里（classes2/3 常见）：保留先到的，记一笔
                    dup += 1
                    continue
                seen[desc] = rel
                rows.append((desc, rel))
    rows.sort()
    os.makedirs(os.path.dirname(os.path.abspath(a.out)) or '.', exist_ok=True)
    with open(a.out, 'w', encoding='utf-8') as w:
        for d, r in rows:
            w.write('%s\t%s\n' % (d, r))
    print('索引 %d 条（重复描述符 %d 条已忽略）→ %s' % (len(rows), dup, a.out))


if __name__ == '__main__':
    main()
