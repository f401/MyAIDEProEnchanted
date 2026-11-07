#!/usr/bin/env python3
"""fieldseq.py —— 按「方法内字段访问的**顺序**」给剩下的字段定名（fieldfp 的加强版）。

为什么需要：`fieldfp` 用的是"(方法真名, get/put, 整数字面量)"指纹，方法级粒度；jzlib 的
`proc`/`inflate` 一次摸十几个字段 ⇒ 大量打平（实测 19 个字段只有 2 个唯一命中）。
这里把指纹换成**同一方法里字段访问的先后顺序**：

    已知名字当**锚点**，把两条访问序列切成若干区间；区间内两边剩余元素个数相等时，
    按顺序一一对应投票；个数不等就整段弃权（不猜）。

跨类访问也吃：`ZStream.next_in_index` 这类字段在本类方法里没人碰，但在 `Inflate#inflate`
里被反复读写 —— 只要 refs 的 owner 指向目标类，就参与对齐。

用法:
  python3 tools/deob/fieldseq.py jzlib --oracle-jar=$HOME/out/oracle/misc/jzlib-1.1.1.jar
  python3 tools/deob/fieldseq.py jzlib --oracle-jar=... --apply     # 写回 members.tsrg
"""
import argparse
import collections
import os
import sys
import zipfile

_REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for _p in ('tools/jgit', 'tools/jgit/audit', 'tools/deob', 'tools/jgit/pipeline'):
    _q = os.path.join(_REPO, _p)
    if os.path.isdir(_q) and _q not in sys.path:
        sys.path.insert(0, _q)
import jvmbody                      # noqa: E402
from dupcheck import parse_class    # noqa: E402


def read_part(d):
    """→ (probe→target, {probe: {obf字段: 新名}}, {probe: {(方法名,描述符): 新名}})"""
    cmap, fmap, mmap = {}, collections.defaultdict(dict), collections.defaultdict(dict)
    pre = ''
    cfile = os.path.join(d, 'class_map.tsv')
    for ln in open(cfile, encoding='utf-8'):
        if not ln.strip() or ln.startswith('#'):
            continue
        f = ln.rstrip('\n').split('\t')
        probe = f[0] if '/' in f[0] else None
        cmap[f[0]] = f[1]
        if probe is None:
            pre = pre or 'abcd'
    for k in list(cmap):
        if '/' not in k:
            cmap[pre + '/' + k] = cmap.pop(k)
    cur = None
    ms = os.path.join(d, 'members.tsrg')
    if os.path.exists(ms):
        for ln in open(ms, encoding='utf-8'):
            ln = ln.rstrip('\n')
            if not ln:
                continue
            if not ln.startswith('\t'):
                cur = ln.split(' ')[0]
                continue
            p = ln.lstrip('\t').split(' ')
            if len(p) == 2:
                fmap[cur][p[0]] = p[1]
            elif len(p) == 3:
                mmap[cur][(p[0], p[1])] = p[2]
    return cmap, fmap, mmap


def remap_desc(desc, cmap):
    """探针描述符 → 目标描述符（只换 L...; 里的类名）。"""
    out, i = [], 0
    while i < len(desc):
        if desc[i] == 'L':
            j = desc.index(';', i)
            out.append('L' + cmap.get(desc[i + 1:j], desc[i + 1:j]) + ';')
            i = j + 1
        else:
            out.append(desc[i])
            i += 1
    return ''.join(out)


def refs_by_method(blob):
    """→ [(方法名, 描述符, [(owner, 字段名, 类型)])]，只保留字段引用（按出现顺序）。"""
    c = jvmbody.parse(blob)
    out = []
    for m in c['members']:
        if m['kind'] != 'm' or not m['code']:
            continue
        seq = [(ow, fn, fd) for kind, ow, fn, fd in jvmbody.body_refs(c, m['code']) if kind == 'f']
        if seq:
            out.append((m['name'], m['desc'], seq))
    return out


def align(a_names, b_names):
    """a_names 里 None 表示待定；用非 None 当锚点切区间，区间内等长则按序配对。"""
    pairs = []
    ia = ib = 0
    na, nb = len(a_names), len(b_names)
    while ia < na and ib < nb:
        if a_names[ia] is None:
            # 找下一段：a 的未知连续段 ↔ b 的「下一个锚点之前」的段
            ja = ia
            while ja < na and a_names[ja] is None:
                ja += 1
            # b 侧：从 ib 开始找下一个与 a[ja] 相同的名字
            jb = ib
            if ja < na:
                target = a_names[ja]
                while jb < nb and b_names[jb] != target:
                    jb += 1
                if jb >= nb:
                    break
            else:
                jb = nb
            n_unk, n_extra = ja - ia, jb - ib
            if n_unk == n_extra:
                for k in range(n_unk):
                    pairs.append((a_names[ia + k], b_names[ib + k]))
            ia, ib = ja, jb
        else:
            # a 侧已知：在 b 里找同名锚点
            target = a_names[ia]
            jb = ib
            while jb < nb and b_names[jb] != target:
                jb += 1
            if jb >= nb:
                break
            ia += 1
            ib = jb + 1
    return pairs


def ctx_map(seq, owner, nameof):
    """→ {字段名(真名或 None→用 obf): Counter((上一个已知字段, 下一个已知字段))}。

    比"整段等长"宽松：只看**紧邻的已定名字段**，所以两边字段条数不同也能比。
    """
    out = collections.defaultdict(collections.Counter)
    sub = [(fn, fd) for (ow, fn, fd) in seq if ow == owner]
    for i, (fn, fd) in enumerate(sub):
        prev = next_ = '-'
        for j in range(i - 1, -1, -1):
            nm = nameof(sub[j][0])
            if nm:
                prev = nm
                break
        for j in range(i + 1, len(sub)):
            nm = nameof(sub[j][0])
            if nm:
                next_ = nm
                break
        out[fn][(prev, next_)] += 1
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('part')
    ap.add_argument('--oracle-jar', required=True)
    ap.add_argument('--jar', default=os.path.join(_REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--min-votes', type=int, default=2)
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    d = os.path.join(_REPO, 'jobs', a.part)
    if not os.path.isdir(d):
        raise SystemExit('没有这个 part: %s' % d)
    cmap, fmap, mmap = read_part(d)
    base = zipfile.ZipFile(a.jar)
    oj = zipfile.ZipFile(os.path.expanduser(a.oracle_jar))
    onames = set(n[:-6] for n in oj.namelist() if n.endswith('.class'))

    # 探针侧：每个方法的字段访问序列（owner 用探针名）
    probe_parts = {}
    for probe in cmap:
        try:
            probe_parts[probe] = refs_by_method(base.read(probe + '.class'))
        except KeyError:
            continue
    # 反向索引：目标类 ← 哪些 (类, 方法, 序号) 碰过它
    votes = collections.defaultdict(collections.Counter)
    for probe, methods in probe_parts.items():
        for mname, mdesc, seq in methods:
            real = mmap[probe].get((mname, mdesc), mname)
            real_desc = remap_desc(mdesc, cmap)
            if real.startswith('access$') or real.startswith('<'):
                continue
            for owner, f, ft in seq:
                if owner not in cmap:
                    continue
                target = cmap[owner]
                if target not in onames:
                    continue
                # 该 owner 侧同一方法在 oracle 里的访问序列
                oc = None
                for om, od, oseq in refs_by_method(oj.read(target + '.class')):
                    if om == real and od == real_desc:
                        oc = oseq
                        break
                if oc is None:
                    continue
                # 目标类里已定名的字段 + 待定字段
                known = fmap.get(owner, {})
                a_names = [known.get(fn) for (ow, fn, fd) in seq if ow == owner]
                b_names = [fn for (ow, fn, fd) in oc if ow == target]
                unk = [fn for (ow, fn, fd) in seq if ow == owner and known.get(fn) is None]
                got = [y for (x, y) in align(a_names, b_names) if x is None]
                if len(got) == len(unk):
                    for fn, nm in zip(unk, got):
                        votes[(owner, fn)][nm] += 1
    # 第二判据：紧邻已定名字段的上下文（容忍两边字段条数不同）
    ctx_votes = collections.defaultdict(collections.Counter)
    for probe, methods in probe_parts.items():
        for mname, mdesc, seq in methods:
            real = mmap[probe].get((mname, mdesc), mname)
            real_desc = remap_desc(mdesc, cmap)
            if real.startswith('access$') or real.startswith('<'):
                continue
            for owner, f, ft in seq:
                if owner not in cmap:
                    continue
                target = cmap[owner]
                if target not in onames:
                    continue
                known = fmap.get(owner, {})
                if known.get(f) is not None:
                    continue
                oc = None
                for om, od, oseq in refs_by_method(oj.read(target + '.class')):
                    if om == real and od == real_desc:
                        oc = oseq
                        break
                if oc is None:
                    continue
                a_ctx = ctx_map(seq, owner, lambda n: known.get(n))
                o_ctx = ctx_map(oc, target, lambda n: n)
                A = set(a_ctx.get(f, ()))
                if not A:
                    continue
                used = set(known.values())
                best = []
                for (on, ot, oa) in parse_class(oj.read(target + '.class'))['fields']:
                    if on in used or ot != ft:
                        continue
                    B = set(o_ctx.get(on, ()))
                    if not B:
                        continue
                    j = len(A & B) / len(A | B)
                    if j >= 0.7:
                        best.append((j, on))
                best.sort(reverse=True)
                if best and (len(best) == 1 or best[0][0] > best[1][0]):
                    ctx_votes[(owner, f)][best[0][1]] += 1

    rows = []
    for (owner, fn), c in sorted(votes.items()):
        nm, n = c.most_common(1)[0]
        tot = sum(c.values())
        if n >= a.min_votes and (len(c) == 1 or n > c.most_common(2)[1][1]):
            rows.append((owner, fn, nm, n, tot, 'seq'))
    for (owner, fn), c in sorted(ctx_votes.items()):
        if any(r[0] == owner and r[1] == fn for r in rows):
            continue
        nm, n = c.most_common(1)[0]
        tot = sum(c.values())
        if n >= a.min_votes and (len(c) == 1 or n > c.most_common(2)[1][1]):
            rows.append((owner, fn, nm, n, tot, 'ctx'))
    print('待定字段 %d 个，唯一命中 %d 个（阈值 %d 票）' % (len(votes), len(rows), a.min_votes))
    for owner, fn, nm, n, tot, how in rows:
        print('  %-10s %-4s → %-18s %d/%d 票 [%s] （%s）'
              % (owner.split('/')[-1], fn, nm, n, tot, how, cmap[owner]))
    if a.apply and rows:
        ms = os.path.join(d, 'members.tsrg')
        add = collections.defaultdict(list)
        for owner, fn, nm, n, tot, how in rows:
            add[owner].append((fn, nm))
        out, cur = [], None
        for ln in open(ms, encoding='utf-8').read().split('\n'):
            if ln and not ln.startswith('\t'):
                cur = ln.split(' ')[0]
                out.append(ln)
                if cur in add:
                    for fn, nm in add[cur]:
                        out.append('\t%s %s' % (fn, nm))
                continue
            out.append(ln)
        open(ms, 'w', encoding='utf-8').write('\n'.join(out))
        print('已写回 %s（%d 行）' % (ms, sum(len(v) for v in add.values())))
    return 0


if __name__ == '__main__':
    sys.exit(main())
