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


def _class_map(project):
    return mapping.ClassMap(project.class_map, project.probe_prefix,
                            getattr(project, 'class_map_prefix', None)).load()


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
        if last and last[0] == 'm' and new != name:
            # 契约方法改名：FART 会沿覆写链把改名传播到 JDK 接口上（踩过：`LsEntry.toString →
            # getLongname` 让所有 `CharSequence.toString()` 变成 `getLongname`，启动即崩）。
            # Object 契约（toString/equals/hashCode…）**一律**不许；接口契约（length/compareTo…）
            # 只有本类真的实现了那个接口才危险（`AbbreviatedObjectId.length` 就是安全的）。
            hit = None
            for nm in (name, new):
                if desc not in jvm.CONTRACT_SIGS.get(nm, ()):
                    continue
                iface = jvm.CONTRACT_IFACE.get(nm)
                if iface is None:
                    hit = nm
                    break
                ci = idx.get(cur)
                ifs = set()
                if ci:
                    for d in ([ci.get('sup')] + list(ci.get('ifaces') or [])):
                        if d:
                            ifs.add(d[1:-1] if d.startswith('L') and d.endswith(';') else d)
                if iface in ifs:
                    hit = nm
                    break
            if hit:
                bad['contract-rename'] += 1
                detail.append((ln, 'contract-rename', '%s %s -> %s' % (cur, name, new)))
        if not NAME_RE.fullmatch(new):
            bad['bad-name'] += 1
            detail.append((ln, 'bad-name', line))
        if name.startswith('<') and new != name:
            # 构造器/<clinit> 不能改名：字节码里 `invokespecial <init>` 仍按旧名找，
            # 改名后方法体里就变成"在普通方法里调用 this(...)" → VerifyError
            bad['special-rename'] += 1
            detail.append((ln, 'special-rename', '%s %s -> %s' % (name, desc, new)))
    return bad, detail, dict(classes=n_cls, members=n_mem, params=n_par, base_classes=len(idx))


# ---------------------------------------------------------------- inherit

def inherit(project, limit=200):
    """映射必须沿继承链闭合：CONFLICT（两侧不同名）/ MISSING（祖先没映射）。

    只比较**虚方法**（非 static / 非 private / 非 <init>）：同名同描述符的 static 或 private
    成员在不同类里只是巧合，不构成覆写。
    """
    cm = _class_map(project)
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
        probe = cm.full_probe(probe_w)
        if pkg and not probe.startswith(pkg):
            continue
        path = idx.file_for(getattr(project, "probe_search", None) or project.probe_dir, probe)
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
                    sp = idx.file_for(getattr(project, "probe_search", None) or project.probe_dir, sup)
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
    cm = _class_map(project)
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
        _codes = []
        for kind in ('f', 'm'):
            cnt = struct.unpack_from('>H', b, p)[0]; p += 2
            for _ in range(cnt):
                a_off = p
                acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
                code = None
                for _ in range(ac):
                    an = struct.unpack_from('>H', b, p)[0]
                    ln = struct.unpack_from('>I', b, p+2)[0]
                    if kind == 'm' and utf.get(an) == 'Code':
                        cl = struct.unpack_from('>I', b, p+10)[0]
                        code = (p+14, cl)
                    p += 6 + ln
                self.members.append(dict(kind=kind, acc=acc, acc_off=a_off,
                                         name=utf.get(nm), desc=utf.get(ds), code=code))
                if code:
                    _codes.append(code)
        # 类级访问：new / checkcast / instanceof / anewarray / multianewarray / ldc(class)
        self.class_uses = set()
        for off, ln in _codes:
            code = b[off:off+ln]; i = 0
            while i < len(code):
                op = code[i]; idx = None
                if op in (0xbb, 0xc0, 0xc1, 0xbd, 0x13):
                    idx = struct.unpack_from('>H', code, i+1)[0]; step = 3
                elif op == 0xc5:
                    idx = struct.unpack_from('>H', code, i+1)[0]; step = 4
                elif op == 0x12:
                    idx = code[i+1]; step = 2
                else:
                    step = jvm.LEN.get(op, 1)
                if idx is not None:
                    n2 = utf.get(cls.get(idx))
                    if n2:
                        self.class_uses.add(n2)
                i += step
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
        # 1b) 类级访问（new/checkcast/const-class…）：被访问的类要 public
        for cn in getattr(c, 'class_uses', ()):
            if cn == c.this or cn not in midx:
                continue
            if _pkg(cn) != pb or pkg_after(cn) == pa:
                continue
            oc = parsed.get(cn + '.class')
            if not oc or struct.unpack_from('>H', oc.b, oc.acc_off)[0] & ACC_PUBLIC:
                continue
            widen_cls.add(cn)
            reasons.append('CLASS %s -> %s [%s]' % (c.this, cn, pkg_after(cn)))
        # 1c) 继承/实现：父类或接口本身要 public
        for cn in ([c.sup] if c.sup else []) + list(c.ifaces):
            if not cn or cn not in midx:
                continue
            if _pkg(cn) != pb or pkg_after(cn) == pa:
                continue
            oc = parsed.get(cn + '.class')
            if not oc or struct.unpack_from('>H', oc.b, oc.acc_off)[0] & ACC_PUBLIC:
                continue
            widen_cls.add(cn)
            reasons.append('SUPER %s -> %s [%s]' % (c.this, cn, pkg_after(cn)))
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
            if c.this in widen_cls:
                a0 = struct.unpack_from('>H', b, c.acc_off)[0]
                if not (a0 & ACC_PUBLIC):
                    struct.pack_into('>H', b, c.acc_off, (a0 & ~(ACC_PRIVATE | ACC_PROTECTED)) | ACC_PUBLIC)
                    touched = True
            for kind, nm, ds in widen_mem.get(c.this, ()):
                m = midx[c.this].get((nm, ds))
                acc = struct.unpack_from('>H', b, m['acc_off'])[0]
                if acc & ACC_PUBLIC:
                    continue
                # 必须清掉 private/protected（三者只能存在一个，否则 dex 校验拒绝）；统一 public
                struct.pack_into('>H', b, m['acc_off'],
                                 (acc & ~(ACC_PRIVATE | ACC_PROTECTED)) | ACC_PUBLIC)
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
    # 自检：public 不能和 private/protected 并存（dex 校验会拒绝：
    # "Field may have only one of public/protected/private"）
    clash = 0
    zc = zipfile.ZipFile(out)
    for n2 in zc.namelist():
        if not n2.endswith('.class'):
            continue
        d2 = zc.read(n2)
        try:
            c2 = _CF(d2)
        except Exception:
            continue
        v = struct.unpack_from('>H', d2, c2.acc_off)[0] & 0x7
        if v in (0x3, 0x5):
            clash += 1
        for m2 in c2.members:
            if (m2['acc'] & 0x7) in (0x3, 0x5):
                clash += 1
    stats['clash'] = clash
    return stats, out


# ---------------------------------------------------------------- cover / manifest

# 「契约名」：这些名字被外部类型/覆写链钉死（JDK 接口、AIDE 框架回调），
# 反混淆时本来就只能是这个名字，也不该被 FART 顺着覆写链改掉 —— 不计入覆盖率分母。
CONTRACT_METHODS = {
    'toString', 'equals', 'hashCode', 'clone', 'finalize', 'compareTo', 'compare',
    'run', 'call', 'close', 'flush', 'main', 'destroy', 'start', 'stop',
    'iterator', 'hasNext', 'next', 'remove', 'size', 'length', 'isEmpty', 'contains',
    'write', 'read', 'get', 'set', 'add', 'put', 'clear', 'keys', 'keySet', 'entrySet',
    'values', 'valueOf', 'ordinal', 'name', 'accept', 'charAt', 'getClass',
    'printStackTrace', 'getMessage', 'getCause', 'getContext',
}


def _is_contract(n, acc):
    """名字被外部钉死 / 合成器 → 不计入覆盖率分母（用户口径：clinit、init、toString 这一类）。"""
    if n in ('<init>', '<clinit>'):
        return True
    if n in CONTRACT_METHODS or n.startswith('access$') or n.startswith('visit'):
        return True
    if acc & (0x1000 | 0x0040):      # ACC_SYNTHETIC | ACC_BRIDGE
        return True
    return False


def cover(project, pkg=None, exclude_contract=True):
    """覆盖率（**探针口径**）：分母 = 探针里有意义、且在 oracle 里能找到同形对应者的成员；
    命中 = 名字判对（有改名行 → 命中映射值；本来就是真名 → 也算命中）。

    排除（用户口径）：`<init>` / `<clinit>` / ACC_SYNTHETIC(access$NNN) / ACC_BRIDGE /
    JDK 与框架契约名（`toString`/`equals`/`hashCode`/`run`/`compareTo`… 见 CONTRACT_METHODS）。
    这些名字被外部类型钉死，既不该改也不该计入分母；把它们算进分母会把覆盖率压成假数字。
    """
    cm = _class_map(project)
    mm = mapping.MemberMap(project.member_map).load()
    m_i, f_i = mm.index()
    idxs = smali.Index(project.smali_index)
    ora = Oracle(project.oracle_jars)
    roots = getattr(project, "probe_roots", None) or [project.probe_dir]
    cmap = cm.dict
    tot_m = hit_m = tot_f = hit_f = 0
    per_class, miss = [], []
    for probe_w, target, _ev in cm.rows:
        probe = cm.full_probe(probe_w)
        if pkg and not probe.startswith(pkg):
            continue
        label, om = ora.find(target)
        if not om:
            continue
        path = idxs.file_for(roots, probe)
        if not path or not os.path.exists(path):
            continue
        pr = smali.parse(path)
        ometh = collections.defaultdict(set)      # (归一描述符, static) -> {oracle 名下候选}
        for n, d, st in om['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            ometh[(norm_desc(d, cmap), bool(st))].add(n)
        ofield = collections.defaultdict(set)
        for n, d, st in om['fields']:
            ofield[(norm_desc(d, cmap), bool(st))].add(n)
        tot = ch = ftot = fch = 0
        for n, d, st, syn in pr['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            # 合成访问器（access$NNN）名字由 R8 生成、oracle 编号不同，不入分母
            if exclude_contract and (syn or _is_contract(n, 0)):
                continue
            cand = ometh.get((norm_desc(d, cmap), bool(st)))
            if not cand:
                continue                          # oracle 里没有同形者 → 不入分母
            tot += 1
            got = m_i.get((probe, n, d))
            if got in cand or (got is None and n in cand):
                ch += 1
            else:
                miss.append((probe, 'method', n, d, got or '', '/'.join(sorted(cand))))
        for n, d, st, _ in pr['fields']:
            if exclude_contract and n.startswith('$') and n not in ('$VALUES',):
                continue
            cand = ofield.get((norm_desc(d, cmap), bool(st)))
            if not cand:
                continue
            ftot += 1
            got = f_i.get((probe, n))
            if got in cand or (got is None and n in cand):
                fch += 1
            else:
                miss.append((probe, 'field', n, d, got or '', '/'.join(sorted(cand))))
        tot_m += tot; hit_m += ch; tot_f += ftot; hit_f += fch
        per_class.append((probe, target, tot, ch, ftot, fch))
    return dict(methods=(hit_m, tot_m), fields=(hit_f, tot_f),
                per_class=per_class, miss=miss)


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
