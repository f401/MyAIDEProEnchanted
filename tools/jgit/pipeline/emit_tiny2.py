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
from dupcheck import parse_class  # noqa: E402

"""emit_tiny2.py —— 由汇总 TSRG2（process/mappings.txt）+ 各 part 的 comments.tsv 生成 Tiny v2。

**双产物**路线：TSRG2 仍是打包输入（FART 只喂它，零风险），tiny 是给人/其他工具读的
派生品——它唯一的增量能力是**成员级注释**（`c` 行），TSRG2/ProGuard 都表达不了。

输入（都是派生/只读，不写回真源）：
    process/mappings.txt            已汇总的 TSRG2（由 emit_tsrg2.py 生成）
    process/base/merged_ok.jar      static 标志的唯一来源（TSRG2 里的 `\\t\\tstatic` 只标在
                                    **改过名**的方法上，283 条恒等映射的方法没有标记）
    jobs/<part>/comments.tsv        可选：`kind owner name desc text`
                                    kind = c(类) / m(方法) / f(字段)；类行的 name/desc 写 `-`
                                    owner/desc 用**探针空间**（和 members.tsrg 一致）

两个不兼容点：
    列序      name desc new → desc name new
    参数索引  默认**原样**写实参序号（0 起）—— 实测 FART 1.0.8 就是这么读的
              （`--param-index=lv` 才换成 LVT 槽位：实例 +1、long/double 占 2 槽，
                那是 Tiny v2 的书面约定，loom/tiny-remapper 用）

用法: python3 tools/jgit/pipeline/emit_tiny2.py [out.tiny] [--tsrg=<mappings.txt>]
"""
import zipfile

NS = ('official', 'named')


def jar_access(path):
    """jar → ({类: {('m',名字,描述符)|('f',名字,None): access}}, {(类,字段名): 类型描述符})。"""
    acc, ftypes = {}, {}
    z = zipfile.ZipFile(path)
    for n in z.namelist():
        if not n.endswith('.class'):
            continue
        try:
            c = parse_class(z.read(n))
        except Exception:
            continue
        if not c or not c['this']:
            continue
        d = {('m', nm, ds): a for nm, ds, a in c['methods']}
        d.update({('f', nm, None): a for nm, ds, a in c['fields']})
        acc[c['this']] = d
        for nm, ds, _a in c['fields']:
            ftypes[(c['this'], nm)] = ds
    return acc, ftypes


def is_static(acc, owner, name, desc):
    return bool(acc.get(owner, {}).get(('m', name, desc), 0) & 0x8)


def parse_tsrg(path):
    """→ [类]；类 = {official, named, members:[...]}，成员结构与 tinyv2 里的同名同义。"""
    classes, cur, last = [], None, None
    for ln, line in enumerate(open(path, encoding='utf-8'), 1):
        line = line.rstrip('\n')
        if not line or line.startswith('tsrg2'):
            continue
        if not line.startswith('\t'):
            f = line.split(' ')
            if len(f) < 2:
                raise SystemExit('%s:%d 类行格式错：%r' % (path, ln, line))
            cur = {'official': f[0], 'named': f[1], 'comment': '', 'members': []}
            classes.append(cur)
            last = None
            continue
        if cur is None:
            raise SystemExit('%s:%d 成员行在类行之前' % (path, ln))
        body = line[1:]
        if body.startswith('\t'):
            p = body.strip().split(' ')
            if p == ['static']:
                if last is None or last['kind'] != 'm':
                    raise SystemExit('%s:%d static 不在方法行后' % (path, ln))
                last['static'] = True
                continue
            if len(p) != 3 or not p[0].isdigit():
                raise SystemExit('%s:%d 参数行格式错：%r' % (path, ln, line))
            if last is None or last['kind'] != 'm':
                raise SystemExit('%s:%d 参数行不在方法行后' % (path, ln))
            last['params'].append({'argidx': int(p[0]), 'official': p[1], 'named': p[2],
                                   'comment': ''})
            continue
        p = body.split(' ')
        if len(p) == 2:
            last = {'kind': 'f', 'desc': p[0], 'official': p[0], 'named': p[1],
                    'comment': '', 'params': []}
            # 字段行是 `名字 新名`（描述符由 jar 补，见 fill_field_desc）
            last['field'] = p[0]
        elif len(p) == 3:
            last = {'kind': 'm', 'desc': p[1], 'official': p[0], 'named': p[2],
                    'comment': '', 'static': False, 'params': []}
        else:
            raise SystemExit('%s:%d 成员行格式错：%r' % (path, ln, line))
        cur['members'].append(last)
    return classes


def fill_field_desc(classes, ftypes, warn):
    """TSRG2 字段行不带类型 → 从 jar 取（tiny 的 f 行必须有类型）。"""
    bad = 0
    for c in classes:
        for m in c['members']:
            if m['kind'] != 'f':
                continue
            t = ftypes.get((c['official'], m['field']))
            if not t:
                warn.append('%s.%s 字段在基线 jar 里不存在' % (c['official'], m['field']))
                bad += 1
            m['desc'] = t or 'V'
    return bad


def load_comments(files, warn):
    out = {}
    for f in files:
        if not f or not _os.path.exists(f):
            continue
        for ln, line in enumerate(open(f, encoding='utf-8'), 1):
            line = line.rstrip('\n')
            if not line.strip() or line.startswith('#'):
                continue
            p = line.split('\t')
            if len(p) != 5:
                raise SystemExit('%s:%d 需要 5 列（kind owner name desc text，注释里不许有 tab）：%r'
                                 % (f, ln, line))
            kind, owner, name, desc, text = p
            if kind not in ('c', 'm', 'f'):
                raise SystemExit('%s:%d kind 只能是 c/m/f：%r' % (f, ln, kind))
            if not text.strip():
                raise SystemExit('%s:%d 注释为空' % (f, ln))
            if kind == 'c':
                name = desc = ''
            elif kind == 'f':
                desc = ''          # 字段行没有描述符列，第 4 列只是占位
            key = (kind, owner, name, desc)
            if key in out:
                warn.append('%s:%d 注释重复（已有一条）：%s' % (f, ln, owner))
                continue
            out[key] = text
    return out


def apply_comments(classes, comments, warn):
    used, n = set(), 0
    for c in classes:
        k = ('c', c['official'], '', '')
        if k in comments:
            c['comment'] = comments[k]
            used.add(k)
            n += 1
        for m in c['members']:
            if m['kind'] == 'm':
                k = ('m', c['official'], m['official'], m['desc'])
            else:
                k = ('f', c['official'], m['official'], '')
            if k in comments:
                m['comment'] = comments[k]
                used.add(k)
                n += 1
    for k in comments:
        if k not in used:
            warn.append('注释无对应映射：%s %s.%s%s' % (k[0], k[1], k[2], k[3]))
    return n


def main():
    argv = [a for a in _sys.argv[1:]]
    tsrg = _P.MAPPINGS
    pmode = 'arg'
    rest = []
    for a in argv:
        if a.startswith('--tsrg='):
            tsrg = a.split('=', 1)[1]
        elif a.startswith('--param-index='):
            pmode = a.split('=', 1)[1]
        else:
            rest.append(a)
    if pmode not in ('arg', 'lv'):
        raise SystemExit('--param-index 只能是 arg（FART 约定，默认）或 lv（Tiny 书面约定）')
    dst = rest[0] if rest else _os.path.join(_P.JOB, 'mappings.tiny')

    acc, ftypes = jar_access(_P.BASE_OK)
    classes = parse_tsrg(tsrg)
    warn = []
    bad = fill_field_desc(classes, ftypes, warn)

    cfiles = [_os.path.join(d, 'comments.tsv') for _, d in _P.PART_DIRS]
    comments = load_comments(cfiles, warn)
    ncom = apply_comments(classes, comments, warn)

    # TSRG2 的 `\t\tstatic` 只标在改过名的方法上（历史怪癖）：static 一律以 jar 为准
    nm = nf = npar = 0
    for c in classes:
        for m in c['members']:
            if m['kind'] == 'm':
                nm += 1
                if not m.get('static') and is_static(acc, c['official'], m['official'], m['desc']):
                    m['static'] = True
                args = _PRM.desc_args(m['desc'])
                for p in m['params']:
                    if p['argidx'] >= len(args):
                        raise SystemExit('%s.%s%s 参数序号 %d 越界（只有 %d 个参数）'
                                         % (c['official'], m['official'], m['desc'],
                                            p['argidx'], len(args)))
                    p['index'] = (_T.lv_index(args, p['argidx'], m.get('static'))
                                  if pmode == 'lv' else p['argidx'])
                    npar += 1
            else:
                nf += 1

    nline = _T.write(dst, NS, classes)
    print('写出 %s：类 %d / 方法 %d / 字段 %d / 参数 %d / 注释 %d 行（%d 行 tiny）'
          % (dst, len(classes), nm, nf, npar, ncom, nline))
    if bad:
        print('✘ 字段描述符缺失 %d 条（不写进 tiny）：' % bad)
        for w in warn[:20]:
            print('   ', w)
        return 1
    if warn:
        print('WARN %d 条：' % len(warn))
        for w in warn[:20]:
            print('   ', w)
    return 0


if __name__ == '__main__':
    _sys.exit(main())
