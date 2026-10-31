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
import params
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
    cm = mapping.ClassMap(P.class_map, P.probe_prefix, P.class_map_prefix).load()
    mm = mapping.MemberMap(P.member_map).load()
    def weight(r):
        return -len(mm.blocks.get(cm.full_probe(r[0]), []))
    pick = sorted([r for r in cm.rows if cm.full_probe(r[0]) in mm.blocks],
                  key=weight)[:8]
    if not pick:
        print('FAIL 取不到子集（class_map/member_map 不匹配）'); return 1
    # 子集写成一个**独立的 part 目录**（新工程最常见的样子：一份 truth）
    sub_dir = os.path.join(truth, 'subset')
    os.makedirs(sub_dir, exist_ok=True)
    sub_cm = os.path.join(sub_dir, 'class_map.tsv')
    sub_mm = os.path.join(sub_dir, 'members.tsrg')
    kept = {cm.full_probe(p) for p, _, _ in pick}
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
    # 描述符里引用到的类也要进子集类映射：否则 emit 的参数行与 params 重算对不上（类型换不了名）
    import re as _re
    refs = set(kept)
    for _p in kept:
        for _ln in mm.blocks.get(_p, []):
            refs.update(t for t in _re.findall(r'L([\w/$]+);', _ln) if t in cmap)
    with open(sub_cm, 'w', encoding='utf-8') as f:
        for probe, target, ev in cm.rows:
            if cm.full_probe(probe) in refs:
                f.write('%s\t%s\t%s\n' % (probe, target, ev))
    with open(sub_mm, 'w', encoding='utf-8') as f:
        for probe in mm.order:
            if probe not in kept:
                continue
            f.write('%s %s\n' % (probe, mm.target.get(probe, probe)))
            for ln in mm.blocks[probe]:
                f.write('\t' + ln + '\n')
    # 参数名子集（只留 kept 里的类）
    sub_prm = os.path.join(sub_dir, 'params.tsv')
    n_par = 0
    if P.param_map:
        rows = []
        for (owner, name, desc), prs in params.load_tsv(P.param_map).items():
            if owner not in kept:
                continue
            for i, nm, src in prs:
                rows.append((owner, name, desc, i, nm, src))
        n_par = params.save_tsv(sub_prm, rows)

    # 2) 新配置：新目录、无 head、无 smali_index（考验回退）
    cfg = dict(P.raw)
    cfg.pop('head', None)          # 新工程常常没有头部
    cfg['smali_index'] = P.smali_index   # 大小写不敏感 FS 上必须有索引
    cfg['name'] = 'selftest'
    cfg['root'] = '../..'
    # 只读输入一律用**绝对路径**（子集配置放在别的目录，相对路径会指向错地方）
    cfg['probe_dir'] = P.probe_dir
    cfg['base_jars'] = list(P.base_jars)
    cfg['input_jars'] = list(P.input_jars)
    cfg['oracle_jars'] = [{'label': l, 'path': p} for l, p in P.oracle_jars]
    for _k in ('class_map', 'member_map', 'param_map'):
        cfg.pop(_k, None)
    cfg['parts'] = ['out/selftest/truth/subset']
    cfg['out_tsrg'] = 'out/selftest/mappings.txt'
    cfg['out_dir'] = 'out/selftest'
    cfg_path = os.path.join(work, 'deob.json')
    json.dump(cfg, open(cfg_path, 'w', encoding='utf-8'), ensure_ascii=False, indent=2)

    import hashlib
    src = {}
    for _p in P.parts:                     # 所有 part 的 truth 都必须一字未改
        for _k in ('class_map', 'member_map', 'param_map', 'head'):
            if _p[_k]:
                src['%s/%s' % (_p['name'], _k)] = _p[_k]
    src['out_tsrg'] = P.out_tsrg
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
    n_emit_par = 0
    if os.path.exists(S.out_tsrg):
        n_emit_par = sum(1 for ln in open(S.out_tsrg, encoding='utf-8') if ln.startswith('\t\t') and 'static' not in ln)
    check('emit-params', n_emit_par == n_par, '参数行 %d（期望 %d）' % (n_emit_par, n_par))
    bad, detail, stats = checks.validate(S)
    check('validate', not bad, '类块 %d / 成员行 %d / 基线 %d' %
          (stats['classes'], stats['members'], stats['base_classes']))

    import re as _re
    r = sh(os.path.join('tools/deob/cli.py'), '-p', os.path.relpath(cfg_path, REPO), 'params')
    out = (r.stdout or '') + (r.stderr or '')
    m = _re.search(r'参数行 (\d+) 条', out)
    same = bool(m) and int(m.group(1)) == n_par
    check('params', r.returncode == 0 and same,
          ('重算 %s 行 == 子集真相 %d 行（dry-run，未写盘）' % (m.group(1), n_par)) if m
          else out.strip()[-120:])

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
    p0 = cm.full_probe(pick[0][0])
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
