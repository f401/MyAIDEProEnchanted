#!/usr/bin/env python3
"""ql.py —— 查 oracle jar 里的类（人工定名时的"查表"命令）。

四个子命令，都只读：
  show  <类名...>            结构 + 常量串 + 整数字面量
  find  --mdesc '()V' ...    按成员描述符/字段类型/超类/字符串 找类（形状检索）
  who   <类名>               谁引用它（含成员描述符）、它引用谁
  str   <子串...>            常量串包含这些子串的类

用法:
  python3 tools/deob/ql.py show org/bouncycastle/asn1/DERUTF8String
  python3 tools/deob/ql.py find --jar ~/out/oracle/spongycastle/bc-all-1.47.jar \\
      --mdesc '([BI)J' --mdesc '([BI)I' --mdesc '(I[BI)V' --max 10
  python3 tools/deob/ql.py who <类名> --jar ...
  python3 tools/deob/ql.py str 'BouncyCastle Security Provider'
"""
import os, sys, re, zipfile, argparse, collections, struct
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody
import classmatch as CM

DEF_JAR = os.path.expanduser('~/out/oracle/spongycastle/bc-all-1.47.jar')
F = lambda x: x.replace('org/bouncycastle/', '').replace('java/lang/', 'j/').replace('java/io/', 'j/')


def classes(jar, pkgs=''):
    z = zipfile.ZipFile(jar)
    out = {}
    pk = [x for x in (pkgs or '').split(',') if x]
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if pk and not any(cn.startswith(p) for p in pk):
            continue
        raw = z.read(n)
        try:
            c = jvmbody.parse(raw)
        except Exception:
            continue
        if not c or not c['this']:
            continue
        c['acc'] = struct.unpack_from('>H', raw, c['acc_off'])[0]
        c['name'] = c['this']
        out[c['this']] = c
    return out


def show(c, full=False):
    acc = c.get('acc', 0)
    fl = [k for k, v in [('public', 1), ('private', 2), ('protected', 4), ('static', 8), ('final', 0x10),
                         ('interface', 0x200), ('abstract', 0x400), ('enum', 0x4000)] if acc & v]
    print('== %s  %s sup=%s if=%s' % (c['name'], ','.join(fl), F(c['sup'] or ''),
                                      [F(i) for i in (c['ifaces'] or [])]))
    for m in c['members']:
        if m['kind'] == 'f':
            print('   F %-22s %-46s %s' % (m['name'], F(m['desc']),
                                           ','.join(k for k, v in [('static', 8), ('final', 0x10)] if m['acc'] & v)))
    for m in c['members']:
        if m['kind'] == 'm':
            print('   M %-22s %s%s' % (m['name'], F(m['desc']),
                                       ' {static}' if m['acc'] & 8 else ''))
    strs = sorted(set(c['utf'].get(i) for i in (c['strs'] or {}).values() if c['utf'].get(i)))
    if strs:
        print('   S %s' % strs[:14])
    ints = collections.Counter()
    for m in c['members']:
        if m['kind'] == 'm' and m.get('code'):
            ints += CM.oint(m['code'])
    if ints:
        print('   I %s' % sorted(ints.items(), key=lambda x: -x[1])[:12])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd', choices=['show', 'find', 'who', 'str', 'cand'])
    ap.add_argument('args', nargs='*')
    ap.add_argument('--jar', default=DEF_JAR)
    ap.add_argument('--pkgs', default='')
    ap.add_argument('--mdesc', action='append', default=[])
    ap.add_argument('--fdesc', action='append', default=[])
    ap.add_argument('--sup', default='')
    ap.add_argument('--iname', default='')
    ap.add_argument('--str', action='append', default=[])
    ap.add_argument('--nstr', type=int, default=-1)
    ap.add_argument('--max', type=int, default=20)
    ap.add_argument('--map', default='')
    ap.add_argument('--probe-jar', default=os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))),
        'process/base/merged_ok.jar'))
    a = ap.parse_args()
    C = classes(a.jar, a.pkgs)
    if a.cmd == 'show':
        for n in a.args:
            for cn in C:
                if n in cn:
                    show(C[cn])
    elif a.cmd == 'find':
        hit = []
        for cn, c in C.items():
            if a.sup and not (c['sup'] or '').startswith(a.sup):
                continue
            if a.iname and a.iname not in (c['ifaces'] or []):
                continue
            ms = set(F(m['desc']) for m in c['members'] if m['kind'] == 'm')
            fs = set(F(m['desc']) for m in c['members'] if m['kind'] == 'f')
            if any(F(d) not in ms for d in a.mdesc):
                continue
            if any(F(d) not in fs for d in a.fdesc):
                continue
            strs = set(c['utf'].get(i) for i in (c['strs'] or {}).values() if c['utf'].get(i))
            if any(all(s not in x for x in strs) for s in a.str):
                continue
            if a.nstr >= 0 and len(strs) != a.nstr:
                continue
            hit.append((sum(len(c['members']) for _ in [0]), cn))
        for _, cn in sorted(hit)[:a.max]:
            print(F(cn))
        print('-- %d 命中' % len(hit))
    elif a.cmd == 'who':
        tgt = set()
        for n in a.args:
            tgt |= set(cn for cn in C if n in cn)
        for cn, c in C.items():
            hits = set()
            for (ow, nm, ds, tag) in (c.get('refmap') or {}).values():
                if ow in tgt:
                    hits.add('%s.%s%s' % (F(ow), nm, F(ds)))
            for x in ([c['sup']] + list(c['ifaces'] or [])):
                if x in tgt:
                    hits.add('extends ' + F(x))
            if hits:
                print('%-56s %s' % (F(cn), sorted(hits)[:4]))
    elif a.cmd == 'cand':
        # 以探针类为输入，列 oracle 候选：描述符集包含 + 超类一致 + 字符串/接口证据
        cm = {}
        if a.map:
            for ln in open(os.path.expanduser(a.map), encoding='utf-8'):
                t = ln.rstrip('\n').split('\t')
                if len(t) >= 2 and t[1]:
                    cm[t[0] if '/' in t[0] else 'abcd/' + t[0]] = t[1]
        P = classes(a.probe_jar, 'abcd')
        rng = set(cm.values())
        oimg = {k: k for k in rng}
        def nm(d, m):
            return re.sub(r'L([A-Za-z0-9_$/]+);',
                          lambda x: 'L' + m.get(x.group(1), x.group(1)) + ';', d or '')
        for pn in a.args:
            pn = pn if '/' in pn else 'abcd/' + pn
            pc = P.get(pn)
            if not pc:
                print('!! 没有', pn); continue
            pm = collections.Counter((x['acc'], nm(x['desc'], cm)) for x in pc['members'] if x['kind'] == 'm')
            pf = collections.Counter((x['acc'], nm(x['desc'], cm)) for x in pc['members'] if x['kind'] == 'f')
            ps = set(pc['utf'].get(i) for i in (pc['strs'] or {}).values() if pc['utf'].get(i))
            pif = set(cm.get(i, i) for i in (pc['ifaces'] or []))
            psup = cm.get(pc['sup'], pc['sup'])
            print('=== %s  sup=%s if=%s' % (pn, F(psup), [F(i) for i in pif]))
            for x in pc['members']:
                print('    %s %-20s %s' % (x['kind'], x['name'], F(nm(x['desc'], cm))))
            if ps:
                print('    S %s' % sorted(ps)[:8])
            out = []
            for on, oc in C.items():
                om = collections.Counter((x['acc'], x['desc']) for x in oc['members'] if x['kind'] == 'm')
                of = collections.Counter((x['acc'], x['desc']) for x in oc['members'] if x['kind'] == 'f')
                if not (all(om[k] >= v for k, v in pm.items()) and all(of[k] >= v for k, v in pf.items())):
                    continue
                if (oc['sup'] or '') != psup and (psup.startswith('java/') or '/' in psup):
                    continue
                os_ = set(oc['utf'].get(i) for i in (oc['strs'] or {}).values() if oc['utf'].get(i))
                ov = len(ps & os_)
                oif = set(oc['ifaces'] or [])
                ifv = len(pif & oif)
                out.append((-(ov * 3 + ifv * 2 + len(oc['ifaces']) == len(pif)), on, ov, ifv, len(oc['ifaces'])))
            for _, on, ov, ifv, nif in sorted(out)[:a.max]:
                print('    -> %-56s str∩=%d if∩=%d nif=%d%s' % (
                    F(on), ov, ifv, nif, ' <<< 现取' if cm.get(pn) == on else ''))
            print('    （候选 %d）' % len(out))
    elif a.cmd == 'str':
        for cn, c in C.items():
            for i in (c['strs'] or {}).values():
                v = c['utf'].get(i)
                if v and all(s in v for s in a.args) and a.args:
                    print('%-58s %r' % (F(cn), v))
                    break


if __name__ == '__main__':
    main()
