#!/usr/bin/env python3
"""dex_meta_inventory.py <dex...> [类前缀] —— 盘点 dex 里还剩哪些**可用元数据**

对每个候选信号统计"有多少类/成员带这个属性"，并抽样看值是否像真的。
用来判断"还能从 dex 挖什么"，结论沉淀在 docs/JGIT-METADATA.md。

统计项：
  source_file    原始文件名（SourceFile）—— 最直接的类名线索
  debug_info     调试信息（参数名/局部变量名）
  sync_decl      ACC_DECLARED_SYNCHRONIZED（dex 独有；dex2jar 会丢）
  varargs        ACC_VARARGS
  method_anns / field_anns / param_anns  各自出现的注解类型
  static_values  静态字段初值
  member_classes Ldalvik/annotation/MemberClasses; 的规模与可信度
"""
import sys, struct, collections
from dexlib import Dex

ACC_SYNTH = 0x1000
ACC_DECL_SYNC = 0x20000
ACC_VARARGS = 0x80

if len(sys.argv) < 2:
    print(__doc__)
    sys.exit(2)
prefix = sys.argv[-1] if not sys.argv[-1].endswith('.dex') else 'Labcd/'
dexs = [p for p in sys.argv[1:] if p.endswith('.dex')]

st = collections.Counter()
m_ann = collections.Counter()
f_ann = collections.Counter()
p_ann = collections.Counter()
samples = collections.defaultdict(list)
member_lists = []

for path in dexs:
    d = Dex(open(path, 'rb').read())
    for cd in d.class_defs():
        cn = d.type(cd['class_idx'])
        if not cn.startswith(prefix):
            continue
        st['classes'] += 1
        if cd['source_file_idx'] != 0xffffffff:
            st['source_file'] += 1
            if len(samples['source_file']) < 5:
                samples['source_file'].append((cn, d.string(cd['source_file_idx'])))
        if cd['static_values_off']:
            st['static_values'] += 1
        cdata = d.class_data(cd['class_data_off'])
        if cdata:
            for midx, acc, code in cdata['dmethods'] + cdata['vmethods']:
                st['methods'] += 1
                if acc & ACC_DECL_SYNC:
                    st['sync_decl'] += 1
                    if len(samples['sync_decl']) < 5:
                        samples['sync_decl'].append(d.method_ref(midx))
                if acc & ACC_VARARGS:
                    st['varargs'] += 1
                ci = d.code_item(code)
                if ci and ci['debug_off']:
                    st['debug_info'] += 1
        cls_ann, fa, ma, pa = d.annotations_directory(cd['annotations_off'])
        for idx, aoff in ma.items():
            try:
                for t, _ in d.parse_annotation_set(aoff):
                    m_ann[t] += 1
            except Exception:
                m_ann['<parse-fail>'] += 1
        for idx, aoff in fa.items():
            try:
                for t, _ in d.parse_annotation_set(aoff):
                    f_ann[t] += 1
            except Exception:
                f_ann['<parse-fail>'] += 1
        for idx, aoff in pa.items():
            try:
                for t, _ in d.parse_annotation_set(aoff):
                    p_ann[t] += 1
            except Exception:
                p_ann['<parse-fail>'] += 1
        # MemberClasses
        if cls_ann:
            try:
                for t, elems in d.parse_annotation_set(cls_ann):
                    if t == 'Ldalvik/annotation/MemberClasses;':
                        for k, v in elems:
                            if isinstance(v, list):
                                st['member_classes'] += 1
                                member_lists.append((cn, len(v), v[:6]))
            except Exception:
                pass

print('前缀 %r，dex %d 个' % (prefix, len(dexs)))
for k in ['classes', 'methods', 'source_file', 'debug_info', 'sync_decl', 'varargs',
          'static_values', 'member_classes']:
    print('  %-16s %d' % (k, st[k]))

print('\n方法注解类型 top10:')
for t, n in m_ann.most_common(10):
    print('   %6d  %s' % (n, t))
print('字段注解类型 top10:')
for t, n in f_ann.most_common(10):
    print('   %6d  %s' % (n, t))
print('参数注解类型:')
for t, n in p_ann.most_common(6):
    print('   %6d  %s' % (n, t))

for k in ('source_file', 'sync_decl'):
    print('\n%s 抽样:' % k)
    for s in samples[k]:
        print('   ', s)
print('\nMemberClasses 抽样（类, 成员数, 前几个）:')
for cn, n, v in member_lists[:6]:
    print('   %-24s %2d  %s' % (cn, n, v))
