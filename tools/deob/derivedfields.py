#!/usr/bin/env python3
"""derivedfields.py —— 对齐「值是从**另一个已定名的常量**派生出来的」静态字段。

第三种静态常量写法（前两种见 constfields / oidfields）：

    public static final String DATA = CMSObjectIdentifiers.data.getId();
    static final ASN1ObjectIdentifier x = SomeOtherOID.y.branch("1");

字段值既不是字面量、也不是 OID 拼接，而是"取某个 OID 常量再转一下"。只要左边那个
常量已经定名，**它指谁就是它的身份**：

    sig(field) = (被读字段的类→真名, 被读字段名→真名)
两边 sig 相等且在该类内唯一才写。

用法:
  python3 tools/deob/derivedfields.py -p process/deob.json --part spongycastle [--apply]
"""
import os, sys, re, json, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
import struct
import zipfile

RE_SGET = re.compile(r'^\s*sget-object\s+[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')
RE_SPUT = re.compile(r'^\s*sput-object\s+[vp]\d+,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')


def probe_derived(txt):
    out = {}
    last = None
    for line in txt.split('\n'):
        m = RE_SGET.match(line)
        if m:
            last = (m.group(1), m.group(2))
            continue
        m = RE_SPUT.match(line)
        if m:
            if last:
                out[m.group(2)] = last
            last = None
    return out


def oracle_derived(raw):
    try:
        c = jvmbody.parse(raw)
    except Exception:
        return {}
    code = None
    for m in c['members']:
        if m['kind'] == 'm' and m['name'] == '<clinit>':
            code = m.get('code')
    if not code:
        return {}
    out = {}
    last = None
    i, n, LEN = 0, len(code), jvmbody.LEN
    while 0 <= i < n:
        op = code[i]
        try:
            if op == 0xb2:                      # getstatic
                idx = struct.unpack_from('>H', code, i + 1)[0]
                rm = c.get('refmap', {}).get(idx)
                last = (rm[0], rm[1]) if rm else None
                i += 3
                continue
            if op == 0xb3:                      # putstatic
                idx = struct.unpack_from('>H', code, i + 1)[0]
                rm = c.get('refmap', {}).get(idx)
                if rm and last:
                    out[rm[1]] = last
                last = None
                i += 3
                continue
            if op == 0xaa:
                pad = (4 - ((i + 1) % 4)) % 4
                b0 = i + 1 + pad
                d, lo, hi = struct.unpack_from('>iii', code, b0)
                i = b0 + 12 + 4 * (hi - lo + 1)
                continue
            if op == 0xab:
                pad = (4 - ((i + 1) % 4)) % 4
                b0 = i + 1 + pad
                d, np_ = struct.unpack_from('>ii', code, b0)
                i = b0 + 8 + 8 * np_
                continue
            if op == 0xc4:
                i += 6 if code[i + 1] == 0x84 else 4
                continue
        except Exception:
            break
        i += LEN.get(op, 1)
    return out


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
    fmap = {}      # (类, 旧字段名) -> 新字段名
    done = collections.defaultdict(set)
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) == 2:
                fmap[(k, t[0])] = t[1]
                done[k].add(t[0])
    idx = {}
    ip = ex(cfg.get('smali_index') or 'truth/smali_index.tsv')
    if os.path.exists(ip):
        for ln in open(ip, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2:
                idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    ojar = {}
    for o in cfg['oracle_jars']:
        p = ex(o['path'])
        if not os.path.exists(p):
            continue
        z = zipfile.ZipFile(p)
        for n in z.namelist():
            if n.endswith('.class') and n[:-6] not in ojar:
                ojar[n[:-6]] = z.read(n)
    od_names = {}
    added = skip = 0
    for pn, on in sorted(cmap.items()):
        if pn not in blocks or on not in ojar:
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
        pd = probe_derived(txt)
        if not pd:
            continue
        od = oracle_derived(ojar[on])
        if on not in od_names:
            try:
                od_names[on] = {m['name'] for m in jvmbody.parse(ojar[on])['members'] if m['kind'] == 'f'}
            except Exception:
                od_names[on] = set()
        back = collections.defaultdict(list)
        for f, v in od.items():
            back[v].append(f)
        for f, (owner, src) in sorted(pd.items()):
            if f in done[pn]:
                continue
            real_owner = cmap.get(owner, owner)
            real_src = fmap.get((owner, src), src)
            cand = back.get((real_owner, real_src)) or []
            if len(cand) != 1:
                # 别名：`ETSIQC.QcCompliance = PKCSObjectIdentifiers.QcCompliance`
                # oracle 不这么写，但"源字段的真名"如果也是本类的字段名，那就是它
                if real_src in (od_names.get(on) or set()) and real_src not in done[pn]:
                    cand = [real_src]
                else:
                    skip += 1
                    continue
            if cand[0] in done[pn]:
                skip += 1
                continue
            blocks[pn].append('\t%s %s' % (f, cand[0]))
            done[pn].add(f)
            added += 1
    print('%s：按"派生自哪个已定名常量"补了 %d 个字段（跳过 %d）' % (a.part, added, skip))
    if a.apply:
        with open(tsrg, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg)


if __name__ == '__main__':
    main()
