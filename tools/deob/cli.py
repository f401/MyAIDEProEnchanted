#!/usr/bin/env python3
"""cli.py —— 反混淆通用工具链的统一入口。

    python3 tools/deob/cli.py -p process/deob.json <命令> [参数]

命令：
    status                     打印工程配置 + 写入目标（并检查是否落在本工程目录内）
    init --name X              新建**独立**工程目录（jobs/X：配置 + 空 truth + README）
    emit                       由 class_map + member_map 生成 TSRG2（out_tsrg）
    params [--apply]           从 oracle jar 的 LVT / src_root 源码提取参数名（写 param_map）
    tryfix <jar> [--out F]     修"try 范围不含数组访问"的异常表（--apply 写盘）
    validate                   校验产物 TSRG2 与真实 jar（默认全绿的 8 项）
    inherit                    继承链闭合检查（CONFLICT / MISSING）
    pkgs [--apply]             包归属求解（同包才能访问 package-private）
    widen <jar> [--out F] [--apply]   跨包 access 放宽
    members --pkg P [--part N] [--apply]   成员级批量定名（类身份已知时的重载/字段消歧）
    mgraph --pkg P             调用图自证（探针 A→B 与 oracle A'→B' 逐条对照）
    cover                      覆盖率（分母=有同形对应者的 oracle 成员）
    manifest <jar>             jar 内容指纹
    q|prof|dump|hdr|elim|iface|shape <类...>   读码/定名辅助
"""
import argparse
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import checks
import config
import view as insp
import mapping
import params as prm
import fixtry


def _split_argv(argv):
    """把 -p/--project 与其余参数分开（保持顺序）。"""
    proj, rest = None, []
    i = 0
    while i < len(argv):
        t = argv[i]
        if t in ('-p', '--project') and i + 1 < len(argv):
            proj = argv[i+1]; i += 2; continue
        if t.startswith('--project='):
            proj = t.split('=', 1)[1]; i += 1; continue
        rest.append(t); i += 1
    return proj, rest


def _do_init(argv):
    ip = argparse.ArgumentParser(prog='deob init')
    ip.add_argument('name_pos', nargs='?')
    ip.add_argument('--name')
    ip.add_argument('--prefix')
    ip.add_argument('--dir')
    ip.add_argument('--probe-dir', dest='probe_dir')
    ip.add_argument('--root', default='.')
    ip.add_argument('--force', action='store_true')
    ia = ip.parse_args(argv)
    name = ia.name or ia.name_pos
    if not name:
        raise SystemExit('用法: deob init --name <名字> [--prefix zz] [--dir jobs/<名字>] [--probe-dir probe]')
    prefix = ia.prefix or name
    root = os.path.abspath(ia.root)
    jdir = ia.dir or os.path.join('jobs', name)
    jdir = jdir if os.path.isabs(jdir) else os.path.join(root, jdir)
    if os.path.exists(jdir) and not ia.force:
        raise SystemExit('目录已存在：%s（加 --force 覆盖配置）' % jdir)
    os.makedirs(os.path.join(jdir, 'truth'), exist_ok=True)
    cfg = {
        'name': name, 'root': '.', 'probe_prefix': prefix,
        'probe_dir': ia.probe_dir or 'probe',
        'parts': ['truth/main'],              # 一份真相 = 一个 part 目录（可再按依赖拆）
        'src_root': None,                     # 有原始源码时填上：抽象方法参数名从源码读
        'out_tsrg': 'out/mappings.txt',
        'base_jars': ['base/*.jar'], 'input_jars': [],
        'oracle_jars': [{'label': 'v1', 'path': 'oracle/v1.jar'}],
        'out_dir': 'out',
    }
    with open(os.path.join(jdir, 'deob.json'), 'w', encoding='utf-8') as f:
        json.dump(cfg, f, ensure_ascii=False, indent=2)
    for rel, txt in (('truth/main/class_map.tsv', '# 探针<TAB>目标[<TAB>证据]\n'),
                     ('truth/main/members.tsrg', '')):
        fp = os.path.join(jdir, rel)
        os.makedirs(os.path.dirname(fp), exist_ok=True)
        if not os.path.exists(fp):
            open(fp, 'w', encoding='utf-8').write(txt)
    open(os.path.join(jdir, 'README.md'), 'w', encoding='utf-8').write(
        '# %s —— 新依赖还原\n\n独立工程目录：本目录的 truth/ 与 out/ 只属于本工程，\n'
        '与仓库里已完成的工程（process/）完全隔离。步骤见 docs/NEW-JOB.md。\n' % name)
    print('已创建独立工程：%s' % jdir)
    print('  配置 %s' % os.path.join(jdir, 'deob.json'))
    print('  真相 truth/main/{class_map.tsv, members.tsrg}（按依赖可再拆成多个 part）')
    print('  产物 out/mappings.txt')
    for sub in ('oracle', 'base'):
        print('  请放入 %s/' % sub)
    print('下一步: python3 tools/deob/cli.py -p %s status' %
          os.path.relpath(os.path.join(jdir, 'deob.json'), root))
    return 0


def main():
    argv = sys.argv[1:]
    if 'init' in argv:
        proj, rest = _split_argv(argv)
        rest = [x for x in rest if x != 'init']
        # init 的 root 默认是**当前目录**（仓库根），不跟着 -p 走
        return _do_init(rest)
    ap = argparse.ArgumentParser(prog='deob', add_help=True)
    ap.add_argument('-p', '--project', required=True, help='工程配置 JSON（例：process/deob.json）')
    ap.add_argument('cmd')
    ap.add_argument('args', nargs='*')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--out')
    ap.add_argument('--map')
    a, _extra = ap.parse_known_args()
    a.args = list(a.args) + list(_extra)
    P = config.load(a.project)

    if a.cmd == 'emit':
        n_cls, n_mem, n_lines = mapping.emit_tsrg2(P)
        print('写出 %s：类块 %d / 成员行 %d / 共 %d 行' % (P.out_tsrg, n_cls, n_mem, n_lines))

    elif a.cmd == 'tryfix':
        if not a.args:
            raise SystemExit('用法: tryfix <jar> [--out F] [--apply]')
        jar = a.args[0]
        out = a.out or (jar[:-4] + '_try.jar')
        n = fixtry.fix(jar, out, write=a.apply, log=print)
        print(('修 %d 条 → %s' % (n, out)) if a.apply
              else '需要修 %d 条（加 --apply 写盘）' % n)

    elif a.cmd == 'params':
        oracles = [p for _l, p in P.oracle_jars]
        if '--oracle-dir' in a.args or any(x.startswith('--oracle-dir=') for x in a.args):
            import glob as _g
            dirs = [x.split('=', 1)[1] for x in a.args if x.startswith('--oracle-dir=')]
            dirs += [x for x in a.args if not x.startswith('--') and os.path.isdir(x)]
            for d in dirs:
                oracles += sorted(_g.glob(os.path.join(d, '*.jar')))
        out_map = {}
        for p in P.parts:
            if p['class_map']:
                out_map[p['class_map']] = p['param_map'] or os.path.join(
                    os.path.dirname(p['class_map']), 'params.tsv')
        prm.fill(P.class_map, P.member_map, P.probe_prefix, oracles,
                 out_map, P.src_root, write=a.apply, prefix_of=P.class_map_prefix)

    elif a.cmd == 'validate':
        bad, detail, stats = checks.validate(P)
        print('类块 %d / 成员行 %d / 参数行 %d / 基线类 %d' % (
            stats['classes'], stats['members'], stats.get('params', 0), stats['base_classes']))
        if not bad:
            print('✔ 无无效映射')
            return 0
        print('✘ 无效映射 %d 处:' % sum(bad.values()))
        for k, v in bad.most_common():
            print('   %-20s %d' % (k, v))
        for ln, kind, msg in detail[:40]:
            print('   L%-6d %-16s %s' % (ln, kind, msg))
        return 1

    elif a.cmd == 'inherit':
        conf, miss = checks.inherit(P)
        print('CONFLICT: %d' % len(conf))
        for c in conf[:20]:
            print('   子=%s 祖先=%s %s%s 子名=%s 祖先名=%s' % c)
        print('MISSING: %d' % len(miss))
        for m in miss[:20]:
            print('   %s 继承 %s 的 %s%s（已映射为 %s，祖先未映射）' % m)
        return 0 if not conf and not miss else 1

    elif a.cmd == 'pkgs':
        moves, conf = checks.pkgs(P)
        print('需要挪包: %d' % len(moves))
        for m, tgt in moves:
            print('   %-28s → %s' % (m, tgt))
        if conf:
            print('真冲突（多包同一分量，挪包解决不了，交给 widen）: %d 组' % len(conf))
            for c in conf:
                print('   ', c)
        if a.apply and moves:
            cm = mapping.ClassMap(P.class_map, P.probe_prefix, P.class_map_prefix).load()
            for m, tgt in moves:
                cm.set(m, tgt, 'pkg:并查集不动点（访问包私有 ⇒ 必须同包）')
            cm.save()
            print('已写入 %d 条（按行来源写回各 part）' % len(moves))

    elif a.cmd == 'widen':
        if not a.args:
            raise SystemExit('用法: widen <jar> [--out F] [--apply]')
        cm = (mapping.ClassMap(a.map or P.class_map, P.probe_prefix,
                               None if a.map else P.class_map_prefix).load().dict
              if (a.map or P.class_map) else None)
        if a.map is None and not any(os.path.exists(x) for x in (P.class_map or [])):
            cm = None
        stats, out = checks.widen(a.args[0], a.out, cm, a.apply)
        print('跨包需放宽：类 %d / 成员 %d' % (stats['classes'], stats['members']))
        for r in stats['reasons'][:20]:
            print('   ', r)
        if a.apply:
            print('已写出 %s（改写 %d 个 class）' % (stats['out'], stats['written']))

    elif a.cmd in ('members', 'mgraph'):
        import membermatch

        def opt(name, default=None):
            for x in a.args:
                if x.startswith('--%s=' % name):
                    return x.split('=', 1)[1]
            return default
        pkg = opt('pkg') or next((x for x in a.args if not x.startswith('-')), None)
        if not pkg:
            raise SystemExit('用法: members --pkg com/example/lib [--part 名字] [--apply]')
        part = opt('part')
        if a.cmd == 'mgraph':
            membermatch.verify_graph(P, pkg)
        else:
            # 报告跟着 **part 自己的目录** 走（jobs/<依赖>/out/），不要写进 process/out：
            # 一个依赖一个目录、自包含；单独拿 jobs/<依赖> 出来当工程时报告也在里面。
            rep = a.out or membermatch.report_path(P, part, pkg)
            rows, todo, stats = membermatch.run(
                P, pkg, part=part, apply=a.apply, report=rep,
                rounds=int(opt('rounds') or 4),
                min_score=float(opt('min-score') or 0.30),
                min_lead=float(opt('min-lead') or 0.12))
            print('类 %d / 方法 %d（已定名 %d）/ 字段 %d（已定名 %d）' % (
                stats['classes'], stats['methods'], stats['mapped_m'],
                stats['fields'], stats['mapped_f']))
            by = {}
            for t in todo:
                by[t['why']] = by.get(t['why'], 0) + 1
            print('待人工 %d：%s' % (len(todo), by or '无'))
            print('报告 %s' % rep)

    elif a.cmd == 'cover':
        r = checks.cover(P)
        hm, tm = r['methods']; hf, tf = r['fields']
        print('方法 %d/%d = %.1f%%   字段 %d/%d = %.1f%%' % (
            hm, tm, 100.0*hm/max(1, tm), hf, tf, 100.0*hf/max(1, tf)))

    elif a.cmd == 'manifest':
        h, n = checks.manifest(a.args[0])
        print(h)
        print('条目 %d' % n)

    elif a.cmd == 'status':
        cfg_dir = os.path.dirname(P.path)
        print(P.describe())
        print('  写入目标：')
        targets = [(k, v) for k, v in (('out_tsrg', P.out_tsrg), ('allow', P.allow)) if v]
        for p in P.parts:
            for k in ('class_map', 'member_map', 'param_map', 'head'):
                if p[k]:
                    targets.append(('%s/%s' % (p['name'], k), p[k]))
        for k, v in targets:
            inside = os.path.commonpath([cfg_dir, os.path.abspath(v)]) == cfg_dir
            print('    %-18s %-56s %s' % (k, v, '✔ 在工程目录内' if inside else '⚠ 在工程目录外（可能是别的工程！）'))
        print('  只读：base_jars %d / input_jars %d / oracle %d' % (
            len(P.base_jars), len(P.input_jars), len(P.oracle_jars)))


    elif a.cmd in ('q', 'prof', 'hdr', 'elim', 'iface', 'shape'):
        getattr(insp, a.cmd)(P, a.args)

    elif a.cmd == 'dump':
        insp.dump(P, a.args[0], a.args[1:])

    else:
        raise SystemExit(__doc__)
    return 0


if __name__ == '__main__':
    sys.exit(main())
