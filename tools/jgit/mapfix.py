#!/usr/bin/env python3
"""mapfix.py — 声明式修成员映射（改 jgit_members_clean.tsrg）。

每条编辑: probe ␉ m|f ␉ name ␉ desc ␉ old ␉ new      （字段描述符写 -，old/new 写 - 表示空）
- 期望旧目标不匹配则 SKIP（防止表过期后误改）
- new='-' 表示删除该映射（成员回落混淆名，永不再撞车）
一次读入、内存里改完、再整体写回 —— 同类的两个名字互换不会互相踩。

用法: python3 tools/jgit/mapfix.py <tsrg> <fix.txt> [--apply]
不加 --apply 只 dry-run。
"""
import os, sys


def main():
    tsrg, fixf = sys.argv[1], sys.argv[2]
    apply = '--apply' in sys.argv
    edits = []
    for ln in open(fixf):
        ln = ln.rstrip('\n')
        if not ln.strip() or ln.startswith('#'):
            continue
        f = ln.split('\t')
        if len(f) != 6:
            raise SystemExit('bad fix line: %r' % ln)
        probe, kind, name, desc, old, new = f
        edits.append((probe, kind, name,
                      '' if desc == '-' else desc,
                      None if old == '-' else old,
                      None if new == '-' else new))

    TSV_PATH = os.path.expanduser('~') + '/out/work/jgit_map_clean.tsv'
    heads, blocks, cur = [], {}, None      # heads: [(probe, header_line)]
    for ln in open(tsrg):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]
            heads.append((cur, ln))
            blocks[cur] = []
        else:
            blocks[cur].append(ln)

    done = skip = 0
    for probe, kind, name, desc, old, new in edits:
        blk = blocks.get(probe)
        if blk is None:
            # 类刚在 tsv 里新增、还没 rebuild 过 —— 按 tsv 的目标名建块
            tgt = None
            try:
                for _l in open(TSV_PATH):
                    _f = _l.rstrip('\n').split('\t')
                    if _f[0] == probe[5:] if probe.startswith('abcd/') else False:
                        tgt = _f[1]; break
            except (IOError, NameError):
                pass
            if tgt is None:
                print('SKIP  %-10s 无此类块（tsv 里也没有）' % probe); skip += 1; continue
            blocks[probe] = []; heads.append((probe, '%s %s' % (probe, tgt)))
            blk = blocks[probe]
            print('NEW   %-10s 建块 %s' % (probe, tgt))
        is_method = (kind == 'm')
        idx = None
        for i, ln in enumerate(blk):
            p = ln.split()
            if (len(p) == 3) == is_method and p[0] == name and (not is_method or p[1] == desc):
                idx = i
                break
        cur_t = None if idx is None else blk[idx].split()[-1]
        if cur_t != old:
            print('SKIP  %-10s %s %-50s 现=%r 期望=%r' % (probe, name, desc, cur_t, old))
            skip += 1
            continue
        if new is None:
            del blk[idx]
            print('DEL   %-10s %s %-50s (原 %s)' % (probe, name, desc, old))
        elif idx is None:
            blk.append(('\t%s %s %s' % (name, desc, new)) if is_method else ('\t%s %s' % (name, new)))
            print('ADD   %-10s %s %-50s -> %s' % (probe, name, desc, new))
        else:
            blk[idx] = ('\t%s %s %s' % (name, desc, new)) if is_method else ('\t%s %s' % (name, new))
            print('OK    %-10s %s %-50s %s -> %s' % (probe, name, desc, old, new))
        done += 1

    print('\n# 应用 %d 条, 跳过 %d 条' % (done, skip))
    if not apply:
        print('# (dry-run, 未写回)')
        return 0
    out = []
    for probe, hdr in heads:
        out.append(hdr)
        out.extend(blocks[probe])
    open(tsrg, 'w').write('\n'.join(out) + '\n')
    print('# 已写回 %s' % tsrg)
    return 0


if __name__ == '__main__':
    sys.exit(main())
