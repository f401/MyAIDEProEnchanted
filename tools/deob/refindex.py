#!/usr/bin/env python3
"""refindex.py —— 为"整包混淆类"建**引用者索引**：谁在用它、用它的哪个成员、用的是哪种描述符。

用途（判据来源 `refs:`）：
  1) 排优先级：被**真实命名**类引用得多的混淆类，改名的可见收益最大；
  2) 定名：引用点给出的成员名/描述符上下文往往直接暴露语义（例如只被 `onCreate` 调用、
     参数是 `Bundle` + `setContentView`）；
  3) 归属：引用者集中在某个真实包（`com/aide/ui/...`）→ 该混淆类属于那个包。

输出（TSV，按 named_refs 降序）：
  probe  named_refs  named_pkgs  members            sample
  members = 被引用的成员名集合（`name+desc`，去重后逗号分隔，最多 12 个）
  sample  = `引用者类#成员 -> probe成员` 前三例

用法:
  python3 tools/deob/refindex.py --jar process/base/merged_ok.jar --prefix abcd \
      --out ~/tmp/refindex.tsv [--cache ~/tmp/refindex.json] [--top 60]
"""
import os, sys, re, json, zipfile, argparse, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

OBF = ('abcd/', 'a/', 'c/', 'b/')


def is_obf(t):
    return t and any(t.startswith(p) for p in OBF)


def clsrefs(c):
    """类级引用：super / interfaces / 成员描述符里的 Lxxx;"""
    out = set()
    for t in [c.get('super')] + list(c.get('ifaces') or []):
        if t:
            out.add(t)
    for m in c.get('members') or []:
        for s in (m.get('desc') or '',):
            for x in re.findall(r'L([\w/$]+);', s):
                out.add(x)
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--jar', required=True)
    ap.add_argument('--prefix', default='abcd')
    ap.add_argument('--out', default='')
    ap.add_argument('--cache', default='')
    ap.add_argument('--top', type=int, default=0)
    a = ap.parse_args()

    idx = None
    if a.cache and os.path.exists(a.cache):
        idx = json.load(open(a.cache, encoding='utf-8'))
    if idx is None:
        idx = {}
        z = zipfile.ZipFile(a.jar)
        # 只统计**真的定义了**的探针：merged jar 里会有"只被引用、没有类体"的幽灵类型
        # （例如 `abcd/Kj` 的匿名类还在、外层类被魔改作者删掉了），按定义过滤免得白干。
        defined = set(x[:-6] for x in z.namelist() if x.endswith('.class'))
        n = 0
        for nm in z.namelist():
            if not nm.endswith('.class'):
                continue
            cn = nm[:-6]
            try:
                c = jvmbody.parse(z.read(nm))
            except Exception:
                continue
            if not c:
                continue
            n += 1
            this = c.get('this') or cn
            if is_obf(this):
                continue          # 只看**真实命名**的引用者
            pkg = this.rsplit('/', 1)[0] if '/' in this else ''
            # 成员级引用
            for (ow, mn, ds, tag) in (c.get('refmap') or {}).values():
                if not is_obf(ow):
                    continue
                e = idx.setdefault(ow, {'refs': {}, 'members': {}, 'samples': []})
                e['refs'][this] = pkg
                key = '%s%s' % (mn, ds)
                e['members'][key] = e['members'].get(key, 0) + 1
                if len(e['samples']) < 6:
                    e['samples'].append('%s -> %s' % (this, key))
            # 类级引用（继承/实现/字段类型/参数类型/返回值）
            for ow in clsrefs(c):
                if not is_obf(ow):
                    continue
                e = idx.setdefault(ow, {'refs': {}, 'members': {}, 'samples': []})
                e['refs'][this] = pkg
        idx = {k: v for k, v in idx.items() if k in defined}
        sys.stderr.write('parsed %d classes, %d probes (defined only)\n' % (n, len(idx)))
        if a.cache:
            json.dump(idx, open(a.cache, 'w', encoding='utf-8'))

    rows = []
    for p, e in idx.items():
        pkgs = collections.Counter(e['refs'].values())
        rows.append((len(e['refs']), p, pkgs, e['members'], e['samples']))
    rows.sort(key=lambda r: (-r[0], r[1]))
    if a.out:
        f = open(a.out, 'w', encoding='utf-8')
    else:
        f = sys.stdout
    f.write('#probe\tnamed_refs\tnamed_pkgs\tmembers\tsample\n')
    for cnt, p, pkgs, mem, sam in rows:
        top = ','.join('%s(%d)' % (k, v) for k, v in pkgs.most_common(3))
        ms = ','.join(k for k, _ in sorted(mem.items(), key=lambda x: -x[1])[:12])
        f.write('%s\t%d\t%s\t%s\t%s\n' % (p, cnt, top, ms, ' | '.join(sam[:3])))
    if a.out:
        f.close()
        sys.stderr.write('wrote %s (%d rows)\n' % (a.out, len(rows)))


if __name__ == '__main__':
    main()
