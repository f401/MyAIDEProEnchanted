#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
"""fieldprint.py [--apply] —— 字段「读写点指纹」匹配（先猜后证）。

猜：同类型（描述符翻译后相等）+ static 一致。
证：把探针字段的读写点方法名翻译到 oracle 空间，要求它是候选字段读写点的**子集**；
    唯一候选才算证成。再叠加一条弱证据：构造器内 putfield 的先后次序。
落库后仍要走 verify_members → closefam → FART 两遍逐字节。

用法: python3 tools/jgit/fieldprint.py [--apply] [--top N] [--ext]

--ext（实验性，当前**不可用**）：本想用「跨类读写者 + 关联常量」加强证据，但跨类索引只覆盖
被 javap 取样的那批类（两侧不对称），子集检验必然失败 → 证成 0。正确做法是**扫常量池的
Fieldref 项**（一次遍历 2 万类，无需 javap）建全量「谁引用了某个 (owner,name)」索引。
在换实现之前不要用 --ext。
"""
import collections, os, re, subprocess, sys, zipfile
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from dupcheck import parse_class

HOME = os.path.expanduser('~')
ORACLE = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
PROBE = '/storage/emulated/0/MyAIDEProEnchanted/process/base/merged_ok.jar'
TSV = _P.MAP
TSRG = _P.TSRG
TREF = re.compile(r'L(abcd/[^;]+);')


def javap(jar, classes, chunk=40):
    out = {}
    cls = [c.replace('/', '.') for c in classes]
    for i in range(0, len(cls), chunk):
        p = subprocess.run(['javap', '-c', '-p', '-classpath', jar] + cls[i:i + chunk],
                           capture_output=True, text=True)
        # 不能靠 `Compiled from`（探针 jar 的 SourceFile 基本被剥离）——直接按类声明行切块
        cur, buf = None, []
        for ln in p.stdout.split('\n'):
            m = re.match(r'^(?:public |final |abstract |static )*(?:class|interface|enum) ([\w.$]+)', ln)
            if m:
                if cur:
                    out[cur] = '\n'.join(buf)
                cur = m.group(1).replace('.', '/'); buf = []
            else:
                buf.append(ln)
        if cur:
            out[cur] = '\n'.join(buf)
    return out


CONST = re.compile(r'(?:ldc\S*|bipush|sipush|iconst_\S+|lconst_\S+)\s*(?://\s*(?:int|long|String|float|double)\s+(.-?\S*))?$')


def inline_consts(block):
    """字段名 -> 同方法内紧邻的字面量（帮助区分同类同型字段）"""
    res = collections.defaultdict(set)
    cur = None
    lines = block.split('\n')
    for i, ln in enumerate(lines):
        if ln.startswith('  ') and not ln.startswith('   ') and '(' in ln and ln.rstrip().endswith(';'):
            m = re.search(r'([\w$<>]+)\s*\(', ln)
            if m:
                cur = m.group(1)
        mm = re.search(r'//\s+Field\s+([\w$]+):', ln)
        if mm and cur:
            for j in range(max(0, i - 2), min(len(lines), i + 3)):
                cm = CONST.search(lines[j].strip())
                if cm and cm.group(1):
                    res[mm.group(1)].add(cm.group(1).strip())
    return res


def accesses(block, simple):
    """字段名 -> (readers, writers, ctorWriteIdx)"""
    res = collections.defaultdict(lambda: [set(), set(), None])
    cur, order = None, 0
    for ln in block.split('\n'):
        if ln.startswith('  ') and not ln.startswith('   ') and '(' in ln and ln.rstrip().endswith(';'):
            m = re.search(r'([\w$<>]+)\s*\(', ln)
            if m:
                cur = m.group(1)
                if cur == simple:
                    cur = '<init>'
                order = 0
            continue
        m = re.search(r'// (?:Field|静态) ?([\w$]+):(\S+)', ln)
        if not m:
            m = re.search(r'putfield\s+#\d+\s+//\s+Field\s+([\w$]+):', ln)
        if 'getfield' in ln or 'putfield' in ln or 'getstatic' in ln or 'putstatic' in ln:
            mm = re.search(r'//\s+Field\s+([\w$]+):', ln)
            if mm and cur:
                nm = mm.group(1)
                if 'getfield' in ln or 'getstatic' in ln:
                    res[nm][0].add(cur)
                else:
                    res[nm][1].add(cur)
                    if cur == '<init>':
                        if res[nm][2] is None:
                            res[nm][2] = order
                        order += 1
    return res


def main():
    top = 20
    if '--top' in sys.argv:
        top = int(sys.argv[sys.argv.index('--top') + 1])
    p2t = {}
    for ln in open(TSV):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 2 and f[0] != 'abcd_class':
            p2t['abcd/' + f[0]] = f[1]
    tr = lambda d: TREF.sub(lambda m: 'L' + p2t.get(m.group(1), m.group(1)) + ';', d)

    fmap = collections.defaultdict(dict); cur = None
    for ln in open(TSRG):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]
        else:
            p = ln.split()
            if len(p) == 2:
                fmap[cur][p[0]] = p[1]

    z, o = zipfile.ZipFile(PROBE), zipfile.ZipFile(ORACLE)
    orc = {}
    for n in o.namelist():
        if n.endswith('.class'):
            c = parse_class(o.read(n))
            if c['this']:
                orc[c['this']] = c
    # 需要处理的类
    work = []
    for p, t in p2t.items():
        try:
            c = parse_class(z.read(p + '.class'))
        except KeyError:
            continue
        if t not in orc:
            continue
        used = set(fmap[p].values())
        unm = [f for f in c['fields'] if f[0] not in fmap[p]]
        free = [f for f in orc[t]['fields'] if f[0] not in used]
        if unm and free:
            work.append((p, t, c, unm, free))
    print('待处理类 %d' % len(work))
    P = javap(PROBE, [w[0] for w in work])
    O = javap(ORACLE, [w[1] for w in work])
    print('javap 取到 探针 %d / oracle %d' % (len(P), len(O)))

    # 探针方法名 -> 目标名（同类内）
    mmap = collections.defaultdict(dict)
    cur = None
    for ln in open(TSRG):
        ln = ln.rstrip('\n')
        if not ln.strip():
            continue
        if ln[0] not in (' ', '\t'):
            cur = ln.split()[0]
        else:
            p = ln.split()
            if len(p) == 3:
                mmap[cur][p[0]] = p[2]

    # 跨类访问索引：字段名 -> 外部类的目标名集合
    # 跨类访问索引：复用已取到的块（避免逐类调 javap）
    ext = collections.defaultdict(set)
    if '--ext' in sys.argv:
        for src, txt in P.items():
            who = p2t.get(src, src)
            for m in re.finditer(r'//\s+Field\s+([\w$]+):', txt):
                ext[m.group(1)].add(who)
        for src, txt in O.items():
            for m in re.finditer(r'//\s+Field\s+([\w$]+):', txt):
                ext[m.group(1)].add(src)

    plan = []
    stat = collections.Counter()
    for p, t, c, unm, free in work:
        pa = accesses(P.get(p, ''), p.rsplit('/', 1)[-1])
        oa = accesses(O.get(t, ''), t.rsplit('/', 1)[-1])
        mtr = mmap.get(p, {})
        used_now = set()
        for nm, ds, acc in unm:
            d = tr(ds)
            cands = [f for f in free if f[1] == d and bool(f[2] & 8) == bool(acc & 8)]
            if not cands:
                stat['无候选'] += 1
                continue
            r, w, wo = pa.get(nm, [set(), set(), None])
            kr = set(mtr.get(x, x) for x in r if x in mtr or x == '<init>')
            kw = set(mtr.get(x, x) for x in w if x in mtr or x == '<init>')
            ok_ = inline_consts(P.get(p, '')).get(nm, set()) if '--ext' in sys.argv else set()
            keep = []
            for onm, od, oacc in cands:
                orr, ow, owo = oa.get(onm, [set(), set(), None])
                if not (kr <= orr and kw <= ow):
                    continue
                # 跨类：读写过该字段的外部类（已映射的）必须也读写过候选字段
                if '--ext' in sys.argv:
                    pk = set(ext.get(nm, ()))
                    if pk and not pk <= ext.get(onm, set()):
                        continue
                keep.append((onm, wo is not None and wo == owo, len(kr) + len(kw) + len(ok_)))
            if len(keep) == 1 and keep[0][0] not in used_now:
                used_now.add(keep[0][0])
                plan.append((p, nm, d, keep[0][0], keep[0][1], keep[0][2]))
                stat['证成'] += 1
            else:
                stat['歧义'] += 1
    print('证成 %d / 歧义 %d / 无候选 %d' % (stat['证成'], stat['歧义'], stat['无候选']))
    for x in plan[:top]:
        print('   %-10s %-8s %-40s -> %-20s 构造器次序吻合=%s 证据=%d' % (x[0][5:], x[1], x[2], x[3], x[4], x[5]))
    if '--apply' in sys.argv:
        with open('/storage/emulated/0/MyAIDEProEnchanted/tools/jgit/fixes/fieldprint.tsv', 'w') as fh:
            for p, nm, d, onm, ok, ev in plan:
                fh.write('%s\tf\t%s\t-\t-\t%s\n' % (p, nm, onm))
        print('\n已写 tools/jgit/fixes/fieldprint.tsv')
    return 0


if __name__ == '__main__':
    sys.exit(main())
