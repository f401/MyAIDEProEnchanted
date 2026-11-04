#!/usr/bin/env python3
"""createmap.py —— 用「创建点序列」把未定名类钉到 oracle 类上（jd-core 收尾主力）。

思路（单条创建点不够，整段方法体才够）：
  对每一对**已定名**的 (探针类 P, oracle 类 O)：
    1. 先把 P 与 O 的方法配对 —— 优先用**常量串序列**（`javap -c` 里 ldc 的字符串，逐字相同，
       混淆改不了；同一个类里两个方法的串序列通常不同 ⇒ 配对唯一）；没有串的方法用**描述符**配；
    2. 配对成功的方法里，把两侧 `new` 的**类序列按位置一一对上**（编译器不改创建顺序）；
    3. 已经定名的位置当锚点自检，未定名的位置投票 P_i ↔ O_j。
  全部已定名类跑完后取票：某探针类只被投给一个 oracle 类且票数 ≥2 → 落名（`src:` 判据）。
  票数冲突不一致 → 报冲突，不落。

判据强度：它把"创建点"从「谁 new 你」升级为「**哪个方法里的第几个 new**」，
这正是同形数据模型类唯一能区分的维度，而且完全可复现（两侧 jar + javap 即可重跑）。

用法:
  python3 tools/deob/createmap.py -p process/deob.json --part ../jobs/jdcore \
      [--apply] [--report f.tsv] [--min 2]
"""
import os
import re
import sys
import json
import argparse
import collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bytefp
from bytefp import disassemble, parse, load_tsv_map


def body_info(body):
    strs = tuple(t[1] for t in body if t[0] == 'S')
    news = tuple(t[1].replace('.', '/') for t in body if t[0] == 'new')
    return strs, news


def fold_key(params, fmap):
    return tuple(fmap.get(x, x) for x in params)


def method_table(cl, fmap):
    """{(参数元组): (串序列, 创建序列)}，外加按串序列反查"""
    bysig, bystr = {}, collections.defaultdict(list)
    for k, body in cl['mbody'].items():
        s, n = body_info(body)
        sig = ('{}',) if k is None else fold_key(k[1], fmap)
        if sig in bysig:
            bysig[sig] = None           # 同名同参的重载（仅返回类型不同）→ 不用
        else:
            bysig[sig] = (s, n)
        if s:
            bystr[s].append(k)
    return bysig, bystr


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', default='process/deob.json')
    ap.add_argument('--part', default='jobs/jdcore')
    ap.add_argument('--oracle', default='jd-core-1.1.3')
    ap.add_argument('--prefix', default='org/c/a/a')
    ap.add_argument('--oprefix', default='org/jd/core/v1')
    ap.add_argument('--min', type=int, default=2, help='落名所需最少票数')
    ap.add_argument('--source', default='', help='oracle 源码文件（配合 --probe-class 做 factory 对齐）')
    ap.add_argument('--probe-class', dest='probe_class', default='')
    ap.add_argument('--oracle-class', dest='oracle_class', default='')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--report', default='')
    a = ap.parse_args()

    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    probe_jar = ex('base/merged_ok.jar')
    ojar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    part = a.part if os.path.isabs(a.part) else os.path.join(base, a.part)
    H = os.path.expanduser('~')
    P = parse(disassemble(probe_jar, a.prefix, os.path.join(H, 'tmp', 'fp_%s_%s.dis' % (a.prefix.replace('/', '_'), os.path.basename(probe_jar)))))
    O = parse(disassemble(ojar, a.oprefix, os.path.join(H, 'tmp', 'fp_%s.dis' % os.path.basename(ojar))))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    print('探针 %d / oracle %d / 已定名 %d' % (len(P), len(O), len(cls)))
    if a.source:
        source_align(part, a.source, a.probe_class, a.oracle_class, a.apply, O)
        return

    fmap = {k.replace('/', '.'): v.replace('/', '.') for k, v in cls.items()}
    tabP = {k: method_table(v, fmap) for k, v in P.items()}
    tabO = {k: method_table(v, fmap) for k, v in O.items()}
    votes = collections.defaultdict(collections.Counter)   # 探针类 → oracle 类 → 票
    why = collections.defaultdict(list)
    used = 0
    for pk, ok in cls.items():
        if pk not in tabP or ok not in tabO:
            continue
        bp, sp = tabP[pk]
        bo, so = tabO[ok]
        n_pair = 0
        for sig, item in bp.items():
            if item is None:
                continue
            s, news = item
            if s and len(sp[s]) == 1:
                cand = so.get(s) or []
                target = cand[0] if len(cand) == 1 else None
            elif not s and sig in bo:
                target = sig
            else:
                target = None
            if target is None or target not in bo or bo[target] is None:
                continue
            n_pair += 1
            o_news = bo[target][1]
            if len(o_news) != len(news):
                continue
            good = True
            for x, y in zip(news, o_news):
                if x == y:
                    continue
                if x in cls:            # 锚点自检：已定名的必须一致，否则这段对齐不可信
                    if cls[x] != y:
                        good = False
                        break
                    continue
                votes[x][y] += 1
                why[x].append('%s/%s' % (pk, sig))
            if good:
                used += 1
    print('配对方法 %d 个' % used)

    decided, conflicts = {}, []
    for x, c in votes.items():
        if x in cls:
            continue
        (y, v), = c.most_common(1)
        if v >= a.min and len(c) == 1:
            decided[x] = (y, v, why[x][:3])
        elif v >= a.min:
            conflicts.append((x, c))
    print('投票定名 %d 个；冲突 %d 个' % (len(decided), len(conflicts)))
    for x, c in conflicts[:20]:
        print('  冲突 %-24s %s' % (x, [(k.rsplit('/', 1)[-1], v) for k, v in c.most_common(3)]))
    if a.report:
        with open(a.report, 'w', encoding='utf-8') as w:
            w.write('#probe\toracle\tvotes\twitness\n')
            for x in sorted(decided):
                y, v, ws = decided[x]
                w.write('%s\t%s\t%d\t%s\n' % (x, y, v, ';'.join(ws)))
        print('报告 →', a.report)
    if a.apply:
        path = os.path.join(part, 'class_map.tsv')
        have = set(load_tsv_map(path))
        n = 0
        with open(path, 'a', encoding='utf-8') as w:
            for x in sorted(decided):
                if x in have:
                    continue
                y, v, ws = decided[x]
                w.write('%s\t%s\tsrc:创建点序列对齐 %d 票（%s 的同串方法体里 new 序列逐位对应）\n'
                        % (x, y, v, ','.join(sorted({wt.rsplit('.', 1)[0] for wt in ws}))))
                n += 1
        print('已写入 %s（+%d）' % (path, n))


def source_methods(path):
    """从 oracle 源码提取：方法名 → (创建类序列, 串序列)"""
    src = open(path, encoding='utf-8', errors='replace').read().replace('\r', '')
    src = re.sub(r'/\*.*?\*/', '', src, flags=re.S)      # 去块注释（注释里的 new 会算错个数）
    src = re.sub(r'//[^\n]*', '', src)                     # 去行注释
    out = {}
    for m in re.finditer(r'\n    (?:public|private|protected)[^\n{;]*?\b(\w+)\(([^)]*)\)\s*\{', src):
        i = m.end(); depth = 1; j = i
        while j < len(src) and depth:
            if src[j] == '{':
                depth += 1
            elif src[j] == '}':
                depth -= 1
            j += 1
        body = src[i:j]
        news = re.findall(r'new\s+([A-Za-z0-9_.$]+)\s*\(', body)
        strs = [x.replace('\\"', '"') for x in re.findall(r'"((?:[^"\\]|\\.)*)"', body)]
        out.setdefault((m.group(1), m.group(2)), (news, strs))
    return out


def source_align(part, srcpath, probe_cls, oracle_cls, apply=False, O=None):
    """按「串序列完全相同 + 创建个数相同」把 oracle 源码方法配到探针方法体，
    再把两侧 new 的类序列逐位对应 —— 得到未定名类 ↔ oracle 类名的硬绑定。"""
    import re as _re
    H = os.path.expanduser('~')
    cfg = json.load(open(os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(
        os.path.abspath(__file__)))), 'process/deob.json')))
    base = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), 'process')
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expanduser(os.path.expandvars(x))))
    P = parse(disassemble(ex('base/merged_ok.jar'), 'org/c/a/a',
                           os.path.join(H, 'tmp', 'fp_org_c_a_a_merged_ok.jar.dis')))
    cls = load_tsv_map(os.path.join(part, 'class_map.tsv'))
    fmap = {k.replace('/', '.'): v.replace('/', '.') for k, v in cls.items()}
    tab = {k: body_info(v) for k, v in P[probe_cls]['mbody'].items()}
    S = source_methods(srcpath)
    bind = {}
    wit = collections.defaultdict(list)
    for sig, item in tab.items():
        s, news = item
        hit = [k for k, v in S.items() if tuple(v[1]) == s and len(v[0]) == len(news)]
        if len(hit) != 1:
            continue
        meth = hit[0]
        for x, y in zip(news, S[meth][0]):
            x = x.replace('/', '/')
            if x in cls:
                continue
            pkgx = x.rsplit('/', 1)[0]
            # 只接受同包（源码里的简单名要与已映射包对齐）
            bind.setdefault(x, collections.Counter())[y] += 1
            wit[x].append(meth[0])
    decided = {}
    for x, c in bind.items():
        (y, v), = c.most_common(1)
        if len(c) == 1:
            decided[x] = (y, v, sorted(set(wit[x])))
    bysimple = {}
    for k in (O or {}):
        bysimple.setdefault(k.rsplit('/', 1)[-1], []).append(k)
    opkg = oracle_cls.rsplit('/', 1)[0]
    print('== %s（工厂 %s）' % (probe_cls.rsplit('/', 1)[-1], oracle_cls.rsplit('/', 1)[-1]))
    resolved = {}
    for x in sorted(decided):
        y, v, ws = decided[x]
        cand = bysimple.get(y) or []
        if len(cand) == 1:
            resolved[x] = (cand[0], ws)
            print('   %-26s → %-56s 见证 %s' % (x.rsplit('/', 1)[-1], cand[0], ','.join(ws)))
        else:
            print('   %-26s ~ %s（候选 %s）' % (x.rsplit('/', 1)[-1], y, len(cand)))
    decided = resolved
    if apply and decided:
        path = os.path.join(part, 'class_map.tsv')
        have = set(load_tsv_map(path))
        n = 0
        with open(path, 'a', encoding='utf-8') as w:
            for x in sorted(decided):
                if x in have:
                    continue
                y, ws = decided[x]
                w.write('%s\t%s\tsrc:oracle 源码 %s 的 %s 里 new 序列与探针同串方法体逐位对应\n'
                        % (x, y, srcpath.rsplit('/', 1)[-1], '、'.join(ws)))
                n += 1
        print('   写入 +%d' % n)
    return decided


if __name__ == '__main__':
    main()
