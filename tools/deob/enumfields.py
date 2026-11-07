#!/usr/bin/env python3
"""enumfields.py —— 从枚举的 `<clinit>` smali 解出「字段 → 常量名」（硬判据）。

判据：混淆器不改**字符串字面量**，枚举常量名一定以
    new-instance vX, LSelf;   const-string vY, "NAME"   ...   sput-object vX, LSelf;->field:LSelf;
的形式出现在 `<clinit>` 里。所以 `field -> NAME` 可复现、不需要 oracle。
（不要用 jvmbody 的 code 切片做这件事：它的偏移/长度表只适合"收集引用"，顺序敏感会串位。）

用法:
  python3 tools/deob/enumfields.py abcd/Md abcd/id [--all]
  python3 tools/deob/enumfields.py --all-enums          # 扫 src/smali/abcd 下所有 enum
  --tsv   输出 members.tsrg 字段行（`\t<field> <CONST_NAME>`）
"""
import os, re, sys, argparse, glob

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SRC = os.path.join(REPO, 'src/smali/abcd')


def find_smali(cls):
    """按 `.class L<cls>;` 找文件（FUSE 大小写不敏感，文件名不可靠）。"""
    short = cls.split('/')[-1]
    cands = glob.glob(os.path.join(SRC, short + '.smali')) + \
        glob.glob(os.path.join(SRC, short + '.*.smali')) + \
        glob.glob(os.path.join(SRC, short + '$*.smali'))
    for p in cands:
        try:
            head = open(p, encoding='utf-8', errors='replace').read(400)
        except OSError:
            continue
        if re.search(r'^\.class[^\n]*L%s;' % re.escape(cls), head, re.M):
            return p
    return None


def pairs_for(path, cls):
    txt = open(path, encoding='utf-8', errors='replace').read()
    m = re.search(r'^\.method[^\n]*static constructor <clinit>\(\)V(.*?)^\.end method',
                  txt, re.M | re.S)
    if not m:
        return []
    body = m.group(1)
    out = []
    cur = None          # 当前 new-instance 的寄存器
    name = None         # 该实例的常量名
    for ln in body.split('\n'):
        ln = ln.strip()
        mm = re.match(r'new-instance (v\d+), L%s;' % re.escape(cls), ln)
        if mm:
            cur, name = mm.group(1), None
            continue
        if cur is None:
            continue
        mm = re.match(r'const-string(?:/jumbo)? v\d+, "(.*)"', ln)
        if mm and name is None:
            name = mm.group(1)
            continue
        mm = re.match(r'sput-object %s, L%s;->([\w$]+):L%s;' % (cur, re.escape(cls), re.escape(cls)), ln)
        if mm:
            if name is not None:
                out.append((mm.group(1), name))
            cur, name = None, None
    return out


def all_enums():
    """扫 src/smali/abcd 的 `.class` 首行，收集所有枚举（按文件内容判断，不信文件名）。"""
    res = []
    for p in glob.glob(os.path.join(SRC, '*.smali')):
        try:
            with open(p, encoding='utf-8', errors='replace') as f:
                head = f.readline() + f.readline()
        except OSError:
            continue
        m = re.search(r'^\.class[^\n]*\benum (L[\w/$]+);', head, re.M)
        if m:
            res.append(m.group(1)[1:])
    return sorted(set(res))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('classes', nargs='*')
    ap.add_argument('--all-enums', action='store_true')
    ap.add_argument('--tsv', action='store_true')
    a = ap.parse_args()
    classes = a.classes or (all_enums() if a.all_enums else [])
    for cn in classes:
        p = find_smali(cn)
        if not p:
            print('# 找不到 smali（可能被大小写撞名覆盖）：%s' % cn, file=sys.stderr)
            continue
        rows = pairs_for(p, cn)
        if not a.tsv:
            print('== %s (%d 个常量)' % (cn, len(rows)))
        for f, name in rows:
            if a.tsv:
                print('%s\t%s\t%s' % (cn, f, name))
            else:
                print('   %-6s %s' % (f, name))


if __name__ == '__main__':
    main()
