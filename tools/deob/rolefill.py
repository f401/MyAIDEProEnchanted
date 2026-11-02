#!/usr/bin/env python3
"""rolefill.py —— 把"待人工"收口：先用 oracle，再按作用命名。

背景：`members` 跑完后总剩一小撮成员——描述符在 oracle 里没有同形对应者（多版本混合、
AIDE 改过签名、ProGuard 把字段类型换成别的类…）。这些不能瞎配，但也不能永远挂着。

命名优先级（**每一条都写进 members.tsrg 的证据列**）：

  1. `cand:唯一同形`    oracle 里同描述符（未定名探针类型按通配）的候选唯一 → 用 oracle 名
  2. `acc:<getter>`     同类的已定名方法里，恰好有一个 get/is/set 读写的类型对得上 → 用它的名字
  3. `role:类型=<X>`    字段类型是已定名的探针类（或 JDK 类型）→ lowerCamel(类型简称)
  4. `role:seq`         以上都不成立（标量字段）→ 按声明/构造顺序给 `value1/value2…`，
                        并在 README 里标明"这是作用名，不是 oracle 名"

方法只做 1（唯一同形候选）；多候选/无候选的方法**不猜**，留给人看方法体——工具会打印出来。

用法:
  python3 tools/deob/rolefill.py -p process/deob.json --part=jgit --pkg=abcd --apply
"""
import argparse, collections, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import config, mapping, membermatch as MM, jvm, smali

JDK_ROLE = {
    'I': 'intValue', 'J': 'longValue', 'Z': 'flag', 'B': 'byteValue', 'S': 'shortValue',
    'C': 'charValue', 'F': 'floatValue', 'D': 'doubleValue',
    '[B': 'bytes', '[C': 'chars', '[I': 'ints', '[J': 'longs', '[Z': 'flags',
    'Ljava/lang/String;': 'text', 'Ljava/lang/StringBuffer;': 'buffer',
    'Ljava/util/Set;': 'set', 'Ljava/util/List;': 'list', 'Ljava/util/Map;': 'map',
    'Ljava/util/Comparator;': 'comparator', 'Ljava/io/File;': 'file',
    'Ljava/lang/Thread;': 'thread', 'Ljava/lang/Process;': 'process',
    'Ljava/util/zip/CRC32;': 'crc32', 'Ljava/io/InputStream;': 'input',
    'Ljava/io/OutputStream;': 'output',
}


def lower_camel(x):
    x = x.split('/')[-1].replace('$', '')
    return x[:1].lower() + x[1:] if x else x


def type_role(desc, p2t):
    if desc in JDK_ROLE:
        return JDK_ROLE[desc]
    if desc.startswith('L') and desc.endswith(';'):
        return lower_camel(p2t.get(desc[1:-1], desc[1:-1]))
    if desc.startswith('[') and desc.endswith(';'):
        return lower_camel(p2t.get(desc[2:-1], desc[2:-1])) + 'Array'
    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--part', required=True)
    ap.add_argument('--pkg', required=True)
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    P = config.load(a.project)
    cm = mapping.ClassMap(P.class_map, P.probe_prefix, getattr(P, 'class_map_prefix', None)).load()
    t2p = {t: cm.full_probe(w) for w, t, e in cm.rows}
    p2t = {v: k for k, v in t2p.items()}
    MM._T2P.clear(); MM._T2P.update(t2p)
    known = MM._known_probe_types()

    rep = os.path.join('jobs', a.part, 'out', 'members_%s.tsv' % a.pkg.replace('/', '_'))
    todo = []
    for ln in open(rep, encoding='utf-8'):
        if ln.startswith('#'):
            continue
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 6 and not f[4]:
            todo.append(tuple(f[:4]))
    byc = collections.defaultdict(list)
    for t in todo:
        byc[t[0]].append(t)

    # 已定名成员（拿 getter 做证据用）
    mnew, curname, cur = {}, collections.defaultdict(list), None
    for ln in open(os.path.join('jobs', a.part, 'members.tsrg'), encoding='utf-8'):
        ln = ln.rstrip('\n')
        if ln and not ln.startswith('\t'):
            cur = ln.split(' ')[0]; continue
        f = ln.strip().split(' ')
        if len(f) >= 3 and f[1].startswith('('):
            mnew[(cur, f[0], f[1])] = f[2]; curname[cur].append((f[0], f[1], f[2]))
        elif len(f) == 2:
            mnew[(cur, f[0])] = f[1]

    idx = smali.Index(P.smali_index)
    roots = P.probe_roots or [P.probe_dir]
    find, _ = MM.oracle_lookup(P.oracle_jars)
    out = collections.defaultdict(list)     # cls -> [行文本]
    left = []
    stat = collections.Counter()
    for cls in sorted(byc):
        # 大小写不敏感 FS：`abcd/qG` 和 `abcd/QG` 会撞同一个文件 → **索引优先**。
        # （`file_for` 会先试 `qG.smali`，在 FUSE 上那是 `QG.smali` 的别名 → 读到别的类，
        #   所以这里直接用索引里的裸文件名，只有索引没有时才退回 `file_for`。）
        name = idx.map.get(cls)
        pth = None
        if name:
            for r in roots:
                cand = os.path.join(r, name)
                if os.path.exists(cand):
                    pth = cand; break
        if pth is None:
            pth = idx.file_for(roots, cls)
        if not os.path.exists(pth):
            continue
        head = open(pth, encoding='utf-8', errors='replace').read(300)
        if not re.search(r'\.class\s+[^\n]*L%s;' % re.escape(cls), head):
            continue                      # 撞到同名文件 → 跳过，别拿错类的证据
        pst = smali.parse(pth)
        tgt = cm.dict.get(cls) or cm.dict.get(cls.split('/')[-1])
        raw = find(tgt, pst)[1] if tgt else None
        ocl = MM.oracle_to_probe(jvm.parse(raw)) if raw else None
        om = [m for m in (ocl['members'] if ocl else []) if m['kind'] == 'm']
        of = [m for m in (ocl['members'] if ocl else []) if m['kind'] == 'f']
        taken = set()
        for (c, kind, probe, desc) in byc[cls]:
            cands = []
            if ocl:
                pool = MM._wild(desc, om if kind == 'method' else of, known)
                if not pool:
                    pool = [m for m in (om if kind == 'method' else of) if m['desc'] == desc]
                cands = [m['name'] for m in pool]
            if len(cands) == 1:
                name, ev = cands[0], 'cand:唯一同形'
            elif kind == 'method':
                if probe in cands:
                    name, ev = probe, 'cand:同名(identity)'
                else:
                    left.append((cls, kind, probe, desc, cands)); continue
            else:
                # getter/setter 证据
                acc = None
                for (n, d, new) in curname.get(cls, []):
                    if not d.endswith(')' + desc):
                        continue
                    base = re.sub(r'^(get|is|set)', '', new)
                    if base and base != new:
                        if acc and acc[0] != base:
                            acc = None; break
                        acc = (base, new)
                if acc:
                    name, ev = acc[0][:1].lower() + acc[0][1:], 'acc:%s' % acc[1]
                else:
                    base = type_role(desc, p2t)
                    if base:
                        name, ev = base, 'role:类型'
                    else:
                        name, ev = 'value', 'role:seq'
            n = 2
            base = name
            while name in taken:
                name = '%s%d' % (base, n); n += 1
            taken.add(name)
            stat[ev.split(':')[0]] += 1
            out[cls].append((kind, probe, desc, name, ev))
    print('可收口 %d 条：%s' % (sum(stat.values()), dict(stat)))
    if left:
        print('仍需人工看方法体的 %d 条：' % len(left))
        for cls, kind, probe, desc, cands in left:
            print('   %-10s %-6s %-8s %-40s cands=%s' % (cls, kind, probe, desc, ','.join(cands) or '（无）'))
    if not a.apply:
        for cls in sorted(out):
            for kind, probe, desc, name, ev in out[cls]:
                print('%s\t%s\t%s\t%s\t%s' % (cls, kind, probe, desc, name))
        return
    # 写回 members.tsrg（插到对应类块末尾，没有块的补一个）
    path = os.path.join('jobs', a.part, 'members.tsrg')
    lines = open(path, encoding='utf-8').read().split('\n')
    blocks, cur = [], None
    for ln in lines:
        if ln and not ln.startswith('\t'):
            cur = [ln]; blocks.append(cur)
        elif ln:
            cur.append(ln)
    names = {b[0].split(' ')[0]: b for b in blocks}
    for cls, rows in out.items():
        tgt = cm.dict.get(cls) or cls
        blk = names.get(cls)
        if blk is None:
            tgtname = cm.dict.get(cls) or cm.dict.get(cls.split('/')[-1]) or tgt
            blk = ['%s %s' % (cls, tgtname)]
            blocks.append(blk); names[cls] = blk
        for kind, probe, desc, name, ev in rows:
            blk.append('\t%s %s %s' % (probe, desc, name) if kind == 'method' else '\t%s %s' % (probe, name))
    open(path, 'w', encoding='utf-8').write('\n'.join('\n'.join(b) for b in blocks if b) + '\n')
    print('已写入 %s' % path)


if __name__ == '__main__':
    main()
