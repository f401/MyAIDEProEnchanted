#!/usr/bin/env python3
"""view.py —— 人工定名时的"读码"命令（q / prof / dump / hdr / elim / iface）。"""
import collections
import os
import re

import jvm
import mapping
import smali

INV = re.compile(r'invoke-[a-z/-]+ \{[^}]*\}, (\[?[L\[]?[A-Za-z0-9_/$]*;?|[A-Za-z0-9_/$]+)->([A-Za-z0-9_$<>]+)(\([^)]*\).*)')
FR = re.compile(r'[is]get(?:-object|-wide|-boolean|-byte|-char|-short)?[^,]*, [^,]+, L([A-Za-z0-9_/$]+);->([A-Za-z0-9_$]+):')
FW = re.compile(r'[is]put(?:-object|-wide|-boolean|-byte|-char|-short)?[^,]*, [^,]+, L([A-Za-z0-9_/$]+);->([A-Za-z0-9_$]+):')


def _ctx(project):
    cm = mapping.ClassMap(project.class_map, project.probe_prefix).load()
    mm = mapping.MemberMap(project.member_map).load()
    idx = smali.Index(project.smali_index)
    return cm, mm, idx


def _path(project, idx, name):
    probe = name if '/' in name else project.probe_prefix + '/' + name
    return probe, idx.file_for(project.probe_dir, probe)


def q(project, names):
    cm, mm, idx = _ctx(project)
    pmap = cm.dict
    m_i, f_i = mm.index()
    for name in names:
        probe, path = _path(project, idx, name)
        if not os.path.exists(path):
            print('!! 找不到', probe); continue
        pr = smali.parse(path)
        print('==== %s -> %s' % (probe, pmap.get(probe, '?')))
        for n, d, s, sy in pr['methods']:
            if n in ('<init>', '<clinit>'):
                continue
            print('  m %-9s %-52s %-7s -> %s' % (n, d[:52], 'static' if s else '', m_i.get((probe, n, d), '?')))
        for n, d, s, sy in pr['fields']:
            print('  f %-9s %-42s %-7s -> %s' % (n, d[:42], 'static' if s else '', f_i.get((probe, n), '?')))


def prof(project, names):
    cm, mm, idx = _ctx(project)
    for name in names:
        probe, path = _path(project, idx, name)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        print('==== %s -> %s   super=%s ifaces=%s' % (probe, cm.dict.get(probe, '?'), pr['super'], pr['ifaces']))
        for (n, d), body in pr['body'].items():
            if n in ('<init>', '<clinit>') or (probe, n, d) in mm.index()[0]:
                continue
            inv = collections.Counter(b for a, b, c in INV.findall(body))
            fr = [x for x in FR.findall(body) if x[0] == probe]
            fw = [x for x in FW.findall(body) if x[0] == probe]
            print('  %-8s %-44s inv=%s get=%s put=%s' % (
                n, d[:44], dict(inv.most_common(4)),
                [x[1] for x in fr][:4], [x[1] for x in fw][:4]))


def dump(project, name, pats=()):
    cm, mm, idx = _ctx(project)
    probe, path = _path(project, idx, name)
    pr = smali.parse(path)
    for (n, d), body in pr['body'].items():
        sig = n + d
        if pats and not any(re.search(p, sig) for p in pats):
            continue
        print('---- %s%s' % (n, d))
        for ln in smali.body_lines(body):
            print('   ', ln)


def hdr(project, names):
    cm, _, idx = _ctx(project)
    for name in names:
        probe, path = _path(project, idx, name)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        print('==== %s  [%s]  -> %s' % (probe, ' '.join(pr['class_access']), cm.dict.get(probe, '?')))
        print('   super=%s ifaces=%s' % (pr['super'], ','.join(pr['ifaces'])))
        print('   fields:', ', '.join('%s:%s' % (n, d[:26]) for n, d, s, y in pr['fields'][:14]))
        print('   nmeth=%d' % len(pr['methods']))


def elim(project, names, maxver=2):
    """按描述符做排除法：给出 oracle 里同名描述符的候选（剔除本类已用名）。"""
    from oracle import Oracle
    cm, mm, idx = _ctx(project)
    ora = Oracle(project.oracle_jars)
    m_i, f_i = mm.index()
    for name in names:
        probe, path = _path(project, idx, name)
        target = cm.dict.get(probe)
        if not target:
            print('== %s 未映射类' % probe); continue
        pr = smali.parse(path)
        used = {v for (p, n, d), v in m_i.items() if p == probe}
        orc = {}
        for label in ora.labels:
            m = ora.members(label, target)
            if m:
                for n, d, s in m['methods']:
                    orc.setdefault(d, set()).add(n)
        print('== %s -> %s' % (probe, target))
        for n, d, s, sy in pr['methods']:
            if n in ('<init>', '<clinit>') or (probe, n, d) in m_i:
                continue
            cand = sorted(orc.get(d, set()) - used)
            print('   %-9s %-46s cand=%s' % (n, d[:46], cand or '—'))


def iface(project, names):
    """从真实父类/接口按描述符反推方法名（探针的 super/ifaces 必须是真名，如 JDK/apache 类型）。"""
    cm, mm, idx = _ctx(project)
    real = jvm_index(project)
    for name in names:
        probe, path = _path(project, idx, name)
        pr = smali.parse(path)
        known = collections.defaultdict(list)
        for sup in ([pr['super']] if pr['super'] else []) + list(pr['ifaces']):
            if not sup or sup.startswith('Labcd/'):
                continue
            for k, v in real.get(sup.strip('L;'), {}).items():
                known[k].extend(v)
        print('== %s -> %s' % (probe, cm.dict.get(probe, '?')))
        for n, d, s, sy in pr['methods']:
            if n in ('<init>', '<clinit>') or (probe, n, d) in mm.index()[0]:
                continue
            print('   %-9s %-46s -> %s' % (n, d[:46], sorted(set(known.get(d, []))) or '—'))


def jvm_index(project):
    """真实类型（非探针）的 描述符→方法名 索引，来自 base/input jar。"""
    import zipfile
    out = collections.defaultdict(lambda: collections.defaultdict(list))
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
            for m in c['members']:
                if m['kind'] == 'm' and m['name'] not in ('<init>', '<clinit>'):
                    out[c['this']][m['desc']].append(m['name'])
    return out


def shape(project, names):
    import shape as SH
    from oracle import Oracle
    cm, _, idx = _ctx(project)
    ora = Oracle(project.oracle_jars)
    ix = SH.build_index(ora, cm.dict)
    for name in names:
        probe, path = _path(project, idx, name)
        if not os.path.exists(path):
            continue
        pr = smali.parse(path)
        hits = SH.find(ix, [(n, d, s) for n, d, s, _ in pr['methods']],
                       [(n, d, s) for n, d, s, _ in pr['fields']], cm.dict)
        print('== %s -> %s  方法%d 字段%d' % (probe, cm.dict.get(probe, '?'),
                                              len(pr['methods']), len(pr['fields'])))
        if not hits:
            print('   — 无形状匹配')
        for label, cls in hits:
            print('   ★ %-58s %s' % (cls, label))
