#!/usr/bin/env python3
"""params.py —— 方法**参数名**：从 jar 的 LocalVariableTable 读原始名字。

参数名不是猜的：oracle jar 里带 `-g` 编译的 LocalVariableTable，槽位 → 实参序号
（0 起、不含 `this`、long/double 只占一个序号）就是把名字挂到哪个参数上的**证据**。

TSRG2 里参数行（实测 FART 1.0.8 内置 srgutils 的解析器，见 jobs/jgit/README.md）：
    \\t\\t<argIndex> <obf参数名> <deobf参数名>
必须是 3 段（两个名字列都得给，缺一段报 "Invalid TSRG v2 line, too many parts"），
索引是实参序号。输入类没有 LocalVariableTable 时这些行是安全的空操作（不报错）。

用法（库）：
    from params import jar_params, remap_desc, desc_args
    idx = jar_params('oracle.jar')          # {(owner, name, desc): {argIndex: name}}
"""
import os
import struct
import zipfile

_TAGS_FIX = {7: 2, 8: 2, 16: 2, 19: 2, 20: 2, 15: 3,
             3: 4, 4: 4, 9: 4, 10: 4, 11: 4, 12: 4, 17: 4, 18: 4}


def _pool(b):
    """→ (utf8 表, 常量池结束偏移)"""
    n = struct.unpack_from('>H', b, 8)[0]
    o, i, utf = 10, 1, {}
    while i < n:
        tag = b[o]
        o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, o)[0]
            utf[i] = b[o + 2:o + 2 + ln].decode('utf-8', 'replace')
            o += 2 + ln
        elif tag in (5, 6):
            o += 8
            i += 1
        elif tag in _TAGS_FIX:
            o += _TAGS_FIX[tag]
        else:
            raise ValueError('bad constant tag %d' % tag)
        i += 1
    return utf, o


def _skip_attrs(b, p, cnt):
    """跳过 cnt 个属性，返回新偏移。"""
    for _ in range(cnt):
        ln = struct.unpack_from('>I', b, p + 2)[0]
        p += 6 + ln
    return p


def _code_lvt(b, p, utf):
    """p 指向 Code 属性体；返回 LocalVariableTable 的 [(slot, name, desc)]。"""
    code_len = struct.unpack_from('>I', b, p + 4)[0]
    q = p + 8 + code_len
    etl = struct.unpack_from('>H', b, q)[0]
    q += 2 + 8 * etl
    ac = struct.unpack_from('>H', b, q)[0]
    q += 2
    out = []
    for _ in range(ac):
        an = utf.get(struct.unpack_from('>H', b, q)[0])
        al = struct.unpack_from('>I', b, q + 2)[0]
        body = q + 6
        if an == 'LocalVariableTable':
            cnt = struct.unpack_from('>H', b, body)[0]
            for k in range(cnt):
                sp, ln, ni, di, slot = struct.unpack_from('>HHHHH', b, body + 2 + 10 * k)
                out.append((sp, ln, slot, utf.get(ni), utf.get(di)))
        q = body + al
    return out


def desc_args(desc):
    """'(IJLjava/lang/String;)V' → ['I', 'J', 'Ljava/lang/String;']"""
    if not desc or not desc.startswith('('):
        return []
    out, i = [], 1
    while i < len(desc) and desc[i] != ')':
        j = i
        while desc[j] == '[':
            j += 1
        if desc[j] == 'L':
            j = desc.index(';', j) + 1
        else:
            j += 1
        out.append(desc[i:j])
        i = j
    return out


def arg_slots(desc, is_static):
    """→ [(argIndex, slot)]；long/double 占两个槽。"""
    slot = 0 if is_static else 1
    out = []
    for i, t in enumerate(desc_args(desc)):
        out.append((i, slot))
        slot += 2 if t in ('J', 'D') else 1
    return out


def class_params(b):
    """class 字节 → {('名字','描述符'): {argIndex: 参数名}}（无参方法给空 dict）。"""
    utf, o = _pool(b)
    p = o + 6                                   # access / this / super
    ic = struct.unpack_from('>H', b, p)[0]
    p += 2 + 2 * ic
    fc = struct.unpack_from('>H', b, p)[0]      # fields
    p += 2
    for _ in range(fc):
        ac = struct.unpack_from('>H', b, p + 6)[0]
        p = _skip_attrs(b, p + 8, ac)
    mc = struct.unpack_from('>H', b, p)[0]
    p += 2
    out = {}
    for _ in range(mc):
        acc, ni, di, ac = struct.unpack_from('>HHHH', b, p)
        p += 8
        name, desc = utf.get(ni), utf.get(di)
        params = {}
        for _a in range(ac):
            an = utf.get(struct.unpack_from('>H', b, p)[0])
            al = struct.unpack_from('>I', b, p + 2)[0]
            if an == 'Code':
                slots = {slot: ai for ai, slot in arg_slots(desc, bool(acc & 0x8))}
                for sp, ln, slot, nm, ds in _code_lvt(b, p + 6, utf):
                    if sp != 0 or not nm or slot not in slots:
                        continue
                    if nm == 'this':
                        continue
                    params[slots[slot]] = nm
            p += 6 + al
        out[(name, desc)] = params
    return out


def jar_params(path):
    """jar → {(owner, name, desc): {argIndex: name}}（owner 用 `/` 分隔）。"""
    out = {}
    with zipfile.ZipFile(path) as z:
        for n in z.namelist():
            if not n.endswith('.class'):
                continue
            try:
                got = class_params(z.read(n))
            except Exception:
                continue
            owner = n[:-6]
            for (mn, ds), prm in got.items():
                out[(owner, mn, ds)] = prm
    return out


def remap_desc(desc, cmap):
    """把描述符里的 `L<混淆名>;` 换成类映射里的真名。"""
    if not desc or not cmap:
        return desc
    out, i = [], 0
    while i < len(desc):
        if desc[i] == 'L':
            j = desc.find(';', i)
            if j < 0:
                out.append(desc[i:])
                break
            nm = desc[i + 1:j]
            out.append('L' + cmap.get(nm, nm) + ';')
            i = j + 1
        else:
            out.append(desc[i])
            i += 1
    return ''.join(out)


# ---------------------------------------------------------------- 真相文件

COLS = ('owner', 'name', 'desc', 'index', 'param', 'src')


def load_tsv(path):
    """→ {(owner, name, desc): [(index, param, src)]}"""
    out = {}
    with open(path, encoding='utf-8') as f:
        for line in f:
            line = line.rstrip('\n')
            if not line or line.startswith('#'):
                continue
            p = line.split('\t')
            if len(p) < 5:
                continue
            key = (p[0], p[1], p[2])
            out.setdefault(key, []).append((int(p[3]), p[4], p[5] if len(p) > 5 else ''))
    for v in out.values():
        v.sort()
    return out


def save_tsv(path, rows):
    """rows: [(owner, name, desc, index, param, src)]，按 (owner,name,desc,index) 排序。"""
    rows = sorted(set(rows), key=lambda r: (r[0], r[1], r[2], r[3]))
    with open(path, 'w', encoding='utf-8') as f:
        f.write('# 参数名：从 oracle jar 的 LocalVariableTable 取（index 是实参序号，0 起、不含 this）\n')
        f.write('# owner\tname\tdesc\tindex\tparam\tsrc\n')
        for r in rows:
            f.write('\t'.join(str(x) for x in r) + '\n')
    return len(rows)


def main(argv):
    import sys
    if len(argv) < 2:
        print('用法: params.py <jar> [类名过滤]')
        return 2
    idx = jar_params(argv[1])
    print('类方法条目 %d 条带参数名' % len(idx))
    flt = argv[2] if len(argv) > 2 else None
    n = 0
    for (o, m, d), prm in idx.items():
        if (flt and flt not in o) or not prm:
            continue
        print('%-60s %-20s %-30s %s' % (o, m, d, ', '.join('%d:%s' % kv for kv in sorted(prm.items()))))
        n += 1
        if n >= 40:
            break
    return 0


if __name__ == '__main__':
    raise SystemExit(main(__import__('sys').argv))


# ---------------------------------------------------------------- 批量填充

def _label(path):
    """changelog 式的来源标签：文件名去常见前缀（只用于溯源，不参与匹配）。"""
    b = os.path.basename(path)
    b = b[:-4] if b.endswith('.jar') else b
    for pre in ('j-', 'org.eclipse.jgit-', 'org.eclipse.'):
        if b.startswith(pre):
            b = b[len(pre):]
    return b


def build_index(oracle_paths):
    """oracle jar 列表 → ({(owner,name,desc): (参数表, 来源标签)}, {标签: 方法数})。

    同名三元组先到先得：列表顺序就是优先级（把最贴近的版本放最前）。
    """
    idx, labels = {}, {}
    for path in oracle_paths:
        if not path or not os.path.exists(path):
            continue
        label = _label(path)
        try:
            got = jar_params(path)
        except Exception as e:                     # 坏的/占位 jar 跳过，别炸整条链路
            labels[label] = -1
            continue
        labels[label] = len(got)
        for k, v in got.items():
            idx.setdefault(k, (v, label))
    return idx, labels


def fill(class_map, member_map, prefix='abcd', oracle_paths=(), out_path=None,
         src_root=None, write=False, log=print):
    """把 oracle LVT / 源码声明里的参数名挂到成员映射上，可选落盘 out_path。

    class_map / member_map 是路径（真相文件）；oracle_paths 顺序即优先级；
    src_root 给了才会走“抽象/接口方法 → 源码声明”的兜底。
    返回统计 dict。
    """
    import javasrc
    from mapping import ClassMap, MemberMap
    cdict = ClassMap(class_map, prefix).load().dict
    mm = MemberMap(member_map).load()
    idx, labels = build_index(oracle_paths)
    log('oracle 索引（方法条目数）：%s' % (', '.join('%s=%d' % kv for kv in labels.items()) or '（无）'))
    owners = {k[0] for k in idx}

    rows = []
    st = {'methods': 0, 'hit': 0, 'noarg': 0, 'full': 0, 'src_full': 0, 'part': 0,
          'no_class': 0, 'no_name': 0, 'no_desc': 0}
    miss = {}
    for probe, kind, name, desc, new in mm.iter_members():
        if kind != 'm' or new == name:
            continue
        st['methods'] += 1
        owner = cdict.get(probe)
        if not owner:
            st['no_class'] += 1
            miss.setdefault('无类映射', (probe, name, desc, new))
            continue
        ddesc = remap_desc(desc, cdict)
        hit = idx.get((owner, new, ddesc))
        if hit is None:
            if owner not in owners:
                st['no_class'] += 1
                why = 'oracle 无此类'
            elif any(k[0] == owner and k[1] == new for k in idx):
                st['no_desc'] += 1
                why = '描述符不同'
            else:
                st['no_name'] += 1
                why = 'oracle 无此方法名'
            miss.setdefault(why, (probe, name, desc, new))
            continue
        prm, label = hit
        nargs = len(desc_args(ddesc))
        st['hit'] += 1
        got = dict(prm)
        src = False
        if nargs == 0:
            st['noarg'] += 1
        elif len(got) < nargs:
            cand = javasrc.lookup(src_root, owner, new, ddesc) if src_root else None
            if cand and all(got.get(i, cand[i]) == cand[i] for i in sorted(got)):
                for i, nm in enumerate(cand):
                    got.setdefault(i, nm)
                src = True
            if len(got) == nargs:
                st['src_full'] += 1
            else:
                st['part'] += 1
        else:
            st['full'] += 1
        for i in range(nargs):
            if i in got:
                rows.append((probe, name, desc, i, got[i], label + ('+src' if src else '')))

    log('方法映射 %(methods)d 条：命中 %(hit)d（无参 %(noarg)d / jar 参数全 %(full)d / '
        '源码补全 %(src_full)d / 仍缺 %(part)d），未命中：无类映射 %(no_class)d / '
        '方法名不同 %(no_name)d / 描述符不同 %(no_desc)d' % st)
    for why, ex in miss.items():
        log('   例（%s）：%s %s%s → %s' % (why, ex[0], ex[1], ex[2], ex[3]))
    log('参数行 %d 条（%d 个方法）' % (len(rows), len({(r[0], r[1], r[2]) for r in rows})))
    st['rows'] = len(rows)
    st['methods_with_params'] = len({(r[0], r[1], r[2]) for r in rows})
    if write and out_path:
        st['written'] = save_tsv(out_path, rows)
        log('写出 %s：%d 行' % (out_path, st['written']))
    return st
