#!/usr/bin/env python3
"""triage.py —— 把"未映射探针"排成一张可批量定名的分诊表。

每行给出定名要用的全部硬证据（都不受改名影响）：
  probe  探针
  refs   真实命名引用者数（来自 ~/tmp/refindex.tsv）
  pkgs   引用者所在包 top3
  sup    父类（按 class_map 换名后）
  ifc    实现的接口
  nm/nf  方法数/字段数
  strs   像人话的常量串 top6
  mem    引用者用到的探针成员 top6

用法:
  python3 tools/deob/triage.py --out ~/tmp/triage.tsv [--min-refs 0] [--prefix abcd]
  python3 tools/deob/triage.py --show ~/tmp/triage.tsv 20 40     # 看第 20..40 行
"""
import os, sys, re, json, zipfile, argparse, collections
_REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
for p in ('tools/jgit', 'tools/deob'):
    q = os.path.join(_REPO, p)
    if q not in sys.path:
        sys.path.insert(0, q)
import jvmbody

# 像人话/像路径的常量串：至少两个词，或 scheme://，或以 / 开头的路径，或常见扩展名
RE_HUMAN = re.compile(r'^[^\s]{0,40}(\s+[^\s]+|[a-z]+://|/[\w./-]+|\.(xml|java|apk|jar|so|png|json|html|js|css|properties|txt)$)', re.I)
REALPKG = re.compile(r'com/aide|com/s1243808733|io/github/zeroaicy|a4455jkjh|com/appfour')
RE_FQCN = re.compile(r'^[A-Za-z0-9_$/\[\];()<>$]+$')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', default=os.path.join(_REPO, 'process/base/merged_ok.jar'))
    ap.add_argument('--refs', default=os.path.expanduser('~/tmp/refindex.tsv'))
    ap.add_argument('--out', default=os.path.expanduser('~/tmp/triage.tsv'))
    ap.add_argument('--show', nargs=2, type=int, default=None)
    ap.add_argument('--min-refs', type=int, default=0)
    ap.add_argument('--limit', type=int, default=0)
    ap.add_argument('--aide-only', action='store_true',
                    help='只留引用者里出现"本工程真实包"的探针（第三方 GMS/Firebase 的混淆类不列入）')
    a = ap.parse_args()

    if a.show:
        rows = open(a.out, encoding='utf-8').read().split('\n')
        for ln in rows[a.show[0]:a.show[1]]:
            print(ln)
        return

    mapped = set()
    for d in os.listdir(os.path.join(_REPO, 'jobs')):
        f = os.path.join(_REPO, 'jobs', d, 'class_map.tsv')
        if os.path.exists(f):
            for ln in open(f, encoding='utf-8'):
                t = ln.split('\t')
                if t and t[0]:
                    mapped.add(t[0] if '/' in t[0] else 'abcd/' + t[0])
    ref = {}
    rows = []
    if os.path.exists(a.refs):
        for ln in open(a.refs, encoding='utf-8'):
            if ln.startswith('#'):
                continue
            t = ln.rstrip('\n').split('\t')
            if len(t) >= 4:
                ref[t[0]] = (int(t[1]), t[2], t[3])
                rows.append(t[0])
    z = zipfile.ZipFile(a.jar)
    out = []
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        cn = n[:-6]
        if not cn.startswith('abcd/') or cn in mapped:
            continue
        cnt, pkgs, mem = ref.get(cn, (0, '', ''))
        if cnt < a.min_refs:
            continue
        if a.aide_only and not REALPKG.search(pkgs or ''):
            continue
        try:
            c = jvmbody.parse(z.read(n))
        except Exception:
            continue
        if not c:
            continue
        mems = c.get('members') or []
        nm = len([m for m in mems if (m.get('desc') or '').startswith('(')])
        nf = len(mems) - nm
        utf = c.get('utf') or {}
        esc = lambda x: x.replace('\\', '\\\\').replace('\n', '\\n').replace('\t', '\\t')
        strs = [s for s in utf.values()
                if isinstance(s, str) and len(s) > 3
                and not (s.startswith('L') and s.endswith(';'))
                and not RE_FQCN.match(s) and RE_HUMAN.search(s)]
        strs = [esc(x) for x in strs]
        seen = []
        for s in strs:
            if s not in seen:
                seen.append(s)
        out.append((cnt, cn, pkgs, c.get('sup') or '', ','.join((c.get('ifaces') or [])[:3]),
                    nm, nf, ' | '.join(seen[:6]), mem))
    out.sort(key=lambda r: (-r[0], r[1]))
    if a.limit:
        out = out[:a.limit]
    with open(a.out, 'w', encoding='utf-8') as f:
        f.write('#probe\trefs\tpkgs\tsuper\tifaces\tnm\tnf\tstrs\tmem\n')
        for r in out:
            f.write('%s\t%d\t%s\t%s\t%s\t%d\t%d\t%s\t%s\n'
                    % (r[1], r[0], r[2], r[3], r[4], r[5], r[6], r[7], r[8]))
    sys.stderr.write('wrote %s (%d rows)\n' % (a.out, len(out)))


if __name__ == '__main__':
    main()
