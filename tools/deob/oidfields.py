#!/usr/bin/env python3
"""oidfields.py —— 用「重建出来的完整 OID」对齐 `*ObjectIdentifiers` 里的常量字段。

`constfields.py` 只取 `<clinit>` 里"最后一条 const-string"，遇到 BC 这种写法就废了：

    private static final ASN1ObjectIdentifier pkcs_1 = new ASN1ObjectIdentifier("1.2.840.113549.1.1");
    public  static final ASN1ObjectIdentifier rsaEncryption = pkcs_1.branch("1");   // 串是 "1"

一百多个字段的"最后一个串"全是 "1"/"2"/"3"…，根本分不开。这里把 **完整 OID 重建出来**：

    探针侧（smali）：寄存器机 —— new-instance/const-string/invoke-<init>(String)/branch/move-result/sput
    oracle 侧（源码）：按源码顺序求值 `new ASN1ObjectIdentifier("…")` 和 `X.branch("…")`

两边的完整 OID 相等 **且字段描述符一致**（翻真名后）才写，宁缺勿错。

用法:
  python3 tools/deob/oidfields.py -p process/deob.json --part spongycastle [--prefix abcd] [--apply]
"""
import os, sys, re, json, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_FIELD = re.compile(r'^\.field\s+([^\n]*?)([A-Za-z0-9_$]+):(\S+?)\s*(?:=.*)?$', re.M)
RE_NEW = re.compile(r'^\s*new-instance\s+([vp]\d+),\s*L([A-Za-z0-9_$/]+);\s*$')
RE_CSTR = re.compile(r'^\s*const-string(?:/jumbo)?\s+([vp]\d+),\s*"(.*)"\s*$')
RE_INIT = re.compile(r'^\s*invoke-direct\s+\{([vp]\d+)(?:,\s*([vp]\d+))?\},\s*L([A-Za-z0-9_$/]+);-><init>\(Ljava/lang/String;\)V\s*$')
RE_BRANCH = re.compile(r'^\s*invoke-virtual\s+\{([vp]\d+),\s*([vp]\d+)\},\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+)\(Ljava/lang/String;\)L([A-Za-z0-9_$/]+);\s*$')
RE_MRES = re.compile(r'^\s*move-result-object\s+([vp]\d+)\s*$')
RE_SPUT = re.compile(r'^\s*sput-object\s+([vp]\d+),\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')
# 探针侧的方法名是混淆的（getId → tp），所以只认"无参 + 返回 String"这个形状
RE_GETID = re.compile(r'^\s*invoke-virtual\s+\{([vp]\d+)\},\s*L([A-Za-z0-9_$/]+);->[A-Za-z0-9_$<>]+\(\)Ljava/lang/String;\s*$')
RE_SB_INIT = re.compile(r'^\s*invoke-direct\s+\{([vp]\d+)\},\s*Ljava/lang/StringBuilder;-><init>\(\)V\s*$')
RE_SB_INIT1 = re.compile(r'^\s*invoke-direct\s+\{([vp]\d+),\s*([vp]\d+)\},\s*Ljava/lang/StringBuilder;-><init>\(Ljava/lang/String;\)V\s*$')
RE_SVAL = re.compile(r'^\s*invoke-static\s+\{([vp]\d+)\},\s*Ljava/lang/String;->valueOf\(Ljava/lang/Object;\)Ljava/lang/String;\s*$')
RE_SB_APP = re.compile(r'^\s*invoke-virtual\s+\{([vp]\d+),\s*([vp]\d+)\},\s*Ljava/lang/StringBuilder;->append\(Ljava/lang/String;\)Ljava/lang/StringBuilder;\s*$')
RE_SB_STR = re.compile(r'^\s*invoke-virtual\s+\{([vp]\d+)\},\s*Ljava/lang/StringBuilder;->toString\(\)Ljava/lang/String;\s*$')
RE_CONCAT = re.compile(r'^\s*invoke-virtual\s+\{([vp]\d+),\s*([vp]\d+)\},\s*Ljava/lang/String;->concat\(Ljava/lang/String;\)Ljava/lang/String;\s*$')
RE_SGET = re.compile(r'^\s*sget-object\s+([vp]\d+),\s*L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$]+):(\S+)\s*$')


def unesc(x):
    return (x.replace('\\n', '\n').replace('\\t', '\t').replace('\\"', '"')
            .replace("\\'", "'").replace('\\\\', '\\'))


def probe_oids(txt):
    """smali → {field: oid}；只处理 clinit 里"拼 OID"的那几种指令。"""
    reg = {}
    pending = None
    out = {}
    in_clinit = False
    for line in txt.split('\n'):
        if line.startswith('.method'):
            in_clinit = 'constructor <clinit>' in line
            continue
        if line.startswith('.end method'):
            in_clinit = False
            continue
        if not in_clinit:
            continue
        m = RE_NEW.match(line)
        if m:
            reg[m.group(1)] = None
            continue
        m = RE_CSTR.match(line)
        if m:
            reg[m.group(1)] = ('s', unesc(m.group(2)))
            continue
        m = RE_INIT.match(line)
        if m and not m.group(3).startswith('java/'):
            src = reg.get(m.group(2) or '') or None
            reg[m.group(1)] = ('oid', src[1]) if src and src[0] in ('s', 'sb') else None
            continue
        m = RE_BRANCH.match(line)
        if m and not m.group(3).startswith('java/'):    # StringBuilder.append 也是"单参返回自身"，别抢
            base = reg.get(m.group(1))
            arg = reg.get(m.group(2))
            if base and base[0] == 'oid' and arg and arg[0] == 's':
                pending = ('oid', base[1] + '.' + arg[1])
            else:
                pending = None
            continue
        m = RE_GETID.match(line)
        if m:
            base = reg.get(m.group(1))
            # 无参返回 String 的方法：OID 的 getId()、StringBuilder 的 toString() 都算
            pending = ('s', base[1]) if base and base[0] in ('oid', 'sb') else None
            continue
        m = RE_SB_INIT.match(line)
        if m:
            reg[m.group(1)] = ('sb', '')
            continue
        m = RE_SB_INIT1.match(line)
        if m:
            arg = reg.get(m.group(2))
            reg[m.group(1)] = ('sb', arg[1]) if arg and arg[0] in ('s', 'oid') else ('sb', '')
            continue
        m = RE_SVAL.match(line)
        if m:
            arg = reg.get(m.group(1))
            pending = ('s', arg[1]) if arg and arg[0] in ('s', 'oid') else None
            continue
        m = RE_SB_APP.match(line)
        if m:
            base = reg.get(m.group(1)); arg = reg.get(m.group(2))
            if base and base[0] == 'sb' and arg and arg[0] in ('s', 'oid'):
                reg[m.group(1)] = ('sb', base[1] + arg[1])
            continue
        m = RE_SB_STR.match(line)
        if m:
            base = reg.get(m.group(1))
            pending = ('s', base[1]) if base and base[0] == 'sb' else None
            continue
        m = RE_CONCAT.match(line)
        if m:
            base = reg.get(m.group(1)); arg = reg.get(m.group(2))
            if base and arg and base[0] in ('s', 'oid') and arg[0] in ('s', 'oid'):
                pending = ('s', base[1] + arg[1])
            elif base and arg and base[0] == 'sb' and arg[0] in ('s', 'oid'):
                pending = ('s', base[1] + arg[1])
            else:
                pending = None
            continue
        m = RE_MRES.match(line)
        if m:
            reg[m.group(1)] = pending
            pending = None
            continue
        m = RE_SPUT.match(line)
        if m:
            v = reg.get(m.group(1))
            out[m.group(3)] = v[1] if v and v[0] == 'oid' else None
            continue
    return out


RE_JAVA_STR = re.compile(r'"([^"]*)"')


def oracle_oids(src_text):
    """Java 源码 → {field: oid}

    支持的写法（BC 1.47 里全都出现过）：
      new ASN1ObjectIdentifier("1.2.3")
      new ASN1ObjectIdentifier(SOME_STRING + ".1")        SOME_STRING 是 static final String
      new ASN1ObjectIdentifier(x.getId() + ".1")
      x.branch("1")
    """
    sconst, known, out = {}, {}, {}
    for m in re.finditer(r'static\s+final\s+String\s+([A-Za-z0-9_$]+)\s*=\s*"([^"]*)"\s*;', src_text):
        sconst[m.group(1)] = m.group(2)

    def ev(part):
        part = part.strip()
        mo = re.match(r'^"([^"]*)"$', part)
        if mo:
            return mo.group(1)
        mo = re.match(r'^([A-Za-z0-9_$]+)\.getId\(\)$', part)
        if mo:
            return known.get(mo.group(1))
        mo = re.match(r'^([A-Za-z0-9_$]+)$', part)
        if mo:
            if mo.group(1) in known:
                return known[mo.group(1)]
            return sconst.get(mo.group(1))
        return None

    for m in re.finditer(r'static\s+final\s+ASN1ObjectIdentifier\s+([A-Za-z0-9_$]+)\s*=\s*([^;]+);', src_text):
        name, expr = m.group(1), ' '.join(m.group(2).split())
        val = None
        mo = re.match(r'^new\s+ASN1ObjectIdentifier\s*\((.*)\)$', expr)
        if mo:
            parts = [ev(x) for x in mo.group(1).split('+')]
            val = ''.join(parts) if all(x is not None for x in parts) else None
        else:
            mo = re.match(r'^([A-Za-z0-9_$]+)\.branch\(\s*"([^"]*)"\s*\)$', expr)
            if mo and mo.group(1) in known:
                val = known[mo.group(1)] + '.' + mo.group(2)
        if val is None:
            continue
        known[name] = val
        out[name] = val
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--part', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--apply', action='store_true')
    ap.add_argument('--rebuild', action='store_true',
                    help='这个类的**字段行整块重建**：OID 证据比"最后一条 const-string"硬，'
                         '遇到移位/串位的旧行直接替换（只在两边都能完整重建时才动）')
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
            cur = line.split(' ')[0]
            blocks[cur] = []
            order.append(cur)
    done = collections.defaultdict(set)
    for k, rows in blocks.items():
        for r in rows:
            t = r.lstrip('\t').split(' ')
            if len(t) == 2:
                done[k].add(t[0])
    idx = {}
    ip = ex(cfg.get('smali_index') or 'truth/smali_index.tsv')
    if os.path.exists(ip):
        for ln in open(ip, encoding='utf-8'):
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 2:
                idx[t[0]] = t[1]
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    srcs = [ex(s) for s in (cfg.get('src_root') or [])]
    added = skip = nosrc = 0
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
        po = {k: v for k, v in probe_oids(txt).items() if v}
        if not po:
            continue
        jf = None
        for s in srcs:
            p3 = os.path.join(s, on + '.java')
            if os.path.exists(p3):
                jf = p3
                break
        if not jf:
            nosrc += 1
            continue
        oo = oracle_oids(open(jf, encoding='utf-8', errors='replace').read())
        back = collections.defaultdict(list)
        for f, v in oo.items():
            back[v].append(f)
        pfdesc = {m.group(2): m.group(3) for m in RE_FIELD.finditer(txt)}
        try:
            _oc = jvmbody.parse([b for b in [None]][0]) if False else None
        except Exception:
            _oc = None
        for f, v in sorted(po.items()):
            if f in done[pn]:
                continue
            cand = back.get(v) or []
            if len(cand) != 1:
                skip += 1
                continue
            tgt = cand[0]
            if tgt in {x.lstrip('\t').split(' ')[1] for x in blocks[pn]
                       if len(x.lstrip('\t').split(' ')) == 2}:
                skip += 1
                continue
            blocks[pn].append('\t%s %s' % (f, tgt))
            done[pn].add(f)
            added += 1
    if a.rebuild:
        fixed = 0
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
            po = probe_oids(txt)
            jf = next((os.path.join(s, on + '.java') for s in srcs
                       if os.path.exists(os.path.join(s, on + '.java'))), None)
            if not jf:
                continue
            oo = oracle_oids(open(jf, encoding='utf-8', errors='replace').read())
            back = {v: k for k, v in oo.items()}
            # 重建条件：绝大多数探针字段都能重建、推出的名字互不重复
            ok = {f: back[v] for f, v in po.items() if v and back.get(v)}
            if not po or len(ok) < 0.9 * len(po) or len(set(ok.values())) != len(ok):
                continue
            keep = [r for r in blocks[pn] if len(r.lstrip('\t').split(' ')) >= 3]
            old = {r.lstrip('\t').split(' ')[0]: r.lstrip('\t').split(' ')[1]
                   for r in blocks[pn] if len(r.lstrip('\t').split(' ')) == 2}
            taken = set(ok.values())
            for f, tgt in old.items():                    # 重建不了的字段保留旧行（但不许撞新目标）
                if f not in ok and tgt not in taken:
                    keep.append('\t%s %s' % (f, tgt))
                    taken.add(tgt)
            for f, tgt in sorted(ok.items()):
                if old.get(f) != tgt:
                    fixed += 1
                keep.append('\t%s %s' % (f, tgt))
            blocks[pn] = keep
        print('%s：整块重建字段行，纠正 %d 条' % (a.part, fixed))
    print('%s：用完整 OID 补了 %d 个常量字段（跳过 %d，无源码 %d）' % (a.part, added, skip, nosrc))
    if a.apply:
        with open(tsrg_path, 'w', encoding='utf-8') as w:
            for k in order:
                w.write('%s %s\n' % (k, cmap.get(k, k)))
                for r in blocks[k]:
                    w.write(r + '\n')
        print('写入', tsrg_path)


if __name__ == '__main__':
    main()
