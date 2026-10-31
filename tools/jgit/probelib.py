#!/usr/bin/env python3
import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.abspath(__file__)))
import paths as _P  # noqa: E402
"""probelib.py — 探针(smali) / oracle(class) 成员清单与描述符归一化。

类映射唯一真相: process/truth/<part>/class_map.tsv  (probe 无 abcd/ 前缀, 第二列真名)
成员映射权威产物: process/truth/<part>/members.tsrg   (part: jgit/jsch/aide/head)
这里读的是 paths.MAP / paths.TSRG —— 各 part 的**合并只读视图**。
"""
import os, re, struct, sys, zipfile

HOME = os.path.expanduser('~')
SMALI = '/storage/emulated/0/MyAIDEProEnchanted/src/smali/abcd'
MAP = _P.MAP
TSRG = _P.TSRG
ORACLE_JAR = HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'
OVERS = [  # (标签, jar路径)
    ('3.7.1', HOME + '/out/oracle/jgit/j-3.7.1.201504261725-r.jar'),
    ('4.0.0', HOME + '/out/oracle/jgit/j-4.0.0.201506090130-r.jar'),
    ('4.2.0', HOME + '/out/oracle/jgit/j-4.2.0.201601211800-r.jar'),
    ('4.4.1', HOME + '/out/oracle/jgit/j-4.4.1.201607150455-r.jar'),
    ('4.5.0', HOME + '/out/oracle/jgit/j-4.5.0.201609210915-r.jar'),
    ('4.5.7', HOME + '/out/oracle/jgit/j-4.5.7.201904151645-r.jar'),
    ('4.9.10', HOME + '/out/oracle/jgit/j-4.9.10.201904181027-r.jar'),
    ('4.10.0', HOME + '/out/oracle/jgit/j-4.10.0.201712302008-r.jar'),
    ('4.11.9', HOME + '/out/oracle/jgit/j-4.11.9.201909030838-r.jar'),
]
MODS = {'public', 'private', 'protected', 'static', 'final', 'abstract', 'synthetic',
        'constructor', 'declared-synchronized', 'varargs', 'bridge', 'native',
        'transient', 'volatile', 'strictfp', 'enum', 'mandatory', 'empty'}


def load_map():
    mp = {}
    for l in open(MAP):
        f = l.rstrip('\n').split('\t')
        if len(f) > 1 and f[0] != 'abcd_class':
            mp['abcd/' + f[0]] = f[1]
    return mp


def load_tsrg():
    """-> mm[(probe,name,normdesc)]=new, fm[(probe,pname)]=new, blocks"""
    mm, fm, blocks = {}, {}, {}
    cur = None
    for l in open(TSRG):
        l = l.rstrip('\n')
        if not l:
            continue
        if not l.startswith('\t'):
            cur = l.split()[0]
            blocks[cur] = []
            continue
        s = l[1:].split(' ')
        blocks[cur].append(s)
        if len(s) == 2:
            fm[(cur, s[0])] = s[1]
        elif len(s) >= 3:
            mm[(cur, s[0], s[1])] = s[2]
    return mm, fm, blocks


def parse_smali(path):
    t = open(path, encoding='utf-8', errors='replace').read()
    m = re.search(r'^\.class\s+([^\n]+)$', t, re.M)
    if not m:
        return None
    desc = m.group(1).split()[-1]
    cn = desc.rstrip(';').lstrip('L')
    out = dict(descriptor=cn, methods=[], fields=[], body={}, clinit=None)
    for mm2 in re.finditer(r'^\.method\s+([^\n]+)\n(.*?)^\.end method', t, re.M | re.S):
        toks = mm2.group(1).split()
        b = None
        for x in toks:
            if x not in MODS:
                b = x
                break
        if not b or '(' not in b:
            continue
        nm = b[:b.index('(')]
        ds = b[b.index('('):]
        st = 'static' in toks
        syn = 'synthetic' in toks or 'bridge' in toks
        out['methods'].append((nm, ds, st, syn))
        out['body'][(nm, ds)] = mm2.group(2)
    for mm2 in re.finditer(r'^\.field\s+([^\n]+)$', t, re.M):
        toks = mm2.group(1).split()
        b = None
        for x in toks:
            if x not in MODS:
                b = x
                break
        if not b or ':' not in b:
            continue
        n, ds = b.split(':', 1)
        out['fields'].append((n, ds, 'static' in toks, 'synthetic' in toks))
    cm = re.search(r'^\.super\s+([^\n]+)$', t, re.M)
    out['super'] = cm.group(1).strip() if cm else None
    im = re.search(r'^\.implements\s+([^\n]+)$', t, re.M)
    out['ifaces'] = re.findall(r'^\.implements\s+([^\n]+)$', t, re.M)
    return out


class Oracle:
    """按版本懒加载: o.members(ver, cls) -> dict(methods=[(n,d,static)], fields=[(n,d,static)])"""

    def __init__(self):
        self.cache = {}
        self.zips = {}
        for tag, p in OVERS:
            if p.endswith('.jar'):
                self.zips[tag] = zipfile.ZipFile(p)

    def _read(self, ver, cls):
        tag2path = dict(OVERS)
        p = tag2path[ver]
        if ver in self.zips:
            try:
                return self.zips[ver].read(cls + '.class')
            except KeyError:
                return None
        fp = os.path.join(p, cls + '.class')
        if os.path.exists(fp):
            return open(fp, 'rb').read()
        return None

    def members(self, ver, cls):
        k = (ver, cls)
        if k in self.cache:
            return self.cache[k]
        b = self._read(ver, cls)
        if b is None:
            self.cache[k] = None
            return None
        n = struct.unpack_from('>H', b, 8)[0]
        o = 10
        i = 1
        utf = {}
        while i < n:
            tag = b[o]; o += 1
            if tag == 1:
                ln = struct.unpack_from('>H', b, o)[0]
                utf[i] = b[o + 2:o + 2 + ln].decode('utf-8', 'replace'); o += 2 + ln
            elif tag in (7, 8, 16, 19, 20):
                o += 2
            elif tag == 15:
                o += 3
            elif tag in (3, 4, 9, 10, 11, 12, 17, 18):
                o += 4
            elif tag in (5, 6):
                o += 8; i += 1
            else:
                raise ValueError(tag)
            i += 1
        p2 = o + 6
        ic = struct.unpack_from('>H', b, p2)[0]
        p2 += 2 + 2 * ic
        res = dict(methods=[], fields=[])
        for kind in ('f', 'm'):
            cnt = struct.unpack_from('>H', b, p2)[0]; p2 += 2
            for _ in range(cnt):
                a, nm, ds, ac = struct.unpack_from('>HHHH', b, p2); p2 += 8
                for _ in range(ac):
                    ln = struct.unpack_from('>I', b, p2 + 2)[0]; p2 += 6 + ln
                (res['fields'] if kind == 'f' else res['methods']).append(
                    (utf[nm], utf[ds], bool(a & 0x8)))
        self.cache[k] = res
        return res


TYPEREF = re.compile(r'L([A-Za-z0-9_$/$.]+);')


def norm_desc(d, mp):
    return TYPEREF.sub(lambda m: 'L' + mp.get(m.group(1), m.group(1)) + ';', d)


def shape(d):
    b = d[1:d.index(')')]
    r = d[d.index(')') + 1:]
    one = lambda x: 'O' if x.lstrip('[').startswith('L') else x.lstrip('[')
    return '(' + ''.join(one(p) for p in re.findall(r'\[*(?:L[^;]+;|[ZBCSIJFD])', b)) + ')' + one(r)


def iter_smali():
    # 大小写不敏感文件系统会把 oC/OC 之类的类改名成 oC.2.smali，
    # 所以类名必须以 smali_index.tsv（类描述符 -> 文件名）为准。
    idx = os.path.expanduser('~/out/work/smali_index.tsv')
    if os.path.exists(idx):
        seen = set()
        for l in open(idx):
            cn, f = l.rstrip('\n').split('\t')
            short = cn[5:] if cn.startswith('abcd/') else cn
            if short in seen:
                continue
            seen.add(short)
            yield short, os.path.join(SMALI, f)
        return
    for f in sorted(os.listdir(SMALI)):
        if f.endswith('.smali'):
            yield f[:-6], os.path.join(SMALI, f)


if __name__ == '__main__':
    mp = load_map()
    print('类映射', len(mp))
    print('oracle 版本', [t for t, _ in OVERS])
