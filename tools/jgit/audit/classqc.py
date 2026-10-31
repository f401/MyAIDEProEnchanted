#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
"""classqc.py —— 已映射类的「身份体检」：目标类是不是判错了。

对每条映射 P -> T 用关系逐条验（只翻译**已知**的部分）：
  R1 super：P.super 若已映射，必须 == T.super
  R2 接口：P 的已映射接口必须 ⊆ T 的接口
  R4 方法描述符：P 声明的每个方法（除 <init>/<clinit>），翻译后必须能在 T 或其 oracle 祖先里找到同 desc
  R5 字段类型：同上（按字段类型多重集）
  R7 引用集：P 的已映射引用者，其目标必须也引用 T
输出按「未匹配成员数」排序，并把 T 是匿名类（$数字 结尾）的单列出来（这类天生不可证）。
"""
import os, re, sys, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = _P.MAP
TREF = re.compile(r'L(abcd/[^;]+);')


def load(jar):
    z = zipfile.ZipFile(jar)
    out = {}
    for n in z.namelist():
        if n.endswith('.class'):
            c = parse_class(z.read(n))
            if c and c['this']:
                out[c['this']] = c
    return out


def main():
    p2t = {}
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2 and f[0] != 'abcd_class':
            p2t[f[0] if '/' in f[0] else 'abcd/'+f[0]] = f[1]
    t2p = {}
    for k, v in p2t.items():
        t2p.setdefault(v, k)
    prb, orc = load(PROBE), load(ORACLE)
    tr = lambda d: TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)

    def all_decls(t):
        """T 及其 oracle 祖先的 (methods desc set, fields type set)"""
        ms, fs, seen, st = set(), set(), set(), [t]
        while st:
            x = st.pop()
            if x in seen or x not in orc:
                continue
            seen.add(x)
            c = orc[x]
            ms |= set(m[1] for m in c['methods'])
            fs |= set(f[1] for f in c['fields'])
            for p in ([c['super']] if c['super'] else []) + list(c['ifaces']):
                if p:
                    st.append(p)
        return ms, fs

    # 引用索引
    def build_refs(jar, pat):
        rx = re.compile(pat)
        back = collections.defaultdict(set)
        z = zipfile.ZipFile(jar)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            src = n[:-6]
            for m in rx.finditer(z.read(n)):
                t = m.group(0)[1:-1].decode()
                if t != src:
                    back[t].add(src)
        return back
    pback = build_refs(PROBE, rb'Labcd/[A-Za-z0-9_$]+;')
    oback = build_refs(ORACLE, rb'L(?:[A-Za-z0-9_$]+/)+[A-Za-z0-9_$]+;')

    rows = []
    ident = 0
    for p, t in sorted(p2t.items()):
        if p not in prb or t not in orc:
            continue
        c = prb[p]
        ms, fs = all_decls(t)
        bad = []
        # 只统计**完全翻译**后仍不存在的（含未映射类型的不算，避免噪声）
        miss_m = [m for m in c['methods'] if not m[0].startswith('<')
                  and 'Labcd/' not in tr(m[1]) and tr(m[1]) not in ms]
        miss_f = [f for f in c['fields'] if 'Labcd/' not in tr(f[1]) and tr(f[1]) not in fs]
        if c['super'] in p2t and p2t[c['super']] != orc[t]['super']:
            bad.append('R1super:%s!=%s' % (p2t[c['super']], orc[t]['super']))
        ifs = set(p2t[i] for i in c['ifaces'] if i in p2t)
        if ifs and not ifs <= set(orc[t]['ifaces']):
            bad.append('R2iface')
        pk = set(p2t[q] for q in pback.get(p, ()) if q in p2t)
        if pk and not pk <= oback.get(t, set()):
            bad.append('R7ref')
        if bad or miss_m or miss_f:
            rows.append((len(miss_m) + len(miss_f), p, t, bad, miss_m[:3], miss_f[:3], len(c['methods']), len(c['fields'])))
        else:
            ident += 1
    print('映射类 %d：关系全对 %d，有问题 %d' % (len(p2t), ident, len(rows)))
    print('%-6s %-12s %-52s %-22s %s' % ('缺失', 'probe', 'target', '关系冲突', '缺失样例'))
    for n, p, t, bad, mm, ff, nm, nf in sorted(rows, reverse=True)[:25]:
        samp = ','.join(['%s%s' % (x[0], x[1][:12]) for x in (mm + ff)][:3])
        print('%-6d %-12s %-52s %-22s %s' % (n, p[5:], t, ';'.join(bad) or '-', samp))


if __name__ == '__main__':
    main()
