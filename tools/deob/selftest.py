#!/usr/bin/env python3
"""selftest.py —— 通用工具链自检：在一份**独立的**工程配置上跑通整条链路。

它不依赖具体项目：从现有工程里取一份"子集"真相当输入，写到 out/selftest/ 下，用**新配置**
（新目录、无 head、无 smali_index）跑 emit → validate → inherit → pkgs → cover → shape → q，
全部通过才算通用路径可用。

    python3 tools/deob/selftest.py -p process/deob.json [--keep]

退出码 0 = 全绿。
"""
import json
import os
import shutil
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)

import config
import mapping
import smali
import checks


def sh(*args):
    return subprocess.run([sys.executable] + list(args), cwd=REPO,
                          capture_output=True, text=True)


def main():
    args = sys.argv[1:]
    proj = args[args.index('-p') + 1] if '-p' in args else 'process/deob.json'
    keep = '--keep' in args
    P = config.load(os.path.join(REPO, proj) if not os.path.isabs(proj) else proj)
    work = os.path.join(REPO, 'out', 'selftest')
    os.makedirs(work, exist_ok=True)
    truth = os.path.join(work, 'truth')
    os.makedirs(truth, exist_ok=True)

    # 1) 取子集：前 8 个"有 oracle 同形"的类 + 它们的成员映射
    cm = mapping.ClassMap(P.class_map, P.probe_prefix).load()
    mm = mapping.MemberMap(P.member_map).load()
    def weight(r):
        return -len(mm.blocks.get(mapping.full(r[0], P.probe_prefix), []))
    pick = sorted([r for r in cm.rows if mapping.full(r[0], P.probe_prefix) in mm.blocks],
                  key=weight)[:8]
    if not pick:
        print('FAIL 取不到子集（class_map/member_map 不匹配）'); return 1
    sub_cm = os.path.join(truth, 'class_map.tsv')
    sub_mm = os.path.join(truth, 'members.tsrg')
    kept = {mapping.full(p, P.probe_prefix) for p, _, _ in pick}
    # 补上这些类的**已映射祖先**（否则子集里必然报 MISSING，属于取样假象）
    _idx = smali.Index(P.smali_index)
    frontier = list(kept)
    cmap = cm.dict
    while frontier:
        c = frontier.pop()
        path = _idx.file_for(P.probe_dir, c)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        for sup in ([pr['super']] if pr['super'] else []) + list(pr['ifaces']):
            sup = sup.strip('L;') if sup else ''
            if sup and sup in cmap and sup not in kept:
                kept.add(sup); frontier.append(sup)
    with open(sub_cm, 'w', encoding='utf-8') as f:
        for probe, target, ev in cm.rows:
            if mapping.full(probe, P.probe_prefix) in kept:
                f.write('%s\t%s\t%s\n' % (probe, target, ev))
    with open(sub_mm, 'w', encoding='utf-8') as f:
        for probe in mm.order:
            if probe not in kept:
                continue
            f.write('%s %s\n' % (probe, mm.target.get(probe, probe)))
            for ln in mm.blocks[probe]:
                f.write('\t' + ln + '\n')

    # 2) 新配置：新目录、无 head、无 smali_index（考验回退）
    cfg = dict(P.raw)
    cfg.pop('head', None)
    cfg.pop('smali_index', None)
    cfg['name'] = 'selftest'
    cfg['root'] = '../..'
    cfg['class_map'] = 'out/selftest/truth/class_map.tsv'
    cfg['member_map'] = 'out/selftest/truth/members.tsrg'
    cfg['out_tsrg'] = 'out/selftest/mappings.txt'
    cfg['out_dir'] = 'out/selftest'
    cfg_path = os.path.join(work, 'deob.json')
    json.dump(cfg, open(cfg_path, 'w', encoding='utf-8'), ensure_ascii=False, indent=2)

    import hashlib
    src = {}
    for k, v in (('class_map', P.class_map), ('member_map', P.member_map), ('out_tsrg', P.out_tsrg)):
        src[k] = v
    def _h(p):
        return hashlib.sha256(open(p, 'rb').read()).hexdigest() if os.path.exists(p) else '-'
    before = {k: _h(v) for k, v in src.items()}
    ok = True

    def check(name, cond, detail=''):
        nonlocal ok
        print(('PASS  ' if cond else 'FAIL  ') + name + (('  ' + detail) if detail else ''))
        ok = ok and bool(cond)

    # 3) 链路
    r = sh(os.path.join('tools/deob/cli.py'), '-p', os.path.relpath(cfg_path, REPO), 'emit')
    check('emit', r.returncode == 0, r.stdout.strip().splitlines()[-1] if r.stdout else r.stderr[-200:])

    S = config.load(cfg_path)
    bad, detail, stats = checks.validate(S)
    check('validate', not bad, '类块 %d / 成员行 %d / 基线 %d' %
          (stats['classes'], stats['members'], stats['base_classes']))

    conf, miss = checks.inherit(S)
    check('inherit', not conf and not miss, 'CONFLICT %d / MISSING %d' % (len(conf), len(miss)))

    moves, conflicts = checks.pkgs(S)
    check('pkgs', True, '需挪包 %d / 真冲突 %d' % (len(moves), len(conflicts)))

    cov = checks.cover(S)
    hm, tm = cov['methods']
    check('cover', tm > 0, '方法 %d/%d' % (hm, tm))

    r = sh(os.path.join('tools/deob/cli.py'), '-p', os.path.relpath(cfg_path, REPO),
           'shape', pick[0][0])
    out = (r.stdout or '') + (r.stderr or '')
    check('shape', r.returncode == 0 and '==' in out, out.strip().splitlines()[0][:70] if out.strip() else '(无输出)')

    r = sh(os.path.join('tools/deob/cli.py'), '-p', os.path.relpath(cfg_path, REPO),
           'q', pick[0][0])
    out = (r.stdout or '') + (r.stderr or '')
    check('q', r.returncode == 0 and '->' in out, out.splitlines()[0][:70] if out else '(无输出)')

    # 4) 前缀/索引回退：无 smali_index 时仍能定位类文件
    idx = smali.Index(None)
    p0 = mapping.full(pick[0][0], P.probe_prefix)
    check('index-fallback', idx.file_for(P.probe_dir, p0).endswith('.smali'))

    # 5) 隔离：源工程的三张表必须一字未改（只读）
    import hashlib
    def h(p):
        return hashlib.sha256(open(p, 'rb').read()).hexdigest() if os.path.exists(p) else '-'
    same = all(before[k] == h(v) for k, v in src.items())
    check('isolation', same, '源工程 %d 个文件未改动' % len(src))

    if not keep:
        shutil.rmtree(work, ignore_errors=True)
    print('\n结果:', 'ALL PASS ✔' if ok else 'FAILED ✘')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())
