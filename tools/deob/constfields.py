#!/usr/bin/env python3
"""constfields.py —— 用「<clinit> 里赋的常量串」对齐**静态常量字段**。

典型场景：`*ObjectIdentifiers` 这种常量表有上百个 `static final ASN1ObjectIdentifier`
字段，描述符完全一样，`members` 的"描述符桶唯一"这条路直接失效（129 个同描述符候选）。
但每个字段在 `<clinit>` 里都是 `new ASN1ObjectIdentifier("1.2.840...")` 赋进去的——
**那个字符串就是它的身份**，探针侧和 oracle 侧都能原样读到。

判据：probe 字段的 (clinit 里最后一次 const-string) == oracle 字段的同一个串。
每个串必须在该类里唯一，否则不写（宁缺勿错）。

用法:
  python3 tools/deob/constfields.py -p process/deob.json --part spongycastle \\
      --prefix abcd [--apply]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
import struct

RE_STR = re.compile(r'^\s*const-string(?:/jumbo)?\s+[vp]\d+\s*,\s*"(.*)"\s*$', re.M)
RE_FIELD = re.compile(r'^\.field\s+([^\n]*?)([A-Za-z0-9_$]+):(\S+?)\s*(?:=.*)?$', re.M)
RE_SPUT = re.compile(r'^\s*sput(?:-object|-wide|-boolean|-byte|-char|-short)?\s+[vp]\d+\s*,\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$', re.M)


def probe_consts(smali_text):
    """→ {field: 最后一次 const-string}"""
    out = {}
    last = None
    for line in smali_text.split('\n'):
        m = RE_STR.match(line)
        if m:
            last = unesc(m.group(1))
            continue
        m = RE_SPUT.match(line)
        if m and last is not None:
            out[m.group(2)] = last
    return out


def unesc(x):
    return (x.replace('\\n', '\n').replace('\\t', '\t').replace('\\"', '"')
            .replace("\\'", "'").replace('\\\\', '\\'))


def oracle_consts(raw):
    """JVM 字节码 → {field: 最后一次 ldc 的字符串}（只看 <clinit>）"""
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
    i, n = 0, len(code)
    LEN = jvmbody.LEN
    while 0 <= i < n:
        op = code[i]
        try:
            if op == 0x12:                      # ldc
                k = code[i + 1]
                if c['strs'].get(k):
                    last = c['utf'].get(c['strs'][k])
                i += 2
                continue
            if op == 0x13:                      # ldc_w
                k = struct.unpack_from('>H', code, i + 1)[0]
                if c['strs'].get(k):
                    last = c['utf'].get(c['strs'][k])
                i += 3
                continue
            if op == 0xb3:                      # putstatic
                idx = struct.unpack_from('>H', code, i + 1)[0]
                rm = c.get('refmap', {}).get(idx)
                if rm and last is not None:
                    out[rm[1]] = last
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
    if not part:
        raise SystemExit('没有这个 part：%s' % a.part)
    pdir = ex(part['dir'])
    cmap = {}
    for ln in open(os.path.join(pdir, 'class_map.tsv'), encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) >= 2 and t[1]:
            cmap[t[0] if '/' in t[0] else a.prefix + '/' + t[0]] = t[1]
    tsrg_path = os.path.join(pdir, 'members.tsrg')
    blocks, order, cur = {}, [], None
    for line in open(tsrg_path, encoding='utf-8').read().split('\n'):
        if not line:
            continue
        if line.startswith('\t'):
            blocks[cur].append(line)
        else:
            f = line.split(' ')
            cur = f[0]
            blocks[cur] = []
            order.append(cur)
    # 已映射的字段名（避免覆盖）
    done = collections.defaultdict(set)
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) == 2:
                done[k].add(t[0])
    # smali 索引
    idx = {}
    ip = ex(cfg.get('smali_index') or 'truth/smali_index.tsv')
    if os.path.exists(ip):
        for ln in open(ip, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2:
                idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    # oracle 索引
    ojar = {}
    for o in cfg['oracle_jars']:
        p = ex(o['path'])
        if not os.path.exists(p):
            continue
        z = zipfile.ZipFile(p)
        for n in z.namelist():
            if n.endswith('.class') and n[:-6] not in ojar:
                ojar[n[:-6]] = z.read(n)
    added = skipped = nocls = 0
    for pn, on in sorted(cmap.items()):
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
        pconst = probe_consts(txt)
        pfdesc = {m.group(2): m.group(3) for m in RE_FIELD.finditer(txt)}
        oraw = ojar.get(on)
        if not oraw:
            nocls += 1
            continue
        oconst = oracle_consts(oraw)
        try:
            _oc = jvmbody.parse(oraw)
            ofdesc = {m['name']: m['desc'] for m in _oc['members'] if m['kind'] == 'f'}
        except Exception:
            ofdesc = {}
        # 反向：串 → 字段（要求该类里唯一）
        back = collections.defaultdict(list)
        for f, v in oconst.items():
            back[v].append(f)
        for f, v in sorted(pconst.items()):
            if f in done[pn]:
                continue
            cand = back.get(v) or []
            if len(cand) != 1:
                skipped += 1
                continue
            if cand[0] in ('', None) or cand[0] == f:
                continue
            # 描述符必须真的一致，否则就是"碰巧同一个串"
            _pd = re.sub(r'L([A-Za-z0-9_$/]+);',
                         lambda m: 'L' + cmap.get(m.group(1), m.group(1)) + ';',
                         pfdesc.get(f, ''))
            if _pd and ofdesc.get(cand[0]) and _pd != ofdesc[cand[0]]:
                skipped += 1
                continue
            if cand[0] in set(x.lstrip('\t').split(' ')[1] for x in blocks[pn]
                              if len(x.lstrip('\t').split(' ')) == 2):
                skipped += 1
                continue
            blocks[pn].append('\t%s %s' % (f, cand[0]))
            done[pn].add(f)
            added += 1
    print('%s：按 clinit 常量串补了 %d 个静态字段（跳过 %d，oracle 缺类 %d）' % (a.part, added, skipped, nocls))
    if a.apply:
        with open(tsrg_path, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, cmap.get(k.split('/')[-1], k))))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg_path)


if __name__ == '__main__':
    main()
