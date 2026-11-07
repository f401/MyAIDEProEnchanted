#!/usr/bin/env python3
"""enumsearch.py —— 用**枚举常量名**在 oracle jar 里反查身份（硬判据，可复现）。

混淆器不改字符串字面量，所以枚举常量名在探针和 oracle 里是同一组词。给定探针枚举的常量名，
在 oracle jar 里找"包含全部这些字符串"的 class，就得到疑似类名；再用成员数/描述符复核。

用法:
  python3 tools/deob/enumsearch.py abcd/nt$a --oracle ~/out/oracle/dx/dx-1.16.jar
  python3 tools/deob/enumsearch.py --consts MOVE_PARAM_COMBINER,SCCP --oracle a.jar b.jar
"""
import os, sys, re, glob, argparse, zipfile, subprocess

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(REPO, 'tools/deob'))
import enumfields


def consts_of(cls):
    p = enumfields.find_smali(cls)
    if not p:
        sys.exit('找不到 smali：%s' % cls)
    return [n for _, n in enumfields.pairs_for(p, cls)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('classes', nargs='*')
    ap.add_argument('--consts', default='')
    ap.add_argument('--oracle', nargs='+', required=True)
    a = ap.parse_args()
    groups = []
    for c in a.classes:
        groups.append((c, consts_of(c)))
    if a.consts:
        groups.append(('--consts', a.consts.split(',')))
    jars = []
    for pat in a.oracle:
        jars += glob.glob(os.path.expanduser(pat))
    for j in jars:
        try:
            z = zipfile.ZipFile(j)
        except Exception as e:
            print('# 跳过 %s（%s）' % (j, e))
            continue
        for cn, cs in groups:
            if not cs:
                continue
            need = [x.encode() for x in cs]
            hits = []
            for n in z.namelist():
                if not n.endswith('.class'):
                    continue
                b = z.read(n)
                if all(x in b for x in need):
                    hits.append(n[:-6])
            if hits:
                print('%s %s  →  %s' % (cn, cs[:4], ', '.join(hits[:6])))


if __name__ == '__main__':
    main()
