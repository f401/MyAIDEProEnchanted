#!/usr/bin/env python3
import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
_DE = _os.path.join(_os.path.dirname(_JG), 'deob')     # 通用 kit（tools/deob）
if _os.path.isdir(_DE) and _DE not in _sys.path:
    _sys.path.append(_DE)
import paths as _P  # noqa: E402
import params as _PRM  # noqa: E402
"""validate_mappings.py —— 校验 TSRG2 产物是否与基线 jar 一致（抓“无效映射”）。

检查项（全部对着 process/base/merged_ok.jar，也就是 FART 的输入）：
  1. 类块头 `probe target`：probe 必须在 jar 里存在；
  2. 方法行 `name desc new`：probe 类里必须真有 (name,desc)；
  3. 字段行 `name new`：probe 类里必须真有该字段；
  4. `\\t\\tstatic` 元数据：必须紧跟在**方法**行后，且该方法在 jar 里是 static；
  5. 同一类里 target（新名+描述符）不能重复；类级 target 不能重复；
  6. 新名必须是合法 Java 标识符（方法可为 <init>）。
输出汇总 + 明细，退出码非 0 表示有无效映射。

用法: python3 tools/jgit/validate_mappings.py [mappings.txt] [--base jar]
"""
import sys, re, zipfile, struct, os, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def parse(b):
    n = struct.unpack_from('>H', b, 8)[0]
    o = 10; i = 1
    utf = {}
    while i < n:
        tag = b[o]; o += 1
        if tag == 1:
            ln = struct.unpack_from('>H', b, o)[0]
            utf[i] = b[o+2:o+2+ln].decode('utf-8', 'replace'); o += 2 + ln
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
    this = struct.unpack_from('>H', b, o+2)[0]
    p = o + 6
    ic = struct.unpack_from('>H', b, p)[0]
    p += 2 + 2 * ic
    out = dict(this=utf.get(this), fields={}, methods={})
    for kind in ('f', 'm'):
        cnt = struct.unpack_from('>H', b, p)[0]; p += 2
        for _ in range(cnt):
            acc, nm, ds, ac = struct.unpack_from('>HHHH', b, p); p += 8
            for _ in range(ac):
                ln = struct.unpack_from('>I', b, p+2)[0]; p += 6 + ln
            k = (utf.get(nm), utf.get(ds))
            (out['fields'] if kind == 'f' else out['methods'])[k] = acc
    return out


def main():
    maps = sys.argv[1] if len(sys.argv) > 1 and not sys.argv[1].startswith('--') else _P.MAPPINGS
    import glob as _glob
    bases = sorted(_glob.glob(_P.SRC_DIR + '/*.jar')) + [_P.BASE_OK]
    for k, a in enumerate(sys.argv):
        if a == '--base':
            bases = sys.argv[k+1].split(',')
    info = {}
    for base in bases:
        z = zipfile.ZipFile(base)
        for n in z.namelist():
            if n.endswith('.class'):
                cn = n[:-6]
                if cn in info:
                    continue
                try:
                    info[cn] = parse(z.read(n))
                except Exception:
                    pass
    bad = collections.Counter(); detail = []
    seen_cls = {}; SEEN = set()
    cur = None; cur_ok = False; last_member = None
    ncls = nmem = npar = 0
    PAR = set()
    for ln, line in enumerate(open(maps, encoding='utf-8'), 1):
        line = line.rstrip('\n')
        if not line:
            continue
        if not line.startswith('\t'):
            f = line.rstrip().split(' ')
            if f and f[0] == 'tsrg2':
                continue
            if len(f) < 2:
                bad['类行格式'] += 1; detail.append((ln, 'class-format', line)); continue
            probe, target = f[0], f[1]
            ncls += 1
            cur, cur_ok = probe, probe in info
            last_member = None
            if not cur_ok:
                bad['类不存在'] += 1; detail.append((ln, 'no-class', line))
            if target in seen_cls:
                bad['类目标重复'] += 1; detail.append((ln, 'dup-class-target', '%s 与 %s' % (target, seen_cls[target])))
            seen_cls[target] = probe
            continue
        body = line[1:]
        if body.startswith('\t'):
            head = body.strip().split(' ')
            if head != ['static']:
                # 参数行：`\t\t<实参序号> <obf名> <deobf名>`
                npar += 1
                if last_member is None or last_member[0] != 'm':
                    bad['参数行位置非法'] += 1; detail.append((ln, 'param-pos', line)); continue
                if len(head) != 3 or not head[0].isdigit():
                    bad['参数行格式'] += 1; detail.append((ln, 'param-format', line)); continue
                if head[1] != head[2]:
                    bad['参数行两列不同名'] += 1; detail.append((ln, 'param-columns', line))
                nargs = len(_PRM.desc_args(last_member[1][1]))
                if int(head[0]) >= nargs:
                    bad['参数序号越界'] += 1
                    detail.append((ln, 'param-index', '%s 只有 %d 个参数' % (last_member[1][0], nargs)))
                if (cur, last_member[1], head[0]) in PAR:
                    bad['参数序号重复'] += 1; detail.append((ln, 'param-dup', line))
                PAR.add((cur, last_member[1], head[0]))
                if not re.fullmatch(r'[A-Za-z_$][A-Za-z0-9_$]*', head[2]):
                    bad['参数名非法'] += 1; detail.append((ln, 'param-name', line))
                continue
            # 元数据行：必须紧跟方法行
            if last_member is None or last_member[0] != 'm':
                bad['static 位置非法'] += 1; detail.append((ln, 'static-pos', line))
            elif cur_ok:
                acc = info[cur]['methods'].get(last_member[1])
                if acc is None or not (acc & 0x8):
                    bad['static 标记与 jar 不符'] += 1; detail.append((ln, 'static-mismatch', line))
            continue
        f = body.split(' ')
        nmem += 1
        if len(f) >= 3 and f[1].startswith('('):
            name, desc, new = f[0], f[1], f[2]
            last_member = ('m', (name, desc))
            if cur_ok and (name, desc) not in info[cur]['methods']:
                bad['方法不存在'] += 1; detail.append((ln, 'no-method', '%s %s%s' % (cur, name, desc)))
        else:
            name, new = f[0], f[-1]
            last_member = ('f', (name, None))
            if cur_ok:
                hit = any(k[0] == name for k in info[cur]['fields'])
                if not hit:
                    bad['字段不存在'] += 1; detail.append((ln, 'no-field', '%s %s' % (cur, name)))
        # 同一类里 (新名,描述符) 不能重复（FART 遇重复目标会整体中止/任选其一）
        key = (cur, new, f[1] if len(f) >= 3 and f[1].startswith('(') else '')
        if cur_ok:
            if key in SEEN:
                bad['成员目标重复'] += 1; detail.append((ln, 'dup-member-target', '%s -> %s' % (cur, new)))
            SEEN.add(key)
        if not re.fullmatch(r'[A-Za-z_$][A-Za-z0-9_$]*|<init>|<clinit>', new):
            bad['新名非法'] += 1; detail.append((ln, 'bad-name', line))
        if isinstance(name, str) and name.startswith('<') and new != name:
            # 构造器/<clinit> 改名 → 方法体里的 invokespecial 找不到 → VerifyError
            bad['构造器被改名'] += 1; detail.append((ln, 'special-rename', '%s -> %s' % (name, new)))
    print('类块 %d / 成员行 %d / 参数行 %d / 基类 %d' % (ncls, nmem, npar, len(info)))
    if not bad:
        print('✔ 无无效映射')
        return 0
    print('✘ 无效映射 %d 处:' % sum(bad.values()))
    for k, v in bad.most_common():
        print('   %-22s %d' % (k, v))
    for ln, kind, msg in detail[:40]:
        print('   L%-6d %-14s %s' % (ln, kind, msg))
    return 1


if __name__ == '__main__':
    sys.exit(main())
