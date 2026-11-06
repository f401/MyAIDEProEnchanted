#!/usr/bin/env python3
import os as _os, sys as _sys
_PIPE = _os.path.dirname(_os.path.abspath(__file__))
_JG = _os.path.dirname(_PIPE)
_sys.path.insert(0, _PIPE)
_sys.path.insert(0, _JG)
for _sub in ('pipeline', 'naming', 'audit', 'inspect', 'stage', 'deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
_DE = _os.path.join(_os.path.dirname(_JG), 'deob')
if _os.path.isdir(_DE) and _DE not in _sys.path:
    _sys.path.append(_DE)
import paths as _P            # noqa: E402
import params as _PRM         # noqa: E402
import tinyv2 as _T           # noqa: E402
from emit_tiny2 import jar_access  # noqa: E402

"""validate_tiny.py —— Tiny v2 产物的体检（对着基线 jar，不信任任何中间产物）。

检查项：
  1. 头行 = `tiny 2 0 official named`；
  2. 类 official 唯一、named 唯一（两个都违反才是真错：前者是 tiny 的语法要求）；
  3. 类 / 方法 / 字段**必须真存在于** process/base/merged_ok.jar（抓转换时串行/错位）；
  4. 描述符格式；字段描述符类型必须与 jar 一致；
  5. 参数 lv 槽位必须落在 `lv_index(args, k, static)` 的合法集合里、同一方法内不重复、
     参数名是合法 Java 标识符 —— 这条专门防"long/double 宽度算错"；
  6. 注释：不许换行、≤200 字符、必须带证据前缀（`src:`/`role:`/…）、每条映射至多一条；
  7. `--selftest`：用 6 个手算样例把 lv 换算钉死（防止正/反向错误互相抵消）。

用法: python3 tools/jgit/pipeline/validate_tiny.py [--tiny=..] [--selftest]
"""
import re

EVIDENCE = ('src:', 'body:', 'recv:', 'set:', 'tag:', 'shape:', 'who:', 'str:',
            'strict:', 'refs:', 'iface:', 'csp:', 'pkg:', 'iso:', 'role:',
            'contain:', 'hier:', 'kind:', 'name:', 'field:', 'call:', 'new:')
IDENT = re.compile(r'[A-Za-z_$][A-Za-z0-9_$]*')
MAXLEN = 200


def selftest():
    cases = [
        # (参数列表, 实参序号, 是否静态, 期望 lv)
        ((['I'], 0, False), 1),
        ((['I'], 0, True), 0),
        ((['J', 'I'], 1, False), 3),
        ((['J', 'I', 'D', 'Ljava/lang/String;'], 3, False), 6),
        ((['[J', 'J'], 1, True), 1),
        ((['Lx;', 'J', 'J'], 2, True), 3),
    ]
    bad = 0
    for (args, k, st), want in cases:
        got = _T.lv_index(args, k, st)
        if got != want:
            print('✘ selftest %r 序号 %d static=%s → %d（应为 %d）' % (args, k, st, got, want))
            bad += 1
    print('selftest %s（%d 例）' % ('✔' if not bad else '✘ %d 例错' % bad, len(cases)))
    return 1 if bad else 0


def main():
    if '--selftest' in _sys.argv:
        return selftest()
    tiny = _os.path.join(_P.JOB, 'mappings.tiny')
    for a in _sys.argv[1:]:
        if a.startswith('--tiny='):
            tiny = a.split('=', 1)[1]
    ns, classes = _T.read(tiny)
    bad = {}

    def err(kind, msg):
        bad.setdefault(kind, []).append(msg)

    if tuple(ns) != ('official', 'named'):
        err('头行', '命名空间是 %r，应为 official/named' % (ns,))
    acc, ftypes = jar_access(_P.BASE_OK)
    seen_c, seen_n = {}, {}
    nm = nf = npar = ncom = 0
    for c in classes:
        o, n = c['official'], c['named']
        if o in seen_c:
            err('类重复', '%s（%s 与 %s）' % (o, seen_c[o], n))
        seen_c[o] = n
        if n in seen_n:
            err('类目标重复', '%s ← %s 与 %s' % (n, seen_n[n], o))
        seen_n[n] = o
        if o not in acc:
            err('类不存在', o)
            continue
        mems = acc[o]
        if c['comment']:
            ncom += 1
            check_comment(err, '类 %s' % o, c['comment'])
        seen_m = set()
        for m in c['members']:
            key = (m['kind'], m['official'], m['desc'] if m['kind'] == 'm' else None)
            if key in seen_m:
                err('成员重复', '%s.%s%s' % (o, m['official'], m['desc'] if m['kind'] == 'm' else ''))
            seen_m.add(key)
            if m['comment']:
                ncom += 1
                check_comment(err, '%s.%s' % (o, m['official']), m['comment'])
            if m['kind'] == 'f':
                nf += 1
                if (o, m['official']) not in ftypes:
                    err('字段不存在', '%s.%s' % (o, m['official']))
                elif ftypes[(o, m['official'])] != m['desc']:
                    err('字段类型不符', '%s.%s tiny=%s jar=%s'
                        % (o, m['official'], m['desc'], ftypes[(o, m['official'])]))
                if not IDENT.fullmatch(m['named'] or ''):
                    err('字段新名非法', '%s.%s -> %r' % (o, m['official'], m['named']))
                if m['params']:
                    err('字段带参数', '%s.%s' % (o, m['official']))
                continue
            nm += 1
            d = m['desc']
            if not (d.startswith('(') and ')' in d):
                err('方法描述符', '%s.%s %r' % (o, m['official'], d))
                continue
            if ('m', m['official'], d) not in mems:
                err('方法不存在', '%s.%s%s' % (o, m['official'], d))
                continue
            st = bool(acc[o].get(('m', m['official'], d), 0) & 0x8)
            if not IDENT.fullmatch(m['named'] or '') and m['named'] not in ('<init>', '<clinit>'):
                err('方法新名非法', '%s.%s -> %r' % (o, m['official'], m['named']))
            args = _PRM.desc_args(d)
            legal = {_T.lv_index(args, k, st): k for k in range(len(args))}
            seen_lv = set()
            for p in m['params']:
                npar += 1
                if p['lv'] not in legal:
                    err('参数槽位非法', '%s.%s%s lv=%d（合法 %r；static=%s）'
                        % (o, m['official'], d, p['lv'], sorted(legal), st))
                if p['lv'] in seen_lv:
                    err('参数槽位重复', '%s.%s%s lv=%d' % (o, m['official'], d, p['lv']))
                seen_lv.add(p['lv'])
                if not IDENT.fullmatch(p['named'] or ''):
                    err('参数名非法', '%s.%s%s lv=%d -> %r'
                        % (o, m['official'], d, p['lv'], p['named']))
    print('类 %d / 方法 %d / 字段 %d / 参数 %d / 注释 %d' % (len(classes), nm, nf, npar, ncom))
    cov_bad = coverage(classes, bad)
    if cov_bad:
        err('注释覆盖不足', '、'.join(cov_bad))
    if not bad:
        print('✔ tiny 体检通过')
        return 0
    print('✘ 问题 %d 类：' % len(bad))
    for k, v in sorted(bad.items(), key=lambda x: -len(x[1])):
        print('   %-12s %d' % (k, len(v)))
        for msg in v[:5]:
            print('       ', msg)
    return 1


def coverage(classes, bad):
    """`--parts=a,b` 时要求这些 part 的每个类/成员都有注释（注释表的覆盖率门禁）。"""
    want = None
    for a in _sys.argv[1:]:
        if a.startswith('--parts='):
            want = [x for x in a.split('=', 1)[1].split(',') if x]
    if not want:
        return []
    have_c = {c['official'] for c in classes if c['comment']}
    have_m = set()
    for c in classes:
        for m in c['members']:
            if m['comment']:
                have_m.add((c['official'], m['kind'], m['official'],
                            m['desc'] if m['kind'] == 'm' else ''))
    out = []
    for part in want:
        d = dict(_P.PART_DIRS).get(part)
        if not d:
            out.append('%s(无此 part)' % part)
            continue
        pre = _P.PART_PREFIX.get(part, '')
        probes = []
        cm = _os.path.join(d, 'class_map.tsv')
        if _os.path.exists(cm):
            for line in open(cm, encoding='utf-8'):
                if not line.strip() or line.startswith('#'):
                    continue
                f = line.split('\t')
                probes.append(f[0] if '/' in f[0] else pre + '/' + f[0])
        miss_c = [p for p in probes if p not in have_c]
        ms = _os.path.join(d, 'members.tsrg')
        rows = 0
        miss_m = []
        if _os.path.exists(ms):
            cur = None
            for line in open(ms, encoding='utf-8'):
                line = line.rstrip('\n')
                if not line:
                    continue
                if not line.startswith('\t'):
                    cur = line.split(' ')[0]
                    continue
                p = line.lstrip('\t').split(' ')
                if len(p) == 3:
                    rows += 1
                    if (cur, 'm', p[0], p[1]) not in have_m:
                        miss_m.append('%s.%s%s' % (cur, p[0], p[1]))
                elif len(p) == 2:
                    rows += 1
                    if (cur, 'f', p[0], '') not in have_m:
                        miss_m.append('%s.%s' % (cur, p[0]))
        print('   %-10s 类 %d/%d  成员 %d/%d' % (part, len(probes) - len(miss_c), len(probes),
                                                rows - len(miss_m), rows))
        if miss_c:
            bad.setdefault('类缺注释', []).extend([part] + miss_c[:5])
        if miss_m:
            bad.setdefault('成员缺注释', []).extend([part] + miss_m[:5])
    return out


def check_comment(err, where, text):
    if '\n' in text or '\r' in text or '\t' in text:
        err('注释含控制字符', where)
    if len(text) > MAXLEN:
        err('注释过长', '%s（%d 字符）' % (where, len(text)))
    if not any(p in text for p in EVIDENCE):
        err('注释无证据前缀', '%s: %r' % (where, text[:60]))


if __name__ == '__main__':
    _sys.exit(main())
