#!/usr/bin/env python3
"""memberaudit.py —— 成员名体检：每个已定名的成员，名字在 oracle 同名类里**真的存在**吗？

动机：方法体指纹/描述符对位都是「从 oracle 的未用名字池里挑一个」，一旦挑错，
门禁（validate/inherit/famcheck）都发现不了——它们只管「这个成员存在、覆写链一致」，
不管「这个名字是不是这个方法的」。所以需要一条独立体检。

判定：
  * 只检查 members.tsrg 里 3 段的成员行（方法）；类块用 class_map 换成 oracle 类名；
  * oracle 类不存在 → 跳过（记为"无 oracle"）；
  * 名字不在 oracle 类的方法名集合里 → **可疑**，打印并退出码 1。

用法:
  python3 tools/deob/memberaudit.py [--oracle JAR] [--parts jobs/engine jobs/aide_engine ...]
"""
import argparse, glob, os, sys, zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(os.path.dirname(HERE))


def class_map_targets():
    tgt = {}
    for p in glob.glob(os.path.join(REPO, 'jobs', '*', 'class_map.tsv')):
        for line in open(p, encoding='utf-8'):
            f = line.rstrip('\n').split('\t')
            if len(f) >= 2 and f[0] and not f[0].startswith('#'):
                key = f[0] if '/' in f[0] else 'abcd/' + f[0]
                tgt.setdefault(key, f[1])
    return tgt


def oracle_method_names(jar):
    """{类名: {方法名}}"""
    out = {}
    z = zipfile.ZipFile(jar)
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        try:
            import jvmbody
            ms = jvmbody.parse(z.read(n))['members']
        except Exception:
            continue
        out[n[:-6]] = {x['name'] for x in ms if x.get('kind') == 'm'}
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--oracle', default=os.path.join(
        os.path.expanduser('~'), 'out/oracle/aide-plus/aide-plus-2.3.5-engine.jar'))
    ap.add_argument('--parts', nargs='*', default=['engine', 'aide_engine'])
    a = ap.parse_args()
    sys.path.insert(0, os.path.join(REPO, 'tools', 'jgit'))
    import jvmbody  # noqa: F401  (oracle_method_names 里用)
    tgt = class_map_targets()
    O = oracle_method_names(a.oracle)
    checked = skipped = bad = 0
    rows = []
    for part in a.parts:
        p = os.path.join(REPO, 'jobs', part, 'members.tsrg')
        if not os.path.exists(p):
            continue
        cur = None
        for line in open(p, encoding='utf-8'):
            if not line.startswith('\t'):
                f = line.split()
                cur = f[0] if f else None
                continue
            f = line.split()
            if len(f) < 3 or not cur:
                continue
            names = O.get(tgt.get(cur, ''))
            if not names:
                skipped += 1
                continue
            checked += 1
            if f[2] not in names:
                bad += 1
                rows.append((part, cur, f[0], f[1], f[2]))
    print(f'可校验 {checked} / 无 oracle {skipped} / **可疑 {bad}**')
    for r in rows[:40]:
        print('   %-12s %-26s %-4s %-40s → %s' % r)
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()
