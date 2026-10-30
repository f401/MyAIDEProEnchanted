#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""bodyfit.py — 批量「读码」: 探针 smali 与 oracle 字节码的指令级指纹对齐。

原理（都是真证据，不是形状巧合）:
  * 把两边的字节码归一成同构 token 串: 操作码类 + 字符串常量 + 字段/方法引用(owner/name/desc),
    丢掉寄存器号、分支标签、偏移。R8 的局部重排/内联会降低分数, 但语义 token 仍高度重合。
  * 只在同一 static 标志、(描述符相同 or 形状相同) 的候选上算 difflib 相似度,
    取「互为最优 + 领先第二」的对; 分数与领先幅度都记录, 低分留人工。
  * 字段没有方法体 → 用「已对齐方法内, 本类字段访问的先后序列」逐位置投票。

用法: python3 tools/jgit/bodyfit.py [类名...]      (缺省=全部缺口类)
产出: ~/out/work/bodyfit.json  ~/out/work/bodyfit.tsv
"""
import json, os, re, subprocess, sys, collections, difflib
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import probelib as P

HOME = os.path.expanduser('~')
CACHE = HOME + '/out/work/javapcache'
VER = '3.7.1'
JAR = dict(P.OVERS)[VER]

# ---------- 归一化 ----------
DEX_OP = [
    (r'^invoke-virtual', 'invoke-virtual'), (r'^invoke-static', 'invoke-static'),
    (r'^invoke-direct', 'invoke-direct'), (r'^invoke-interface', 'invoke-interface'),
    (r'^invoke-super', 'invoke-direct'), (r'^invoke-polymorphic', 'invoke-interface'),
    (r'^invoke-custom', 'invoke-static'),
    (r'^iget', 'iget'), (r'^iput', 'iput'), (r'^sget', 'sget'), (r'^sput', 'sput'),
    (r'^const-string', 'const-string'), (r'^const-class', 'const-class'),
    (r'^const-wide', 'const-wide'), (r'^const', 'const'),
    (r'^move', 'move'), (r'^if-', 'if'), (r'^goto', 'goto'), (r'^packed-switch', 'switch'),
    (r'^sparse-switch', 'switch'), (r'^new-instance', 'new'),
    (r'^new-array', 'newarray'), (r'^filled-new-array', 'newarray'),
    (r'^check-cast', 'checkcast'), (r'^instance-of', 'instanceof'),
    (r'^return', 'return'), (r'^throw', 'throw'), (r'^monitor', 'monitor'),
]

JVM_OP = {
    'invokevirtual': 'invoke-virtual', 'invokestatic': 'invoke-static',
    'invokespecial': 'invoke-direct', 'invokeinterface': 'invoke-interface',
    'invokedynamic': 'invoke-static',
    'getfield': 'iget', 'putfield': 'iput', 'getstatic': 'sget', 'putstatic': 'sput',
    'ldc': 'const-string', 'ldc_w': 'const-string', 'ldc2_w': 'const-wide',
    'bipush': 'const', 'sipush': 'const', 'iconst_m1': 'const', 'iconst_0': 'const',
    'iconst_1': 'const', 'iconst_2': 'const', 'iconst_3': 'const', 'iconst_4': 'const',
    'iconst_5': 'const', 'lconst_0': 'const-wide', 'lconst_1': 'const-wide',
    'new': 'new', 'newarray': 'newarray', 'anewarray': 'newarray', 'multianewarray': 'newarray',
    'checkcast': 'checkcast', 'instanceof': 'instanceof', 'athrow': 'throw',
    'monitorenter': 'monitor', 'monitorexit': 'monitor',
}
for _o in ('ifeq', 'ifne', 'iflt', 'ifge', 'ifgt', 'ifle', 'if_icmpeq', 'if_icmpne', 'if_icmplt',
           'if_icmpge', 'if_icmpgt', 'if_icmple', 'if_acmpeq', 'if_acmpne', 'ifnull', 'ifnonnull'):
    JVM_OP[_o] = 'if'
for _o in ('goto', 'goto_w'):
    JVM_OP[_o] = 'goto'
JVM_OP.update({'tableswitch': 'switch', 'lookupswitch': 'switch'})


def canon_op(name, dex):
    if dex:
        for pat, rep in DEX_OP:
            if re.match(pat, name):
                return rep
        return name
    if name in JVM_OP:
        return JVM_OP[name]
    if name.startswith('return') or name.startswith('ireturn') or name.startswith('lreturn') \
            or name.startswith('freturn') or name.startswith('dreturn') or name.startswith('areturn'):
        return 'return'
    if name.startswith('if'):
        return 'if'
    if name.startswith('lcmp') or name.startswith('fcmpl') or name.startswith('fcmpg') \
            or name.startswith('dcmpl') or name.startswith('dcmpg'):
        return 'cmp'
    return name


def tshape(d):
    return re.sub(r'L[^;]+;', 'O', d)


# ---------- probe ----------
SM_RE = re.compile(r'^([ \t]+)([a-z][a-z0-9/\-]*)\s*(.*)$')


def probe_tokens(body, mp, tmap):
    toks = []
    for ln in body.split('\n'):
        s = ln.strip()
        if not s or s.startswith('.') or s.startswith('#') or s.startswith(':'):
            continue
        m = re.match(r'^([a-z][a-z0-9/\-]*)\s*(.*)$', s)
        if not m:
            continue
        op, rest = m.group(1), m.group(2)
        if op.startswith('nop'):
            continue
        cop = canon_op(op, True)
        tok = cop
        if cop in ('iget', 'iput', 'sget', 'sput'):
            mm2 = re.search(r'->([A-Za-z0-9_$]+):(\S+)$', rest)
            mm1 = re.search(r',\s*(L[^;,]+);?->', rest)
            if mm2:
                nm, ds = mm2.group(1), mm2.group(2)
                t = tmap.get((nm, ds), nm)
                tok += '|' + t + '|' + tshape(ds)
        elif cop.startswith('invoke'):
            mm2 = re.search(r'->([A-Za-z0-9_$<>]+)\((.*)$', rest)
            if mm2:
                nm, ds = mm2.group(1), '(' + mm2.group(2)
                t = tmap.get((nm, ds), nm)
                tok += '|' + t + '|' + tshape(ds)
        elif cop == 'const-string':
            m2 = re.search(r'"(.*)"\s*$', rest)
            if m2:
                tok += '|' + m2.group(1)[:60]
        elif cop == 'const-class':
            m2 = re.search(r'(L[^;]+;)', rest)
            if m2:
                tok += '|' + mp.get(m2.group(1).rstrip(';').lstrip('L'), m2.group(1))
        elif cop in ('const', 'const-wide'):
            m2 = re.search(r',\s*(-?0x[0-9a-fA-F]+|-?\d+)', rest)
            if m2:
                v = m2.group(1)
                try:
                    iv = int(v, 0)
                except ValueError:
                    iv = 0
                tok += '|' + (str(iv) if abs(iv) < 4096 else 'x')
        elif cop in ('new', 'newarray', 'checkcast', 'instanceof'):
            m2 = re.search(r'(L[^;]+;|\[[A-Za-z0-9/;\[]+)', rest)
            if m2:
                t = m2.group(1)
                if t.startswith('L'):
                    t = 'L' + mp.get(t.rstrip(';').lstrip('L'), t.rstrip(';').lstrip('L')) + ';'
                tok += '|' + t
        toks.append(tok)
    return toks


# ---------- oracle ----------
def javap(ver, jcl):
    d = os.path.join(CACHE, ver)
    fp = os.path.join(d, jcl.replace('/', '_') + '.txt')
    if os.path.exists(fp):
        return open(fp, encoding='utf-8', errors='replace').read()
    os.makedirs(d, exist_ok=True)
    jar = dict(P.OVERS)[ver]
    r = subprocess.run(['javap', '-p', '-c', '-constants', '-cp', jar, jcl.replace('/', '.')],
                       capture_output=True, text=True)
    open(fp, 'w').write(r.stdout)
    return r.stdout


MHDR = re.compile(r'^  (?:(?:public|private|protected|static|final|abstract|synchronized|native|strictfp|default)\s+)*([\w$.\[\]]+)\s+([\w$<>]+)\((.*)\);$')
OHDR = re.compile(r'^  (?:(?:public|private|protected|static|final|abstract|synchronized|native|strictfp|default)\s+)*([\w$<>]+)\((.*)\);$', re.M)


def oracle_methods(txt):
    """-> [(name, desc, tokens)]; desc 由 javap 参数还原成 JVM 描述符(粗)"""
    out = []
    lines = txt.split('\n')
    i = 0
    cur = None
    buf = []
    tmapcache = {}
    JP = {'int': 'I', 'long': 'J', 'boolean': 'Z', 'byte': 'B', 'char': 'C', 'short': 'S',
          'float': 'F', 'double': 'D', 'void': 'V'}

    def jt(t):
        t = t.strip()
        dim = 0
        while t.endswith('[]'):
            dim += 1
            t = t[:-2]
        if t in JP:
            return '[' * dim + JP[t]
        return '[' * dim + 'L' + t.replace('.', '/') + ';'

    while i < len(lines):
        ln = lines[i]
        m = MHDR.match(ln)
        m2 = None
        if not m:
            m2 = OHDR.match(ln)
        if m or m2:
            if m:
                ret, nm, args = m.group(1), m.group(2), m.group(3)
            else:
                nm, args = m2.group(1), m2.group(2)
                ret = 'void'
            al = [a.strip() for a in args.split(',') if a.strip()]
            desc = '(' + ''.join(jt(a) for a in al) + ')' + jt(ret)
            cur = [nm, desc, []]
            out.append(cur)
            i += 1
            continue
        if cur is not None:
            mm = re.match(r'^\s+(\d+): (\w+)\s*(.*)$', ln)
            if mm:
                op, rest = mm.group(2), mm.group(3)
                cop = canon_op(op, False)
                tok = cop
                cm = rest.split('//', 1)
                cmt = cm[1].strip() if len(cm) > 1 else ''
                if cop in ('iget', 'iput', 'sget', 'sput'):
                    m3 = re.match(r'Field ([\w/$]+)\.([\w$<>]+):(\S+)$', cmt)
                    if m3:
                        tok += '|' + m3.group(2) + '|' + tshape(m3.group(3))
                elif cop.startswith('invoke'):
                    m3 = re.match(r'(?:Method|InterfaceMethod) ([\w/$]+)\.([\w$<>]+)(\(.*)$', cmt)
                    if m3:
                        tok += '|' + m3.group(2) + '|' + tshape(m3.group(3))
                elif cop == 'const-string':
                    m3 = re.match(r'String (.*)$', cmt)
                    if m3:
                        tok += '|' + m3.group(1)[:60]
                elif cop == 'const-class':
                    m3 = re.match(r'class ([\w/$\[\];]+)$', cmt)
                    if m3:
                        tok += '|L' + m3.group(1) + ';'
                elif cop in ('const', 'const-wide'):
                    m3 = re.match(r'(?:int|long|float|double) (-?\d+)$', cmt)
                    if m3:
                        iv = int(m3.group(1))
                        tok += '|' + (str(iv) if abs(iv) < 4096 else 'x')
                elif cop in ('new', 'newarray', 'checkcast', 'instanceof'):
                    m3 = re.match(r'class ([\w/$\[\];]+)$', cmt)
                    if m3:
                        tok += '|L' + m3.group(1) + ';'
                cur[2].append(tok)
        i += 1
    return [(n, d, t) for n, d, t in out]


def sim(a, b):
    if not a and not b:
        return 1.0
    return difflib.SequenceMatcher(None, a, b, autojunk=False).ratio()


def main():
    mp = P.load_map()
    rev = {v: k for k, v in mp.items()}
    mm, fm, blocks = P.load_tsrg()
    want = set(sys.argv[1:])
    gaps = json.load(open(HOME + '/out/work/gapk.json'))
    tmapm = collections.defaultdict(dict)     # probe cls -> {(name,desc): newname}
    for (p, n, d), new in mm.items():
        tmapm[p][(n, d)] = new
        tmapm[p][(n, P.norm_desc(d, mp))] = new
    res = {}
    for probe, ent in sorted(gaps.items()):
        cn = probe[5:]
        if want and cn not in want and probe not in want:
            continue
        path = P.SMALI + '/' + cn + '.smali'
        if not os.path.exists(path):
            continue
        pr = P.parse_smali(path)
        txt = javap(ent.get('ver', VER), mp[probe])
        om = oracle_methods(txt)
        # 已用目标名（本类）
        used_o = {new for (p, n, d), new in mm.items() if p == probe}
        tmap = dict(tmapm.get(probe, {}))
        # 探针未映射方法
        pmap = {}
        for (p, n, d), new in mm.items():
            if p == probe:
                pmap.setdefault(n, set()).add(new)
        rows = []
        for n, d, st, syn in pr['methods']:
            if n in ('<init>', '<clinit>') or syn:
                continue
            if n in pmap and len(pmap[n]) > 3:
                pass
            if (n, d) in {(k[0], k[1]) for k in []}:
                pass
            if n in pmap:
                continue
            body = pr['body'].get((n, d))
            if body is None:
                continue
            pt = probe_tokens(body, mp, tmap)
            best = []
            for on, od, ot in om:
                if on in ('<init>', '<clinit>') or on in used_o:
                    continue
                if not same_group(d, od):
                    continue
                s0 = sim(pt, ot)
                best.append((s0, on, od, ot))
            best.sort(reverse=True)
            if not best:
                rows.append(dict(p=n, pdesc=d, best=[], note='no-cand'))
                continue
            s0 = best[0]
            s1 = best[1][0] if len(best) > 1 else 0.0
            rows.append(dict(p=n, pdesc=d, o=s0[1], odesc=s0[2],
                             score=round(s0[0], 3), margin=round(s0[0] - s1, 3),
                             ntok=len(pt), alt=[(round(b[0], 3), b[1]) for b in best[1:4]]))
        # 字段: 用已对齐方法体内「本类字段访问」序列投票
        fvotes = collections.defaultdict(collections.Counter)
        mapped = {}
        for (p, n, d), new in mm.items():
            if p == probe:
                mapped[(n, d)] = new
        for (n, d), new in mapped.items():
            ob = None
            for on, od, ot in om:
                if on == new and same_shape_only(d, od):
                    ob = ot
                    break
            body = pr['body'].get((n, d))
            if ob is None or body is None:
                continue
            pseq = field_seq_probe(body)
            oseq = field_seq_oracle(ob)
            if len(pseq) == len(oseq):
                for (pn, pd), (on, od) in zip(pseq, oseq):
                    fvotes[pn][on] += 1
        frow = []
        for e in ent['miss_f']:
            c = fvotes.get(e['oracle'], collections.Counter())
            frow.append(dict(p=e['oracle'], pdesc=e['desc'], votes=c.most_common(4)))
        res[probe] = dict(jgit=mp[probe], ver=ent.get('ver', VER), m=rows, f=frow)
    json.dump(res, open(HOME + '/out/work/bodyfit.json', 'w'), indent=0)
    # 汇总
    n = collections.Counter()
    with open(HOME + '/out/work/bodyfit.tsv', 'w') as w:
        w.write('probe\tjgit\tkind\tprobe_member\tdesc\tbest\tbestdesc\tscore\tmargin\talt\n')
        for probe, v in res.items():
            for r in v['m']:
                if r.get('note'):
                    n[r['note']] += 1
                    continue
                lvl = 'A' if (r['score'] >= 0.80 and r['margin'] >= 0.10) else \
                      ('B' if (r['score'] >= 0.60 and r['margin'] >= 0.05) else 'C')
                n[lvl] += 1
                w.write('%s\t%s\tm\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' % (
                    probe, v['jgit'], r['p'], r['pdesc'], r['o'], r['odesc'],
                    r['score'], r['margin'], lvl, r['alt']))
            for r in v['f']:
                w.write('%s\t%s\tf\t%s\t%s\t%s\t\t\t\t\t\n' % (
                    probe, v['jgit'], r['p'], r['pdesc'], r['votes']))
    print('方法证据等级', dict(n), '类', len(res))


DESC_RE = re.compile(r'\[*(?:L[^;]+;|[ZBCSIJFD])')


def same_group(pd_, od):
    if pd_ == od:
        return True
    return tshape(pd_) == tshape(od)


def same_shape_only(pd_, od):
    return tshape(pd_) == tshape(od)


def field_seq_probe(body):
    out = []
    for ln in body.split('\n'):
        s = ln.strip()
        m = re.match(r'^(i[gp]et|s[gp]ut)\S*\s+(.*)$', s)
        if not m:
            continue
        mm2 = re.search(r'->([A-Za-z0-9_$]+):(\S+)$', m.group(2))
        if mm2:
            out.append((mm2.group(1), mm2.group(2)))
    return out


def field_seq_oracle(toks):
    out = []
    for t in toks:
        if t.split('|')[0] in ('iget', 'iput', 'sget', 'sput'):
            p = t.split('|')
            if len(p) >= 3:
                out.append((p[1], p[2]))
    return out


if __name__ == '__main__':
    main()
