#!/usr/bin/env python3
"""cli.py —— 反混淆通用工具链的统一入口。

    python3 tools/deob/cli.py -p process/deob.json <命令> [参数]

命令：
    emit                       由 class_map + member_map 生成 TSRG2（out_tsrg）
    validate                   校验产物 TSRG2 与真实 jar（默认全绿的 8 项）
    inherit                    继承链闭合检查（CONFLICT / MISSING）
    pkgs [--apply]             包归属求解（同包才能访问 package-private）
    widen <jar> [--out F] [--apply]   跨包 access 放宽
    cover                      覆盖率（分母=有同形对应者的 oracle 成员）
    manifest <jar>             jar 内容指纹
    q|prof|dump|hdr|elim|iface|shape <类...>   读码/定名辅助
"""
import argparse
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import checks
import config
import view as insp
import mapping


def main():
    ap = argparse.ArgumentParser(prog='deob', add_help=True)
    ap.add_argument('-p', '--project', required=True, help='工程配置 JSON（例：process/deob.json）')
    ap.add_argument('cmd')
    ap.add_argument('args', nargs='*')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--out')
    ap.add_argument('--map')
    a = ap.parse_args()
    P = config.load(a.project)

    if a.cmd == 'emit':
        n_cls, n_mem, n_lines = mapping.emit_tsrg2(P)
        print('写出 %s：类块 %d / 成员行 %d / 共 %d 行' % (P.out_tsrg, n_cls, n_mem, n_lines))

    elif a.cmd == 'validate':
        bad, detail, stats = checks.validate(P)
        print('类块 %d / 成员行 %d / 基线类 %d' % (stats['classes'], stats['members'], stats['base_classes']))
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
            cm = mapping.ClassMap(P.class_map, P.probe_prefix).load()
            for m, tgt in moves:
                probe = m if m.startswith(P.probe_prefix + '/') else m
                cm.set(probe.replace(P.probe_prefix + '/', ''), tgt,
                       'pkg:并查集不动点（访问包私有 ⇒ 必须同包）')
            cm.save()
            print('已写入 %s：%d 条' % (P.class_map, len(moves)))

    elif a.cmd == 'widen':
        if not a.args:
            raise SystemExit('用法: widen <jar> [--out F] [--apply]')
        cm = mapping.ClassMap(a.map or P.class_map, P.probe_prefix).load().dict if (a.map or P.class_map) else None
        if a.map is None and not os.path.exists(P.class_map):
            cm = None
        stats, out = checks.widen(a.args[0], a.out, cm, a.apply)
        print('跨包需放宽：类 %d / 成员 %d' % (stats['classes'], stats['members']))
        for r in stats['reasons'][:20]:
            print('   ', r)
        if a.apply:
            print('已写出 %s（改写 %d 个 class）' % (stats['out'], stats['written']))

    elif a.cmd == 'cover':
        r = checks.cover(P)
        hm, tm = r['methods']; hf, tf = r['fields']
        print('方法 %d/%d = %.1f%%   字段 %d/%d = %.1f%%' % (
            hm, tm, 100.0*hm/max(1, tm), hf, tf, 100.0*hf/max(1, tf)))

    elif a.cmd == 'manifest':
        h, n = checks.manifest(a.args[0])
        print(h)
        print('条目 %d' % n)

    elif a.cmd in ('q', 'prof', 'hdr', 'elim', 'iface', 'shape'):
        getattr(insp, a.cmd)(P, a.args)

    elif a.cmd == 'dump':
        insp.dump(P, a.args[0], a.args[1:])

    else:
        raise SystemExit(__doc__)
    return 0


if __name__ == '__main__':
    sys.exit(main())
