#!/usr/bin/env python3
"""checks.py —— 改名工程的体检：validate / inherit / pkgs / widen / cover / manifest。

全部是"通用"实现：路径与 oracle 都来自工程配置，不含任何具体项目逻辑。
"""
import os
import re
import struct
import zipfile
import collections
import fnmatch

import jvm
import mapping
import params as params_mod
import smali
from oracle import Oracle, norm_desc, shape_of


# ---------------------------------------------------------------- 公共

def class_index(jars):
    """→ {class: jvm.parse()}  （同名只取第一次见到的）"""
    idx = {}
    for path in jars:
        if not os.path.exists(path):
            continue
        z = zipfile.ZipFile(path)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            cn = n[:-6]
            if cn in idx:
                continue
            try:
                idx[cn] = jvm.parse(z.read(n))
            except Exception:
                idx[cn] = None
    return idx


def _pkg(name):
    return name.rsplit('/', 1)[0] if '/' in name else ''


def _member_vis(ci, cls, name, desc, kind):
    c = ci.get(cls)
    if not c:
        return None
    for m in c['members']:
        if m['kind'] != kind or m['name'] != name:
            continue
        if kind == 'm' and m['desc'] != desc:
            continue
        return m['acc']
    return None


# ---------------------------------------------------------------- validate

NAME_RE = re.compile(r'[A-Za-z_$][A-Za-z0-9_$]*|<init>|<clinit>$')


def validate(project, tsrg=None):
    """校验生成的 TSRG2 与真实 jar 是否自洽。返回 (bad: Counter, detail: list, stats)。"""
    tsrg = tsrg or project.out_tsrg
    idx = class_index(project.base_jars + project.input_jars)
    bad = collections.Counter()
    detail = []
    seen_cls = {}
    seen_mem = set()
    cur = None
    cur_ok = False
    last = None
    n_cls = n_mem = n_par = 0
    par_seen = {}
    for ln, line in enumerate(open(tsrg, encoding='utf-8'), 1):
        line = line.rstrip('\n')
        if not line:
            continue
        if not line.startswith('\t'):
            f = line.split()
            if not f:
                continue
            if f[0] == 'tsrg2':
                continue
            probe, target = f[0], f[1] if len(f) > 1 else f[0]
            n_cls += 1
            cur, cur_ok, last = probe, probe in idx, None
            if not cur_ok:
                bad['class-not-in-base'] += 1
                detail.append((ln, 'no-class', line))
            if target in seen_cls:
                bad['dup-class-target'] += 1
                detail.append((ln, 'dup-class-target', '%s vs %s' % (target, seen_cls[target])))
            seen_cls[target] = probe
            continue
        body = line[1:]
        if body.startswith('\t'):
            head = body.strip().split(' ')
            if head == ['static']:
                if last is None or last[0] != 'm':
                    bad['static-position'] += 1
                    detail.append((ln, 'static-pos', line))
                elif cur_ok:
                    acc = _member_vis(idx, cur, last[1], last[2], 'm')
                    if acc is None or not (acc & 0x8):
                        bad['static-mismatch'] += 1
                        detail.append((ln, 'static-mismatch', line))
                continue
            # 参数行：`\t\t<实参序号> <obf名> <deobf名>`（srgutils 要求两列都给）
            n_par += 1
            if last is None or last[0] != 'm':
                bad['param-position'] += 1
                detail.append((ln, 'param-pos', line))
                continue
            if len(head) != 3:
                bad['param-format'] += 1
                detail.append((ln, 'param-format', line))
                continue
            if head[1] != head[2]:
                bad['param-columns'] += 1
                detail.append((ln, 'param-columns', line))
            if not head[0].isdigit():
                bad['param-format'] += 1
                detail.append((ln, 'param-format', line))
                continue
            i_par = int(head[0])
            n_args = len(params_mod.desc_args(last[2]))
            if i_par >= n_args:
                bad['param-index'] += 1
                detail.append((ln, 'param-index', '%s %s%s 只有 %d 个参数' % (last[1], last[2], '', n_args)))
            if (cur, last[1], last[2], i_par) in par_seen:
                bad['param-dup'] += 1
                detail.append((ln, 'param-dup', '%s %s 参数 %d' % (last[1], last[2], i_par)))
            par_seen[(cur, last[1], last[2], i_par)] = 1
            if not re.fullmatch(r'[A-Za-z_$][A-Za-z0-9_$]*', head[2]):
                bad['param-name'] += 1
                detail.append((ln, 'param-name', line))
            continue
        f = body.split(' ')
        n_mem += 1
        if len(f) >= 3 and f[1].startswith('('):
            name, desc, new = f[0], f[1], f[2]
            last = ('m', name, desc)
            if cur_ok and _member_vis(idx, cur, name, desc, 'm') is None:
                bad['no-method'] += 1
                detail.append((ln, 'no-method', '%s %s%s' % (cur, name, desc)))
            key = (cur, new, desc)
        else:
            name, new = f[0], f[-1]
            last = ('f', name, '')
            if cur_ok and _member_vis(idx, cur, name, '', 'f') is None:
                bad['no-field'] += 1
                detail.append((ln, 'no-field', '%s %s' % (cur, name)))
            key = (cur, new, '')
        if cur_ok:
            if key in seen_mem:
                bad['dup-member-target'] += 1
                detail.append((ln, 'dup-member-target', '%s -> %s' % (cur, new)))
            seen_mem.add(key)
        if not NAME_RE.fullmatch(new):
            bad['bad-name'] += 1
            detail.append((ln, 'bad-name', line))
    return bad, detail, dict(classes=n_cls, members=n_mem, params=n_par, base_classes=len(idx))


# ---------------------------------------------------------------- inherit

def inherit(project, limit=200):
    """映射必须沿继承链闭合：CONFLICT（两侧不同名）/ MISSING（祖先没映射）。

    只比较**虚方法**（非 static / 非 private / 非 <init>）：同名同描述符的 static 或 private
    成员在不同类里只是巧合，不构成覆写。
    """
    cm = mapping.ClassMap(project.class_map, project.probe_prefix).load()
    mm = mapping.MemberMap(project.member_map).load()
    m_i, _ = mm.index()
    acc_i = {}
    for path in project.base_jars + project.input_jars:
        if not os.path.exists(path):
            continue
        z = zipfile.ZipFile(path)
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            try:
                c = jvm.parse(z.read(n))
            except Exception:
                continue
            acc_i.setdefault(c['this'], {})
            for m in c['members']:
                if m['kind'] == 'm':
                    acc_i[c['this']].setdefault((m['name'], m['desc']), m['acc'])

    def virtual(cls, name, desc):
        a = acc_i.get(cls, {}).get((name, desc))
        if a is None:
            return False
        return not (a & 0x8) and not (a & 0x2)
    idx = smali.Index(project.smali_index)
    pmap = cm.dict                     # probe -> target
    conflicts, missing = [], []
    for probe_w, target, _ev in cm.rows:
        probe = mapping.full(probe_w, project.probe_prefix)
        path = idx.file_for(project.probe_dir, probe)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        for sup in ([pr['super']] if pr['super'] else []) + list(pr['ifaces']):
            if not sup or not sup.startswith('L'):
                continue
            sup = sup[1:-1]
            for (p, name, desc), new in list(m_i.items()):
                if p != probe:
                    continue
                # 祖先里同 (name,desc) 且已映射？
                if not virtual(probe, name, desc) or not virtual(sup, name, desc):
                    continue
                anc = m_i.get((sup, name, desc))
                if anc is not None and anc != new:
                    conflicts.append((probe, sup, name, desc, new, anc))
                elif anc is None:
                    # 祖先是否声明了该成员但没映射？
                    sp = idx.file_for(project.probe_dir, sup)
                    if not os.path.exists(sp):
                        continue
                    spr = smali.parse(sp)
                    if any(n == name and d == desc and not st for n, d, st, _s in spr['methods']) \
                            and virtual(sup, name, desc):
                        missing.append((probe, sup, name, desc, new))
    return conflicts, missing


# ---------------------------------------------------------------- pkgs

class _DSU:
    def __init__(self):
        self.p = {}

    def find(self, x):
        self.p.setdefault(x, x)
        while self.p[x] != x:
            self.p[x] = self.p[self.p[x]]
            x = self.p[x]
        return x

    def union(self, a, b):
        ra, rb = self.find(a), self.find(b)
        if ra != rb:
            self.p[rb] = ra


def pkgs(project):
    """并查集求解每个未映射类该落哪个包（同包才能访问 package-private）。"""
    cm = mapping.ClassMap(project.class_map, project.probe_prefix).load()
    pmap = cm.dict
    idx = class_index(project.base_jars + project.input_jars)
    dsu = _DSU()
    for cn, c in idx.items():
        if not c:
            continue
        # 类型可达：super/接口
        for sup in ([c['sup']] if c['sup'] else []) + list(c['ifaces'] or []):
            if sup in idx and _pkg(cn) == _pkg(sup):
                dsu.union(cn, sup)
        # 成员引用
        for r in (c.get('refmap') or {}).values():
            owner, name, desc, tag = r[0], r[1], r[2], r[3]
            if not owner or owner not in idx:
                continue
            acc = _member_vis(idx, owner, name, desc, 'm' if tag in (10, 11) else 'f')
            if acc is None or acc & 0x0001:
                continue
            if _pkg(cn) == _pkg(owner):
                dsu.union(cn, owner)
    comp = collections.defaultdict(set)
    for cn in list(dsu.p):
        comp[dsu.find(cn)].add(cn)
    moves, conflicts = [], []
    for root, members in comp.items():
        fixed = {}
        for m in members:
            t = pmap.get(m)
            if t:
                fixed.setdefault(_pkg(t), []).append(m)
        if len(fixed) > 1:
            conflicts.append(sorted(fixed))
        elif len(fixed) == 1:
            want = next(iter(fixed))
            for m in members:
                if m in pmap:
                    continue
                if _pkg(m) != want:
                    moves.append((m, want + '/' + m.rsplit('/', 1)[-1]))
    moves.sort()
    return moves, conflicts


# ---------------------------------------------------------------- widen

ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC = 0x1, 0x2, 0x4, 0x8


class _CF:
    """够用的 class 文件读写：成员 access_flags 偏移 + 常量池引用。"""

    def __init__(self, b):
        self.b = b
        n = struct.unpack_from('>H', b, 8)[0]
        o = 10; i = 1
        utf = {}; cls = {}; nat = {}; refs = []
        while i < n:
            tag = b[o]; o += 1
            if tag == 1:
                ln = struct.unpack_from('>H', b, o)[0]
                utf[i] = b[o+2:o+2+ln].decode('utf-8', 'replace'); o += 2 + ln
            elif tag == 7:
                cls[i] = struct.unpack_from('>H', b, o)[0]; o += 2
            elif tag == 12:
                nat[i] = struct.unpack_from('>HH', b, o); o += 4
            elif tag in (9, 10, 11):
                refs.append((tag,) + struct.unpack_from('>HH', b, o)); o += 4
            elif tag in (8, 16, 19, 20):
                o += 2
            elif tag == 15:
                o += 3
            elif tag in (3, 4, 17, 18):
                o += 4
            elif tag in (5, 6):
                o += 8; i += 1
            else:
                raise ValueError(tag)
            i += 1
        self.acc_off = o
        self.this = utf.get(cls.get(struct.unpack_from('>H', b, o+2)[0]))
        self.sup = utf.get(cls.get(struct.unpack_from('>H', b, o+4)[0]))
        ic = struct.unpack_from('>H', b, o+6)[0]
        self.ifaces = [utf.get(cls.get(struct.unpack_from('>H', b, o+8+2*k)[0])) for k in range(ic)]
        p = o + 8 + 2*ic
        self.members = []
        for kind in ('f', 'm'):
            cnt = struct.unpack_from('>H', b, p)[0]; p += 2
            for _ in range(cnt):
                a_off = p
                acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
                for _ in range(ac):
                    ln = struct.unpack_from('>I', b, p+2)[0]; p += 6 + ln
                self.members.append(dict(kind=kind, acc=acc, acc_off=a_off,
                                         name=utf.get(nm), desc=utf.get(ds)))
        self.refs = []
        for tag, ci, ni in refs:
            ow = utf.get(cls.get(ci)); nn = nat.get(ni)
            if ow and nn:
                self.refs.append((tag, ow, utf.get(nn[0]), utf.get(nn[1])))


def widen(jar, out=None, class_map=None, apply_=False):
    """跨包访问 package-private（以及跨包覆写）→ 放宽 access。返回统计。"""
    pmap = class_map or {}

    def pkg_after(name):
        return _pkg(pmap.get(name, name))

    z = zipfile.ZipFile(jar)
    infos = {i.filename: i for i in z.infolist()}
    parsed = {}
    for n in z.namelist():
        if n.endswith('.class'):
            try:
                parsed[n] = _CF(z.read(n))
            except Exception:
                pass
    midx = {c.this: {(m['name'], m['desc']): m for m in c.members} for c in parsed.values()}
    widen_cls, widen_mem, reasons = set(), collections.defaultdict(set), []
    for n, c in parsed.items():
        if not c.this:
            continue
        pa = pkg_after(c.this)
        pb = _pkg(c.this)
        for tag, owner, name, desc in c.refs:
            if owner not in midx:
                continue
            if _pkg(owner) != pb:
                continue
            if pkg_after(owner) == pa:
                continue
            m = midx[owner].get((name, desc))
            if not m or m['acc'] & ACC_PUBLIC:
                continue
            widen_mem[owner].add((m['kind'], name, desc))
            widen_cls.add(owner)
            reasons.append('%s(%s) -> %s.%s%s [%s]' % (c.this, pa, owner, name, desc, pkg_after(owner)))
        for sup in ([c.sup] if c.sup else []) + list(c.ifaces):
            if not sup or sup not in midx or _pkg(sup) != pb or pkg_after(sup) == pa:
                continue
            mine = {(m['name'], m['desc']) for m in c.members if m['kind'] == 'm'}
            for (nm, ds), m in midx[sup].items():
                if (nm, ds) not in mine or nm.startswith('<'):
                    continue
                if m['acc'] & (ACC_PUBLIC | ACC_PRIVATE | ACC_PROTECTED) or m['acc'] & ACC_STATIC:
                    continue
                widen_mem[sup].add(('m', nm, ds))
                widen_mem[c.this].add(('m', nm, ds))
                widen_cls.add(sup)
                reasons.append('OVERRIDE %s.%s%s <-> %s' % (c.this, nm, ds, sup))
    stats = dict(classes=len(widen_cls), members=sum(len(v) for v in widen_mem.values()),
                 reasons=sorted(set(reasons))[:40])
    if not apply_:
        return stats, None
    out = out or (jar[:-4] + '_pub.jar')
    zo = zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED)
    changed = 0
    for n in z.namelist():
        data = z.read(n)
        c = parsed.get(n)
        if c:
            b = bytearray(data)
            touched = False
            if c.this in widen_cls and not (struct.unpack_from('>H', b, c.acc_off)[0] & ACC_PUBLIC):
                struct.pack_into('>H', b, c.acc_off,
                                 struct.unpack_from('>H', b, c.acc_off)[0] | ACC_PUBLIC)
                touched = True
            for kind, nm, ds in widen_mem.get(c.this, ()):
                m = midx[c.this].get((nm, ds))
                acc = struct.unpack_from('>H', b, m['acc_off'])[0]
                if acc & (ACC_PUBLIC | ACC_PROTECTED):
                    continue
                struct.pack_into('>H', b, m['acc_off'], acc | (ACC_PUBLIC if kind == 'f' else ACC_PROTECTED))
                touched = True
            if touched:
                data = bytes(b); changed += 1
        zi = infos[n]
        info = zipfile.ZipInfo(n, date_time=zi.date_time)
        info.compress_type = zipfile.ZIP_DEFLATED
        info.external_attr = zi.external_attr
        zo.writestr(info, data)
    zo.close()
    stats['written'] = changed
    stats['out'] = out
    return stats, out


# ---------------------------------------------------------------- cover / manifest

def cover(project):
    """覆盖率：分母 = oracle 成员中在探针里有同形对应者；命中 = 映射到正确名字。"""
    cm = mapping.ClassMap(project.class_map, project.probe_prefix).load()
    mm = mapping.MemberMap(project.member_map).load()
    m_i, f_i = mm.index()
    idxs = smali.Index(project.smali_index)
    ora = Oracle(project.oracle_jars)
    tot_m = hit_m = tot_f = hit_f = 0
    per_class = []
    for probe_w, target, _ev in cm.rows:
        probe = mapping.full(probe_w, project.probe_prefix)
        label, om = ora.find(target)
        if not om:
            continue
        path = idxs.file_for(project.probe_dir, probe)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        cmap = cm.dict
        pmeth = collections.Counter((norm_desc(d, cmap), bool(s)) for n, d, s, _ in pr['methods']
                                    if n not in ('<init>', '<clinit>'))
        pfield = collections.Counter((norm_desc(d, cmap), bool(s)) for n, d, s, _ in pr['fields'])
        cm_ = tot = ch = fcm = ftot = fch = 0
        for n, d, s in om['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            nd = norm_desc(d, cmap)
            if not pmeth.get((nd, bool(s))):
                continue
            tot += 1
            if any((probe, pn, pd) in m_i and m_i[(probe, pn, pd)] == n and norm_desc(pd, cmap) == nd
                   for pn, pd, _s, _y in pr['methods']):
                ch += 1
        for n, d, s in om['fields']:
            nd = norm_desc(d, cmap)
            if not pfield.get((nd, bool(s))):
                continue
            ftot += 1
            if any((probe, pn) in f_i and f_i[(probe, pn)] == n and norm_desc(pd, cmap) == nd
                   for pn, pd, _s, _y in pr['fields']):
                fch += 1
        tot_m += tot; hit_m += ch; tot_f += ftot; hit_f += fch
        per_class.append((probe, target, tot, ch, ftot, fch))
    return dict(methods=(hit_m, tot_m), fields=(hit_f, tot_f), per_class=per_class)


def manifest(jar):
    """jar 的**内容指纹**（与 zip 布局/时间戳无关）。"""
    import hashlib
    z = zipfile.ZipFile(jar)
    rows = []
    for info in z.infolist():
        if info.filename.endswith('/'):
            continue
        rows.append((info.filename, hashlib.sha256(z.read(info.filename)).hexdigest()))
    rows.sort()
    m = hashlib.sha256()
    for name, h in rows:
        m.update(('%s  %s\n' % (h, name)).encode('utf-8'))
    return m.hexdigest(), len(rows)
