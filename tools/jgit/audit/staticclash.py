#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""staticclash.py —— 找「同名同描述符既有 static 又有 virtual」的家族。

这类家族是 FART 兜底（→ 两遍产物不确定）的根源：解析器只按 (owner,name,desc) 查，
static 与 virtual 撞在一起时结果取决于遍历顺序。TSRG2 的 `static` 标记在本机
srgutils 版本里只对**字段行**生效（方法行会报 "too many parts"），所以只能靠
「改名消歧」：把其中一个留空（保持混淆名）或改成不冲突的名字。
"""
import os, sys, zipfile, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSRG = _P.TSRG


def main():
    z = zipfile.ZipFile(PROBE)
    sup, ifs, acc = {}, {}, {}
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        c = parse_class(z.read(n))
        if not c or not c['this']:
            continue
        cn = c['this']; sup[cn] = c['super'] or ''; ifs[cn] = list(c['ifaces'])
        acc[cn] = {(m[0], m[1]): m[2] for m in c['methods']}

    maps = collections.defaultdict(dict); cur = None
    for ln in open(TSRG):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]
        else:
            p = ln.split()
            if len(p) == 3:
                maps[cur][(p[0], p[1])] = p[2]

    fam = collections.defaultdict(list)   # (name,desc) -> [(class, static, newname)]
    for c, km in maps.items():
        for k, nw in km.items():
            fam[k].append((c, bool(acc.get(c, {}).get(k, 0) & 0x8), nw))

    def related(a, b):
        def ancs(x):
            out, st = set(), [x]
            while st:
                y = st.pop()
                for p in ([sup.get(y, '')] + ifs.get(y, [])):
                    if p and p in acc and p not in out:
                        out.add(p); st.append(p)
            return out
        return a in ancs(b) or b in ancs(a)

    bad = []
    for k, lst in fam.items():
        for i in range(len(lst)):
            for j in range(i + 1, len(lst)):
                c1, s1, n1 = lst[i]; c2, s2, n2 = lst[j]
                if s1 != s2 and related(c1, c2):
                    bad.append((k[0], k[1], c1, 'static' if s1 else 'virtual', n1,
                                c2, 'static' if s2 else 'virtual', n2))
    print('static/virtual 同名同描述符且继承相关的家族: %d' % len(bad))
    for b in bad[:20]:
        print('  %-8s %-34s %-12s(%s)=%-22s  vs  %-12s(%s)=%s' % b)


if __name__ == '__main__':
    main()
