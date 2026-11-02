#!/usr/bin/env python3
"""jsonfields.py —— 用「解析时读的那个 JSON key」给字段/取值方法定名。

Dropbox 这类 SDK 的 struct 类长这样：

    this.country = (String) map.get("country");
    this.displayName = (String) map.get("display_name");
    this.quota = ParseUtil.getLong(map, "quota");

字段名本身被混淆了，但**赋值前刚读过哪个 key** 是写死在字节码里的。于是：

    const-string "country" → Map.get → iput-object p0, Lcls;->j6
                                     ⇒ j6 就是 country

取值方法同理：`getX()` 的方法体是 `iget-object v0, p0, Lcls;->j6; return v0`
⇒ 方法 j6 就是 get + Camel(field)。

用法:
  python3 tools/deob/jsonfields.py -p process/deob.json --part dropbox [--apply]
"""
import os, sys, re, json, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))

RE_CS = re.compile(r'^\s*const-string(?:/jumbo)?\s+[vp]\d+,\s*"(.*)"\s*$')
RE_IPUT = re.compile(r'^\s*iput(?:-object|-wide|-boolean|-byte|-char|-short)?\s+[vp]\d+,\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')
RE_IGET = re.compile(r'^\s*iget(?:-object|-wide|-boolean|-byte|-char|-short)?\s+[vp]\d+,\s*[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')
RE_METH = re.compile(r'^\.method\s+([^\n]*)$')


def camel(s):
    parts = re.split(r'[^0-9A-Za-z]+', s)
    out = ''.join(p[:1].upper() + p[1:] for p in parts if p)
    return out or 'x'


def parse(txt, self_name):
    """→ ({field: jsonkey}, {(mname,mdesc): field})"""
    fields, getters = {}, {}
    cur = None
    last = None
    seen_key = None
    for line in txt.split('\n'):
        if line.startswith('.method'):
            m = RE_METH.match(line)
            cur = m.group(1).split()[-1] if m and m.group(1).split() else None
            last = None
            continue
        if line.startswith('.end method'):
            cur = None
            continue
        m = RE_CS.match(line)
        if m:
            last = m.group(1) if ('get' in line or True) else None
            pending_key = last
            continue
        if 'Ljava/util/Map;->get' in line and last is not None:
            seen_key = last          # 这个 key 确实被 Map.get 用了
            last = None
            continue
        m = RE_IPUT.match(line)
        if m and m.group(1) == self_name:
            if seen_key:
                fields[m.group(2)] = seen_key
            seen_key = None
            last = None
            continue
        m = RE_IGET.match(line)
        if m and m.group(1) == self_name and cur and cur.endswith('()' + m.group(3)):
            name = cur.split('(')[0]
            if name not in ('<init>', '<clinit>'):
                getters[(name, '(' + cur.split('(', 1)[1])] = m.group(2)
    return fields, getters


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
    done = collections.defaultdict(set)
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            done[k].add(t[0] if len(t) == 2 else (t[0], t[1]))
    idx = {}
    ip = ex(cfg.get('smali_index') or 'truth/smali_index.tsv')
    for ln in open(ip, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2:
            idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    nf = ng = 0
    report = []
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
        fields, getters = parse(txt, pn)
        # 字段名 = JSON key 的驼峰；只在没映射过时写
        newname = {}
        for f, key in fields.items():
            if f in done[pn]:
                continue
            nm = camel(key)
            nm = nm[:1].lower() + nm[1:]     # 字段用小驼峰
            if len(nm) < 2 or nm in newname.values():
                continue                      # 空 key / 撞名都不写
            if nm in newname.values():
                continue
            newname[f] = nm
            blocks[pn].append('\t%s %s' % (f, nm))
            report.append('%-12s field %-6s -> %-22s (key %r)' % (pn, f, nm, key))
            nf += 1
        # 取值方法 = get + Camel(field)
        for (mn, md), f in getters.items():
            if (mn, md) in done[pn]:
                continue
            base_name = newname.get(f) or next((x.split(' ')[1] for x in blocks[pn]
                                                if x.startswith('\t%s ' % f) and len(x.split(' ')) == 2), None)
            if not base_name:
                continue
            if not all(ch.isalnum() or ch == '_' for ch in base_name):
                continue
            nm = 'get' + base_name[:1].upper() + base_name[1:]
            if any(x.startswith('\t%s %s ' % (mn, md)) for x in blocks[pn]):
                continue
            blocks[pn].append('\t%s %s %s' % (mn, md, nm))
            report.append('%-12s method %-6s%s -> %s' % (pn, mn, md, nm))
            ng += 1
    for r in report[:24]:
        print('  ', r)
    print('%s：JSON key 定字段 %d 条、取值方法 %d 条' % (a.part, nf, ng))
    if a.apply:
        with open(tsrg, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg)


if __name__ == '__main__':
    main()
