#!/usr/bin/env python3
"""innercheck.py —— 内部类归属不变量体检（D8 的 "Malformed inner-class attribute" 就是它被破坏）。

不变量（改名前后都成立）：
  1) 探针 `X$y` 的映射若也是内部类形式 `A$b`，则 `A` 必须等于 `map(X)`；
  2) 探针顶层类不许映射成 `$` 形式的内部类；探针内部类不许映射成顶层类；
  3) 探针 `X$y` 与 `X$z` 的映射不许撞成同一个 `A$b`。

破坏后果：FART 只换名字，会留下 `outer=CodedOutputStream / inner=CrashlyticsListener / innerName=a`
这种自相矛盾的 InnerClasses 属性（D8 打 Info），反射 getSimpleName/getEnclosingClass 出错。

用法:
  python3 tools/deob/innercheck.py [-p process/deob.json] [--parts jobs/crashlytics jobs/fabric ...]
"""
import os, sys, json, argparse, glob, collections


def load_part(path, prefix):
    d = {}
    f = os.path.join(path, 'class_map.tsv')
    if not os.path.exists(f):
        return d
    for ln in open(f, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) < 2 or not t[1]:
            continue
        k = t[0]
        if '/' not in k and prefix:
            k = prefix + '/' + k
        d[k] = t[1]
    return d


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--parts', nargs='*', default=None)
    a = ap.parse_args()
    cfg = json.load(open(a.project, encoding='utf-8'))
    base = os.path.dirname(os.path.abspath(a.project))
    dirs = a.parts or [os.path.normpath(os.path.join(base, p['dir'])) for p in cfg['parts'] if p.get('dir')]
    allrows, owner = {}, {}
    for d in dirs:
        pref = None
        for p in cfg['parts']:
            if p.get('dir') and os.path.normpath(os.path.join(base, p['dir'])) == os.path.normpath(d):
                pref = p.get('probe_prefix')
        rows = load_part(d, pref)
        for k, v in rows.items():
            allrows[k] = v; owner[k] = os.path.basename(os.path.normpath(d))
    print('合计类映射 %d 条（%d 个 part）' % (len(allrows), len(set(owner.values()))))
    bad1, bad2, bad3 = [], [], []
    seen = collections.defaultdict(list)
    for p, o in allrows.items():
        pin, oin = '$' in p, '$' in o
        # 探针顶层 → 目标内部类：**正常**（R8/ProGuard 把匿名类拍平成顶层 `abcd/AC`，
        # 真名却是 `X$1`；FART 会连外层 InnerClasses 一起改）。只有反向才是错配：
        # 探针真内部类 `X$y` → 目标顶层类，会让外层留下
        # `outer=X / inner=顶层类 / innerName=a` 这种自相矛盾的属性（D8 报 Malformed）。
        if pin and not oin:
            bad2.append((p, o, '探针内部类 → 目标顶层类（会毁外层 InnerClasses）'))
            continue
        if not pin:
            continue
        pouter, oouter = p.rsplit('$', 1)[0], o.rsplit('$', 1)[0]
        exp = allrows.get(pouter)
        if exp is None:
            bad1.append((p, o, '外层 %s 没有类映射（无法校验）' % pouter))
        elif exp != oouter:
            bad1.append((p, o, '外层应为 %s，实际 %s' % (exp, oouter)))
        seen[o].append(p)
    for o, ps in seen.items():
        if len(ps) > 1:
            bad3.append((o, ps))
    print('\n① 外层归属不一致: %d 条' % len(bad1))
    for p, o, why in bad1:
        print('   %-46s -> %-52s %s' % (p, o, why))
    print('② 内部类/顶层类 错配: %d 条' % len(bad2))
    for p, o, why in bad2:
        print('   %-46s -> %-52s %s' % (p, o, why))
    print('③ 多个探针映射到同一目标: %d 条' % len(bad3))
    for o, ps in bad3:
        print('   %-52s <- %s' % (o, ps))
    return 0 if not (bad1 or bad2 or bad3) else 1


if __name__ == '__main__':
    sys.exit(main())
