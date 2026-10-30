#!/usr/bin/env python3
"""filter_head.py —— 清理 mappings_head.txt 里"已经应用过/根本不存在"的块。

判据：把 process/src/*.jar + process/base/merged_ok.jar 的类与成员做成索引，
  * 块头的 probe 在所有源 jar 里都不存在 ⇒ 整块删除（这些是首轮已应用的映射）；
  * 成员行 (name,desc) 在 probe 类里不存在 ⇒ 删该行（含其后的 `static` 元数据行）。
用法: python3 tools/jgit/filter_head.py [--apply]
"""
import sys, zipfile, struct, os, glob

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
ROOT = '/storage/emulated/0/MyAIDEProEnchanted'
HEAD = os.path.expanduser('~') + '/out/work/mappings_head.txt'


def parse(b):
    n = struct.unpack_from('>H', b, 8)[0]
    o = 10; i = 1; utf = {}
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, o)[0]
            utf[i] = b[o+2:o+2+ln].decode('utf-8', 'replace'); o += 2 + ln
        elif tag in (7, 8, 16, 19, 20):
            o += 2
        elif tag == 15:
            o += 3
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18):
            o += 4
        elif tag in (5, 6):
            o += 8; i += 1
        else:
            raise ValueError(tag)
        i += 1
    p = o + 6
    ic = struct.unpack_from('>H', b, p)[0]
    p += 2 + 2 * ic
    methods = {}; fields = set()
    for kind in ('f', 'm'):
        cnt = struct.unpack_from('>H', b, p)[0]; p += 2
        for _ in range(cnt):
            acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
            for _ in range(ac):
                ln = struct.unpack_from('>I', b, p+2)[0]; p += 6 + ln
            if kind == 'f':
                fields.add(utf.get(nm))
            else:
                methods[(utf.get(nm), utf.get(ds))] = acc
    return methods, fields


def main():
    apply_ = '--apply' in sys.argv
    jars = sorted(glob.glob(ROOT + '/process/src/*.jar')) + [ROOT + '/process/base/merged_ok.jar']
    idx = {}
    for p in jars:
        try:
            z = zipfile.ZipFile(p)
        except Exception:
            continue
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            cn = n[:-6]
            if cn in idx:
                continue
            try:
                idx[cn] = parse(z.read(n))
            except Exception:
                pass
    print('源 jar %d 个，类索引 %d' % (len(jars), len(idx)))
    lines = open(HEAD, encoding='utf-8').read().split('\n')
    out = []
    drop_block = drop_line = keep = 0
    cur = None; cur_ok = False; skip_static = False
    for ln in lines:
        if not ln.strip():
            out.append(ln); continue
        if not ln.startswith('\t'):
            f = ln.split()
            cur = f[0]; cur_ok = cur in idx
            if not cur_ok:
                drop_block += 1
                print('  DROP BLOCK %s' % cur)
                continue
            out.append(ln); keep += 1
            continue
        if not cur_ok:
            continue
        body = ln[1:]
        if body.strip() == 'static' or body.strip() == '\tstatic':
            if skip_static:
                skip_static = False
                drop_line += 1
                continue
            out.append(ln); continue
        f = body.split(' ')
        methods, fields = idx[cur]
        ok = False
        if len(f) >= 3 and f[1].startswith('('):
            ok = (f[0], f[1]) in methods
        else:
            ok = f[0] in fields
        if ok:
            out.append(ln); keep += 1
        else:
            drop_line += 1; skip_static = True
            print('  DROP LINE  %s %s' % (cur, body))
    print('保留块 %d / 删块 %d / 删行 %d' % (keep, drop_block, drop_line))
    if apply_:
        open(HEAD, 'w', encoding='utf-8').write('\n'.join(out))
        print('已写回', HEAD)


if __name__ == '__main__':
    main()
