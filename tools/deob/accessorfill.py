#!/usr/bin/env python3
"""accessorfill.py —— 用「方法体只读/写一个已定名字段」把取值器/设值器命名。

判据（字节码级，改名不变）：
  方法体 == iget <field>; return            → get<Field> / is<Field>（boolean）
  方法体 == iput <field>, <唯一实参>; return-void → set<Field>
前提是该字段**已经定名**（否则不知道叫什么）。所以要先跑 jsonfields，再跑本工具；
两者可以交替跑几轮，字段→取值器→… 会连锁。

用法:
  python3 tools/deob/accessorfill.py -p process/deob.json --part dropbox [--apply]
"""
import os, sys, re, json, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_METH = re.compile(r'^\.method\s+([^\n]*)$')
RE_IGET = re.compile(r'^\s*iget(?:-object|-wide|-boolean|-byte|-char|-short)?\s+([vp]\d+),\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')
RE_IPUT = re.compile(r'^\s*iput(?:-object|-wide|-boolean|-byte|-char|-short)?\s+([vp]\d+),\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')


def cap(s):
    return s[:1].upper() + s[1:]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--part', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    part = next((x for x in cfg['parts'] if os.path.basename(x.get('dir', '').rstrip('/')) == a.part), None)
    pdir = ex(part['dir'])
    cmap = {}
    for ln in open(os.path.join(pdir, 'class_map.tsv'), encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[1]:
            cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    tsrg = os.path.join(pdir, 'members.tsrg')
    blocks, order, cur = {}, [], None
    for line in open(tsrg, encoding='utf-8').read().split('\n'):
        if not line:
            continue
        if line.startswith('\t'):
            blocks[cur].append(line)
        else:
            cur = line.split(' ')[0]
            blocks[cur] = []
            order.append(cur)
    fname = collections.defaultdict(dict)     # cls -> {oldfield: newname}
    meth = collections.defaultdict(set)       # cls -> {(name,desc)}
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) == 2:
                fname[k][t[0]] = t[1]
            elif len(t) >= 3:
                meth[k].add((t[0], t[1]))
    idx = {}
    for ln in open(ex(cfg.get('smali_index') or 'truth/smali_index.tsv'), encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2:
            idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    added = 0
    for pn in sorted(cmap):
        if pn not in blocks:
            continue
        fn = idx.get(pn)
        txt = None
        for r in roots:
            p2 = os.path.join(r, a.prefix, fn or '')
            if fn and os.path.exists(p2):
                txt = open(p2, encoding='utf-8', errors='replace').read()
                break
        if txt is None:
            continue
        cur = None
        body = []
        for line in txt.split('\n'):
            if line.startswith('.method'):
                m = RE_METH.match(line)
                sig = m.group(1).split()[-1] if m and m.group(1).split() else ''
                cur = sig
                body = []
                continue
            if line.startswith('.end method'):
                if cur and '(' in cur:
                    nm = cur.split('(')[0]
                    ds = '(' + cur.split('(', 1)[1]
                    if nm not in ('<init>', '<clinit>') and (nm, ds) not in meth[pn]:
                        ins = [l for l in body if l.strip() and not l.strip().startswith('.') and not l.strip().startswith('#')]
                        if len(ins) in (2, 3):
                            g = RE_IGET.match(ins[0])
                            p = RE_IPUT.match(ins[0])
                            if g and g.group(2) == pn and g.group(3) in fname[pn] and 'return' in ins[1]:
                                f = cap(fname[pn][g.group(3)])
                                new = ('is' if g.group(4) == 'Z' else 'get') + f
                                if not any(x[0] == new for x in meth[pn]) and not any(x[0] == new for x in meth[pn]):
                                    blocks[pn].append('\t%s %s %s' % (nm, ds, new))
                                    meth[pn].add((nm, ds)); added += 1
                            elif p and p.group(2) == pn and p.group(3) in fname[pn] and ds.endswith(')V') and not ds.startswith('()'):
                                f = cap(fname[pn][p.group(3)])
                                new = 'set' + f
                                if not any(x[0] == new for x in meth[pn]):
                                    blocks[pn].append('\t%s %s %s' % (nm, ds, new))
                                    meth[pn].add((nm, ds)); added += 1
                cur = None
                body = []
                continue
            if cur:
                body.append(line)
    print('%s：按"只读写一个已定名字段"补了 %d 条' % (a.part, added))
    if a.apply and added:
        with open(tsrg, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg)


if __name__ == '__main__':
    main()
