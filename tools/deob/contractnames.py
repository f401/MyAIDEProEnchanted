#!/usr/bin/env python3
"""contractnames.py —— 按**继承契约**给覆写方法定名（不需要 oracle 有这个方法）。

一个方法如果覆写了父类/接口里同描述符的方法，它的名字是被**契约**定死的：
`FilterOutputStream.write([BII)V` 不管在哪一层都叫 `write`。所以只要顺着父类链
找到声明了同描述符方法的那个类，名字就有了——**这不是猜，是 Java 的语义**。

名字表来自：`android.jar`（JDK/Android）+ 指定 oracle jar（第三方库）+ 本 part 的类映射。

用法:
  python3 tools/deob/contractnames.py -p process/deob.json --part dropbox \\
      --lib ~/out/oracle/http/httpclient-4.2.1.jar --lib ~/out/oracle/http/httpcore-4.2.1.jar \\
      [--apply]
"""
import os, sys, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody


def build_index(paths):
    """类名 → {desc: [方法名…]}（只收方法描述符，够用且省内存）"""
    tab = {}
    for p in paths:
        if not p or not os.path.exists(p):
            continue
        z = zipfile.ZipFile(p)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            cn = n[:-6]
            if cn in tab:
                continue
            try:
                c = jvmbody.parse(z.read(n))
            except Exception:
                continue
            if not c or not c['this']:
                continue
            d = collections.defaultdict(list)
            for m in c['members']:
                if m['kind'] == 'm':
                    d[m['desc']].append(m['name'])
            tab[cn] = (c['sup'], list(c['ifaces'] or []), d)
    return tab


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--part', required=True)
    ap.add_argument('--lib', action='append', default=[])
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
            cmap[t[0] if '/' in t[0] else 'abcd/' + t[0]] = t[1]
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
    done = collections.defaultdict(set)
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) >= 3:
                done[k].add((t[0], t[1]))
    libs = [ex(cfg['base_jars'][0]), ex('android.jar')]
    for o in cfg['oracle_jars']:
        libs.append(ex(o['path']))
    libs += [os.path.expanduser(x) for x in a.lib]
    tab = build_index(libs)
    print('名字表：%d 个类' % len(tab))
    zp = zipfile.ZipFile(ex(cfg['base_jars'][0]))
    added = amb = 0
    for cls in order:
        try:
            pc = jvmbody.parse(zp.read(cls + '.class'))
        except KeyError:
            continue
        ifaces = [cmap.get(i, i) for i in (pc['ifaces'] or [])]
        sup = cmap.get(pc['sup'], pc['sup'])
        # 收集整条链上每个描述符的候选名
        names = collections.defaultdict(set)
        seen = set()
        stack = [sup] + ifaces
        while stack:
            c = stack.pop()
            if not c or c in seen or c not in tab:
                continue
            seen.add(c)
            s2, i2, d = tab[c]
            for desc, nms in d.items():
                for nm in nms:
                    names[desc].add(nm)
            stack.extend([s2] + i2)
        for m in pc['members']:
            if m['kind'] != 'm' or not m['code']:
                continue
            if (m['name'], m['desc']) in done[cls]:
                continue
            own = {x['name'] for x in pc['members'] if x['kind'] == 'm' and x['desc'] == m['desc']}
            cand = names.get(m['desc']) or set()
            if cand and (cand & own):       # 本类已经有同名同描述符的方法 → 这个槽不是它
                done[cls].add((m['name'], m['desc']))
                continue
            if len(cand) == 1:
                nm = next(iter(cand))
                blocks[cls].append('\t%s %s %s' % (m['name'], m['desc'], nm))
                done[cls].add((m['name'], m['desc']))
                added += 1
            elif len(cand) > 1:
                amb += 1
    print('%s：按继承契约补了 %d 个方法（描述符在链上有多个名字、没敢动的 %d 个）' % (a.part, added, amb))
    if a.apply and added:
        with open(tsrg, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg)


if __name__ == '__main__':
    main()
