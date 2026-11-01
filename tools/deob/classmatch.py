#!/usr/bin/env python3
"""classmatch.py —— 完全混淆库的批量「类级」匹配（通用，不绑定某个依赖）。

原理: 类名被混淆后结构仍在（成员描述符、static/abstract/interface 标志、super/接口）。
把「本库内部类型」换成占位符得到改名不变的指纹；再用已定映射逐步替换占位符（迭代精化）消歧。

用法:
  python3 tools/deob/classmatch.py -p process/deob.json --prefix com/a/b \
     --oracle dx-1.16,dx-1.7 --oracle-pkg com/android/dx,com/android/dex [--report f.tsv] [--apply]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_CLASS = re.compile(r'^\.class\s+(.*)$', re.M)
RE_SUPER = re.compile(r'^\.super\s+(\S+)$', re.M)
RE_IFACE = re.compile(r'^\.implements\s+(\S+)$', re.M)
RE_FIELD = re.compile(r'^\.field\s+([^\n=]*?)([A-Za-z0-9_$]+):(\S+?)\s*(?:=.*)?$', re.M)
RE_METHOD = re.compile(r'^\.method\s+([^\n]*)$', re.M)
RE_CONST = re.compile(r'^\s*const-string(?:/jumbo)?\s+[vp]\d+\s*,\s*"(.*)"\s*$', re.M)

def unesc(x):
    if '\\' not in x: return x
    return (x.replace('\\n','\n').replace('\\t','\t').replace('\\"','"')
             .replace("\\'", "'").replace('\\\\','\\'))
ACC_STATIC = 0x0008

# ---- 整数字面量指纹 ----------------------------------------------------------
# 类名/成员名被改名后，方法体里的**整数字面量**仍然原样保留，而编译期常量
# （如 ASN.1 tag、移位位数、长度上限）往往就是区分同一形状家族的唯一证据：
# DERUTF8String / DERPrintableString / DERIA5String … 的成员描述符完全一样，
# 只有 encode() 里的 tag 常量不同。所以把它当成形状指纹的一部分。
RE_INT4 = re.compile(r'^\s*const/4\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)
RE_INT16 = re.compile(r'^\s*const/16\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)
RE_INT = re.compile(r'^\s*const(?:/high16)?\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$', re.M)
RE_WIDE = re.compile(r'^\s*const-wide(?:/16|/32|/high16)?\s+[vp]\d+,\s*(-?0x[0-9a-fA-F]+|-?\d+)', re.M)


def pint(t):
    """smali 文本 → 整数字面量多重集"""
    c = collections.Counter()
    for m in RE_INT4.finditer(t):
        c[int(m.group(1), 0)] += 1
    for m in RE_INT16.finditer(t):
        c[int(m.group(1), 0)] += 1
    for m in RE_INT.finditer(t):
        c[int(m.group(1), 0)] += 1
    for _ in RE_WIDE.finditer(t):
        c['l0'] += 1
    return c


def oint(code):
    """JVM 字节码 → 整数字面量多重集（iconst_*/bipush/sipush/lconst_*）"""
    import struct
    c = collections.Counter()
    i, n, LEN = 0, len(code or b''), jvmbody.LEN
    while 0 <= i < n:
        op = code[i]
        try:
            if 0x02 <= op <= 0x08:
                c[op - 0x03] += 1
            elif op == 0x10 and i + 2 <= n:
                v = code[i + 1]
                c[v - 256 if v > 127 else v] += 1
            elif op == 0x11 and i + 3 <= n:
                c[struct.unpack_from('>h', code, i + 1)[0]] += 1
            elif op in (0x09, 0x0a):
                c['l%d' % (op - 0x09)] += 1
        except Exception:
            break
        if op == 0xaa:
            pad = (4 - ((i + 1) % 4)) % 4
            b0 = i + 1 + pad
            if b0 + 12 > n:
                break
            d, lo, hi = struct.unpack_from('>iii', code, b0)
            i = b0 + 12 + 4 * (hi - lo + 1)
            continue
        if op == 0xab:
            pad = (4 - ((i + 1) % 4)) % 4
            b0 = i + 1 + pad
            if b0 + 8 > n:
                break
            d, np_ = struct.unpack_from('>ii', code, b0)
            i = b0 + 8 + 8 * np_
            continue
        if op == 0xc4:
            if i + 2 > n:
                break
            i += 6 if code[i + 1] == 0x84 else 4
            continue
        i += LEN.get(op, 1)
    return c
KEEP = 0x0200 | 0x0400 | 0x0010 | 0x4000   # interface|abstract|final|enum

def norm(desc, own, m):
    if not desc: return desc
    def sub(mo):
        n = mo.group(1)
        return 'L' + (m.get(n, '#') if n in own else n) + ';'
    return re.sub(r'L([A-Za-z0-9_$/\-]+);', sub, desc)

def probe_classes(root, prefix):
    out = {}
    for dp, _, fns in os.walk(os.path.join(root, prefix)):
        for f in fns:
            if not f.endswith('.smali'): continue
            try: t = open(os.path.join(dp, f), encoding='utf-8', errors='replace').read()
            except Exception: continue
            mo = RE_CLASS.search(t)
            if not mo: continue
            toks = mo.group(1).split()
            if not toks or not toks[-1].startswith('L'): continue
            acc = 0
            for x in toks[:-1]:
                acc |= {'public':1,'private':2,'protected':4,'static':8,'final':0x10,'interface':0x200,
                        'abstract':0x400,'enum':0x4000,'synthetic':0x1000,'annotation':0x2000}.get(x,0)
            name = toks[-1][1:-1]
            sm = RE_SUPER.search(t)
            fields = [('F', ACC_STATIC if ' static ' in ' '+fm.group(1)+' ' else 0, fm.group(3))
                      for fm in RE_FIELD.finditer(t)]
            methods = []
            for mm in RE_METHOD.finditer(t):
                tk = mm.group(1).split()
                if not tk or '(' not in tk[-1]: continue
                sig = tk[-1]
                methods.append(('M', ACC_STATIC if ' static ' in ' '+' '.join(tk[:-1])+' ' else 0,
                                sig[sig.index('('):]))
            strs = set(unesc(m2.group(1)) for m2 in RE_CONST.finditer(t))
            # 成员名也可能是"真名"（有些库只混淆类名）—— 此时名字本身就是最强指纹
            fn = collections.Counter((ACC_STATIC if ' static ' in ' '+fm.group(1)+' ' else 0,
                                      fm.group(3), fm.group(2)) for fm in RE_FIELD.finditer(t))
            mn = collections.Counter()
            for mm2 in RE_METHOD.finditer(t):
                tk2 = mm2.group(1).split()
                if not tk2 or '(' not in tk2[-1]:
                    continue
                sg = tk2[-1]
                mn[(ACC_STATIC if ' static ' in ' '+' '.join(tk2[:-1])+' ' else 0,
                    sg[sg.index('('):], sg[:sg.index('(')])] += 1
            out[name] = dict(name=name, acc=acc, sup=sm.group(1)[1:-1] if sm else None, strs=strs,
                             ints=pint(t),
                             ifaces=[x[1:-1] for x in RE_IFACE.findall(t)],
                             fields=fields, methods=methods, fn=fn, mn=mn)
    return out

def oracle_classes(jar, pkgs):
    z = zipfile.ZipFile(jar); out = {}
    for n in z.namelist():
        if not n.endswith('.class'): continue
        b = n[:-6]
        if pkgs and not any(b.startswith(p + '/') for p in pkgs): continue
        try:
            raw = z.read(n)
            c = jvmbody.parse(raw)
        except Exception: continue
        if not c or not c['this']: continue
        import struct as _st
        oacc = _st.unpack_from('>H', raw, c['acc_off'])[0]
        f, m = [], []
        for x in c['members']:
            st = ACC_STATIC if (x['acc'] & ACC_STATIC) else 0
            (f if x['kind'] == 'f' else m).append(('F' if x['kind']=='f' else 'M', st, x['desc']))
        ost = set()
        for i in c['strs'].values():
            v = c['utf'].get(i)
            if v: ost.add(v)
        ofn = collections.Counter((ACC_STATIC if (x['acc'] & ACC_STATIC) else 0, x['desc'], x['name'])
                                  for x in c['members'] if x['kind'] == 'f')
        omn = collections.Counter((ACC_STATIC if (x['acc'] & ACC_STATIC) else 0, x['desc'], x['name'])
                                  for x in c['members'] if x['kind'] == 'm')
        oints = collections.Counter()
        for x in c['members']:
            if x['kind'] == 'm' and x.get('code'):
                oints += oint(x['code'])
        out[c['this']] = dict(name=c['this'], acc=oacc, sup=c['sup'], ifaces=c['ifaces'],
                              fields=f, methods=m, strs=ost, fn=ofn, mn=omn, ints=oints)
    return out

def bags(c, own, m, names=False, ints=False):
    if names and c.get('fn') is not None:
        f = collections.Counter((st, norm(d, own, m), n) for (st, d, n) in c['fn'].elements())
        mm = collections.Counter((st, norm(d, own, m), n) for (st, d, n) in c['mn'].elements())
        return f, mm
    f = collections.Counter((s, norm(d, own, m)) for _, s, d in c['fields'])
    mm = collections.Counter((s, norm(d, own, m)) for _, s, d in c['methods'])
    if ints and c.get('ints'):
        for v, k in c['ints'].items():
            mm[('I', v)] += k
    return f, mm


def sim(pa, oa):
    (pf, pm), (of, om) = pa, oa
    inter = sum((pf & of).values()) + sum((pm & om).values())
    tot = max(sum(pf.values()) + sum(pm.values()), sum(of.values()) + sum(om.values()))
    return inter / tot if tot else 0.0


def simstr(a, b):
    # 用 Jaccard：旧实现除以 min(|A|,|B|)，一个"很小的子集"也能拿 1.0，
    # 于是常量串几乎不重叠的两个类会同分平局（OID 常量表就是这样被换错的）。
    if not a or not b: return 0.0
    return len(a & b) / len(a | b)


def total(pb, ps, ob_, os_):
    return 0.65 * sim(pb, ob_) + 0.35 * simstr(ps, os_)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', default='')
    ap.add_argument('--oracle-pkg', default='')
    ap.add_argument('--report', default='')
    ap.add_argument('--iter', type=int, default=6)
    ap.add_argument('--thr', type=float, default=0.55)
    ap.add_argument('--margin', type=float, default=0.12)
    ap.add_argument('--only', default='',
                    help='只对这批探针类做匹配（文件一行一个全名，或逗号分隔）；'
                         'own 仍是整个前缀（内部类型照样换成占位符），只是不参与匹配')
    ap.add_argument('--hard', type=int, default=1,
                    help='硬约束：1=要求 interface/abstract/enum 一致 + 超类一致（已映射时）+ 已映射接口⊆候选接口')
    ap.add_argument('--seed', default='',
                    help='预先给定的 探针->目标 TSV（已确认的行，不再参与匹配，只用来归一化类型）')
    ap.add_argument('--ints', action='store_true',
                    help='把方法体整数字面量也当形状指纹（区分"成员描述符完全相同"的家族）')
    ap.add_argument('--names', action='store_true',
                    help='成员名未被混淆时用它当指纹（名字+描述符多重集，精度接近精确匹配）')
    a = ap.parse_args()
    cfg = json.load(open(a.project)); base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])] or [ex(os.path.dirname(cfg.get('probe_dir','')))]
    pkgs = [x for x in a.oracle_pkg.split(',') if x]
    want = [x for x in a.oracle.split(',') if x]
    probe = {}
    for r in roots: probe.update(probe_classes(r, a.prefix))
    own = set(probe)
    if a.only:
        sel = set()
        for tok in a.only.split(','):
            tok = tok.strip()
            if not tok: continue
            if os.path.exists(os.path.expanduser(tok)):
                sel |= set(x.strip() for x in open(os.path.expanduser(tok), encoding='utf-8')
                           if x.strip() and not x.startswith('#'))
            else:
                sel.add(tok)
        miss = sel - set(probe)
        probe = {k: v for k, v in probe.items() if k in sel}
        print('--only 限定：%d 个探针（缺 %d 个）' % (len(probe), len(miss)))
    print('探针类 %d（前缀 %s）' % (len(probe), a.prefix))
    for o in cfg['oracle_jars']:
        if want and o['label'] not in want: continue
        path = ex(o['path'])
        if not os.path.exists(path): print('  缺失', o['label']); continue
        orc = oracle_classes(path, pkgs); oown = set(orc)
        mapping = {}; prev = -1; best = {}
        if a.seed and os.path.exists(os.path.expanduser(a.seed)):
            n0 = 0
            for ln in open(os.path.expanduser(a.seed), encoding='utf-8'):
                t = ln.rstrip('\n').split('\t')
                if len(t) < 2 or not t[1] or t[0].startswith('#'):
                    continue
                pn0 = t[0] if '/' in t[0] else own and a.prefix + '/' + t[0]
                if pn0 in probe and t[1] in orc:
                    mapping[pn0] = t[1]; n0 += 1
            print('  种子 %d 行' % n0)
        for it in range(a.iter):
            assigned = set(mapping.values())
            omap = {n: (n if n in assigned else '#') for n in oown}
            ob = {n: bags(c, oown, omap, a.names, a.ints) for n, c in orc.items()}
            pb = {n: bags(c, own, mapping, a.names, a.ints) for n, c in probe.items()}
            KIND = 0x0200 | 0x0400 | 0x4000
            obucket = collections.defaultdict(list)
            for on, oc in orc.items():
                obucket[(len(oc['fields']), len(oc['methods']))].append(on)
            cand = {}
            for pn, pc in probe.items():
                if pn in mapping: continue
                nf, nm = len(pc['fields']), len(pc['methods'])
                if nf + nm == 0: continue
                # pool 窗口要**非对称**：ProGuard 收缩只会让 oracle 比探针大，
                # 所以"更大"那一侧要放宽（Pack 那种 13 方法只剩 6 个的类，
                # ±35% 的对称窗口根本框不到）。
                df0, dm0 = max(2, int(nf * 0.5)), max(2, int(nm * 0.5))
                pool = []
                for df in range(-df0, 2 * df0 + 3):
                    for dm in range(-dm0, 2 * dm0 + 3):
                        pool.extend(obucket.get((nf + df, nm + dm), ()))
                sc = []
                pkind = pc['acc'] & KIND
                for on in pool:
                    if on in assigned: continue
                    if a.hard:
                        oc = orc[on]
                        if (oc['acc'] & KIND) != pkind: continue
                        if pc['sup'] and pc['sup'] in mapping and oc['sup'] != mapping[pc['sup']]:
                            continue
                        pif = set(mapping[i] for i in pc['ifaces'] if i in mapping)
                        if pif and not pif <= set(oc['ifaces']): continue
                    sc.append((round(sim(pb[pn], ob[on]), 3),
                               simstr(pc.get('strs') or set(), orc[on].get('strs') or set()), on))
                sc.sort(key=lambda x: (-x[0], -x[1]))
                if not sc: continue
                s1 = sc[0][0]
                s2 = sc[1][0] if len(sc) > 1 else 0.0
                cand[pn] = (s1, s1 - s2, sc[:6])
            pairs = []
            for pn, (s1, mg, top) in cand.items():
                for sc_, ss_, on_ in top:
                    if sc_ >= a.thr:
                        pairs.append((sc_, ss_, pn, on_))
            pairs.sort(reverse=True)
            for sc_, ss_, pn, on_ in pairs:
                if pn in mapping or on_ in assigned: continue
                mapping[pn] = on_; assigned.add(on_); best[pn] = (sc_, ss_, on_)
            if len(mapping) == prev: break
            prev = len(mapping)
        # 第二轮：字符串证据补漏（形状没对上、但常量池高度吻合）
        assigned = set(mapping.values())
        omap = {n: (n if n in assigned else '#') for n in oown}
        ob = {n: bags(c, oown, omap, a.names, a.ints) for n, c in orc.items()}
        pairs = []
        for pn, pc in probe.items():
            if pn in mapping: continue
            ps = pc.get('strs') or set()
            if len(ps) < 2: continue
            pbag = bags(pc, own, mapping, a.names, a.ints)
            for on, oc in orc.items():
                if on in assigned: continue
                ss = simstr(ps, oc.get('strs') or set())
                if ss >= 0.95:
                    floor = 0.15
                elif ss >= 0.7:
                    floor = 0.35
                else:
                    continue
                s1 = sim(pbag, ob[on])
                if s1 < floor: continue
                pairs.append((ss, s1, pn, on))
        pairs.sort(reverse=True)
        for ss, s1, pn, on in pairs:
            if pn in mapping or on in assigned: continue
            mapping[pn] = on; assigned.add(on); best[pn] = (s1, ss, on)
        u = len(mapping)
        print('  %-9s oracle=%3d 收敛唯一=%3d 残留=%3d' % (o['label'], len(orc), u, len(probe) - u))
        if a.report:
            with open(a.report + '.' + o['label'], 'w', encoding='utf-8') as w:
                w.write('#probe\toracle\tscore\tmargin\n')
                for pn in sorted(probe):
                    v = best.get(pn)
                    w.write('%s\t%s\t%s\t%s\n' % (pn, v[2] if v else '', '%.3f' % v[0] if v else '', '%.3f' % v[1] if v else ''))


if __name__ == '__main__':
    main()
