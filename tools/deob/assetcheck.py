#!/usr/bin/env python3
"""assetcheck.py —— 资产包（运行期动态加载的 dex bundle）引用一致性。

不变量：`src/assets/data/functions/**` 里的 bundle **不参与改名**（构建时原样回填），
所以它们**引用到的任何类都不许被改名** —— 否则 bundle 里留着旧名，运行到那行就是
`NoClassDefFoundError: Failed resolution of: L旧名;`（踩过：en/zh 语言包引用
abcd/Be，而我们把它改名成 abcd/aide/MavenDependenciesConfig）。

用法:
  python3 tools/deob/assetcheck.py [-p process/deob.json]
"""
import os, sys, json, glob, zipfile, argparse, subprocess, tempfile
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

ASSET_REL = {'en': 'lang/en.jar', 'zh': 'lang/zh.jar',
             'ndk': 'runtime/ndk.zip', 'packagingservice': 'runtime/packagingservice.zip'}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    a = ap.parse_args()
    cfg = json.load(open(a.project, encoding='utf-8'))
    base = os.path.dirname(os.path.abspath(a.project))
    repo = os.path.dirname(base)
    renamed = {}
    for f in glob.glob(os.path.join(repo, 'jobs', '*', 'class_map.tsv')):
        for ln in open(f, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) > 1 and t[1] and t[0] != t[1]:
                renamed[t[0].split('/')[-1] if '/' not in t[0] else t[0]] = t[1]
    # 探针类短名也要能匹配（abcd/Ae 这种）
    # 成员映射（owner -> {(老名,描述符): 新名} / 字段 老名 -> 新名）
    mm, fm = {}, {}
    cur = None
    for f in glob.glob(os.path.join(repo, 'jobs', '*', 'members.tsrg')):
        for ln in open(f, encoding='utf-8'):
            ln = ln.rstrip('\n')
            if ln and not ln.startswith('\t'):
                cur = ln.split(' ')[0]; continue
            t = ln.strip().split(' ')
            if cur is None or not t:
                continue
            if len(t) == 3:
                mm.setdefault(cur, {})[(t[0], t[1])] = t[2]
            elif len(t) == 2 and t[0] != t[1]:
                fm.setdefault(cur, {})[t[0]] = t[1]
    bad_total = 0
    for key, rel in ASSET_REL.items():
        jar = os.path.join(base, 'src', key + '.jar')
        if not os.path.exists(jar):
            print('  跳过 %s（没有 %s）' % (key, jar)); continue
        z = zipfile.ZipFile(jar)
        refs = set()
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            try:
                c = jvmbody.parse(z.read(n))
            except Exception:
                continue
            if not c:
                continue
            refs |= {ow for (ow, nm, ds, tag) in (c.get('refmap') or {}).values() if ow}
            refs |= {x for x in [c['sup']] + list(c['ifaces'] or []) if x}
        bad = []
        for r in sorted(refs):
            tgt = renamed.get(r) or renamed.get(r.split('/')[-1])
            if tgt:
                bad.append(('类型', r, tgt))
        # 成员引用也要查（否则是 NoSuchMethodError / NoSuchFieldError）
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            try:
                c = jvmbody.parse(z.read(n))
            except Exception:
                continue
            for (ow, nm, ds, tag) in (c.get('refmap') or {}).values():
                if not ow:
                    continue
                got = mm.get(ow, {}).get((nm, ds))
                if got and got != nm:
                    bad.append(('方法', ow + '.' + nm, got))
                got = fm.get(ow, {}).get(nm)
                if got and got != nm:
                    bad.append(('字段', ow + '.' + nm, got))
        print('%-8s 类 %3d｜外部引用 %3d｜**被改名** %d' % (key, len([n for n in z.namelist() if n.endswith('.class')]), len(refs), len(bad)))
        for kind, r, t in bad:
            print('    ✘ [%s] %-40s -> %s（bundle 里还是旧名）' % (kind, r, t))
        bad_total += len(bad)
    print('\n合计违规 %d 条' % bad_total)
    return 0 if bad_total == 0 else 1


if __name__ == '__main__':
    sys.exit(main())
