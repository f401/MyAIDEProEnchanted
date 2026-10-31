#!/usr/bin/env python3
"""enumanchor.py —— 用「枚举常量名」当锚点还原枚举体类（通用）。

判据（完全不受改名影响）：
  1) 探针枚举的 <clinit> 里必然成对出现
         new-instance vX, L<体类>;  const-string "CONST_NAME"
     即体类 ↔ 常量名 是硬绑定（常量名是字符串字面量，混淆器不改）。
  2) oracle 枚举的 <clinit> 字节码里同样是
         new <Real$N> ; ldc "CONST_NAME"
  两侧按常量名 join，就把「匿名体类 → 真名」定死。

用法:
  python3 tools/deob/enumanchor.py -p process/deob.json --prefix com/a \
      --oracle dx-1.16 --map jobs/dx/class_map.tsv [--only com/a/b/d/a/a] [--out F]
"""
import os, sys, re, json, zipfile, argparse, subprocess, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'jgit'))
import jvmbody

RE_NEW = re.compile(r'new-instance\s+[vp]\d+,\s*L([A-Za-z0-9_$/\-]+);')
RE_STR = re.compile(r'const-string(?:/jumbo)?\s+[vp]\d+,\s*"((?:[^"\\]|\\.)*)"')


def probe_enum_bodies(path):
    """.smali 的 <clinit> → {体类: 常量名}（new-instance 紧跟 const-string）"""
    t = open(path, encoding='utf-8', errors='replace').read()
    i = t.find('.method static constructor <clinit>()V')
    if i < 0:
        i = 0
    out = {}
    pend = None
    for ln in t[i:].split('\n'):
        m = RE_NEW.search(ln)
        if m:
            pend = m.group(1); continue
        m = RE_STR.search(ln)
        if m and pend:
            out[pend] = m.group(1); pend = None
    return out


def oracle_enum_bodies(jar, cls):
    """javap -c 解析 {常量名: 体类}"""
    cp = jar
    r = subprocess.run(['javap', '-p', '-c', '-cp', cp, cls.replace('/', '.')],
                       capture_output=True, text=True)
    out = {}
    cur = None
    for ln in r.stdout.split('\n'):
        m = re.search(r'// class ([\w/$]+)', ln)
        if m and '$' in m.group(1):
            cur = m.group(1); continue
        m = re.search(r'// String ([\w$]+)', ln)
        if m and cur:
            out[m.group(1)] = cur; cur = None
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('-p', '--project', required=True)
    ap.add_argument('--prefix', required=True)
    ap.add_argument('--oracle', required=True)
    ap.add_argument('--map', required=True)
    ap.add_argument('--out', default='')
    a = ap.parse_args()
    cfg = json.load(open(a.project))
    base = os.path.dirname(os.path.abspath(a.project))
    ex = lambda x: os.path.normpath(os.path.join(base, os.path.expandvars(os.path.expanduser(x))))
    roots = [ex(r) for r in (cfg.get('probe_roots') or [])]
    jar = [ex(o['path']) for o in cfg['oracle_jars'] if o['label'] == a.oracle][0]
    # 已定名的枚举
    cmap = {}
    for ln in open(a.map, encoding='utf-8'):
        t = ln.rstrip('\n').split('\t')
        if len(t) > 1 and t[1]:
            cmap[t[0]] = t[1]
    z = zipfile.ZipFile(jar)
    onames = set(n[:-6] for n in z.namelist() if n.endswith('.class'))
    props = {}
    for p, on in cmap.items():
        if on not in onames:
            continue
        c = jvmbody.parse(z.read(on + '.class'))
        if not c:
            continue
        acc = 0
        props[on] = c
    # 探针侧枚举类：找 .class ... enum
    probes = {}
    for r in roots:
        for dp, _, fns in os.walk(os.path.join(r, a.prefix)):
            for f in fns:
                if not f.endswith('.smali'):
                    continue
                fp = os.path.join(dp, f)
                head = open(fp, encoding='utf-8', errors='replace').read(400)
                m = re.search(r'^\.class\s+(.*)$', head, re.M)
                if not m or ' enum' not in m.group(1):
                    continue
                nm = m.group(1).split()[-1][1:-1]
                probes[nm] = fp
    print('探针枚举 %d 个: %s' % (len(probes), ', '.join(sorted(probes))))
    rows = []
    for pn in sorted(probes):
        on = cmap.get(pn)
        if not on:
            print('  [%s] 未定名，跳过' % pn)
            continue
        pb = probe_enum_bodies(probes[pn])
        ob = oracle_enum_bodies(jar, on)
        if not pb:
            print('  [%s] 探针侧没解出常量对' % pn); continue
        hit = 0
        for body, cname in sorted(pb.items(), key=lambda x: x[1]):
            real = ob.get(cname)
            if real:
                rows.append((body, real, '%s.%s' % (on.split('/')[-1], cname)))
                hit += 1
            else:
                print('  ! %s 常量 %s 在 oracle 找不到' % (body, cname))
        print('  [%s -> %s] 常量 %d 个，命中 %d' % (pn, on, len(pb), hit))
    if a.out:
        with open(a.out, 'w', encoding='utf-8') as w:
            for b, r_, ev in rows:
                w.write('%s\t%s\tenum:%s\n' % (b, r_, ev))
        print('写出 %s（%d 行）' % (a.out, len(rows)))


if __name__ == '__main__':
    main()
