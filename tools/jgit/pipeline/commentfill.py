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
import config as _CFG         # noqa: E402
from dupcheck import parse_class  # noqa: E402
from emit_tiny2 import jar_access  # noqa: E402

"""commentfill.py —— 给 `jobs/<part>/comments.tsv` **批量补注释**（类 + 方法 + 字段）。

注释要回答"这东西干什么"，同时必须可复现。这里能机械给出的只有两段，都写进同一行：

    auto: <名字模式推出的中文作用>；src: <oracle label> <上游 fqcn>[#方法]

  * `src:` 是**真证据**：该 (类, 名字, 描述符) 在上游 jar 里确实存在（描述符按 class_map
    换名后再比），说明这个名字不是编的；
  * `auto:` 是**机械推断**：从标识符模式（get/set/is/on…、*Listener/*Exception…）推中文
    作用词，不做语义猜测。人工复核过的注释请自己改成 `role:`/`src:` 正文（本工具不覆盖
    已有行）。

用法:
  python3 tools/jgit/pipeline/commentfill.py --part=antlr            # 只看统计
  python3 tools/jgit/pipeline/commentfill.py --part=antlr --apply    # 追加到 comments.tsv
  python3 tools/jgit/pipeline/commentfill.py --all --apply
"""
import os
import re
import zipfile

KIND_WORD = [('Exception', '异常类型'), ('Error', '错误类型'), ('Listener', '回调接口'),
             ('Adapter', '适配器'), ('Implementation', '实现类'), ('Impl', '实现类'),
             ('Builder', '建造器'), ('Factory', '工厂'), ('Manager', '管理器'),
             ('Service', '服务'), ('Provider', '提供者'), ('Visitor', '访问者'),
             ('Iterator', '迭代器'), ('Comparator', '比较器'), ('Iterable', '可迭代接口'),
             ('Configuration', '配置'), ('Config', '配置'), ('Utils', '工具类'),
             ('Util', '工具类'), ('Cache', '缓存'), ('Table', '表'), ('Task', '任务'),
             ('Runnable', '任务'), ('Action', '动作'), ('Command', '命令'),
             ('Runtime', '运行时'), ('Definition', '定义'), ('Hook', '钩子'),
             ('Handler', '处理器'), ('Filter', '过滤器'), ('Model', '模型'),
             ('Node', '节点'), ('Entry', '条目'), ('Parser', '解析器'),
             ('Reader', '读取器'), ('Writer', '写出器'), ('Stream', '流'),
             ('Context', '上下文'), ('Result', '结果'), ('Request', '请求'),
             ('Response', '响应'), ('Store', '存储'), ('Repository', '仓库'),
             ('Session', '会话'), ('Builder2', ''), ('Holder', '持有者'),
             ('Callback', '回调'), ('Helper', '辅助类'), ('Resolver', '解析器'),
             ('Walker', '遍历器'), ('Generator', '生成器'), ('Collector', '收集器')]

VERB_WORD = [('is', '是否'), ('has', '是否有'), ('can', '能否'), ('should', '是否应'),
             ('get', '取'), ('set', '设'), ('add', '加入'), ('put', '放入'),
             ('push', '压入'), ('pop', '弹出'), ('peek', '查看栈顶'),
             ('remove', '移除'), ('delete', '删除'), ('clear', '清空'),
             ('create', '创建'), ('build', '构建'), ('make', '生成'),
             ('open', '打开'), ('close', '关闭'), ('start', '启动'), ('stop', '停止'),
             ('read', '读取'), ('write', '写出'), ('parse', '解析'),
             ('format', '格式化'), ('find', '查找'), ('lookup', '查表'),
             ('search', '搜索'), ('load', '加载'), ('save', '保存'),
             ('update', '更新'), ('init', '初始化'), ('register', '注册'),
             ('notify', '通知'), ('visit', '访问'), ('check', '检查'),
             ('validate', '校验'), ('compute', '计算'), ('apply', '应用'),
             ('execute', '执行'), ('run', '运行'), ('call', '调用'),
             ('handle', '处理'), ('to', '转换为'), ('copy', '复制'),
             ('reset', '重置'), ('flush', '冲刷'), ('encode', '编码'),
             ('decode', '解码'), ('compress', '压缩'), ('decompress', '解压'),
             ('compare', '比较'), ('equals', '相等判定'), ('hashCode', '哈希值'),
             ('toString', '转字符串'), ('next', '取下一个'), ('accept', '接收'),
             ('emit', '发出'), ('dispatch', '派发'), ('invoke', '调用'),
             ('attach', '挂上'), ('detach', '摘下'), ('resolve', '解析'),
             ('map', '映射'), ('scan', '扫描'), ('select', '选择'),
             ('filter', '过滤'), ('sort', '排序'), ('merge', '合并'),
             ('split', '切分'), ('analyze', '分析'), ('visit', '访问')]


def _camel_tail(rest):
    """`Directory` / `RefUpdate` → 原样；`BigInteger` 之类只做去重处理。"""
    return rest[:1].upper() + rest[1:] if rest else ''


def gloss_member(name, desc):
    if name.startswith('access$'):
        return '合成访问器（编译器生成，供内部类访问 private 成员）'
    if name.startswith('$SWITCH_TABLE$'):
        return '编译器生成的 switch 映射表'
    if name == '<init>':
        return '构造器'
    if name == '<clinit>':
        return '静态初始化块'
    for p, w in VERB_WORD:
        if name.startswith(p) and len(name) > len(p) and name[len(p)].isupper():
            return '%s %s' % (w, _camel_tail(name[len(p):]))
    if desc and desc.startswith('(') and desc.endswith(')V'):
        return '执行 %s' % name
    return '「%s」' % name


def gloss_class(simple, is_iface=False, is_abstract=False):
    if '$' in simple:
        outer, inner = simple.split('$', 1)
        if inner.isdigit():
            return '匿名内部类（外层 %s）' % outer
        return '%s（外层 %s）' % (gloss_class(inner, is_iface, is_abstract), outer)
    for suf, w in KIND_WORD:
        if w and simple.endswith(suf) and len(simple) > len(suf):
            return '%s：%s' % (w, simple[:-len(suf)])
    if is_iface:
        return '接口：%s' % simple
    if is_abstract:
        return '抽象类：%s' % simple
    return '类：%s' % simple


class SrcDocs(object):
    """上游 Java 源码里的 javadoc 摘要（真正说明"作用"的那一段）。

    只认"声明位置的最近一个 /** … */ 且中间只有注解/修饰符"；找不到就返回 None，
    绝不猜。给方法按**实参个数**消歧（同名重载）。
    """

    GAP = re.compile(r'[\s\w@<>()\[\],.?$"+\-=*&|^/]*$')

    def __init__(self, roots):
        self.roots = [r for r in (roots or []) if r and os.path.isdir(r)]
        self.cache = {}

    def _src(self, fqcn):
        if fqcn in self.cache:
            return self.cache[fqcn]
        txt = None
        rel = fqcn + '.java'
        for r in self.roots:
            p = os.path.join(r, rel)
            if os.path.exists(p):
                try:
                    txt = open(p, encoding='utf-8', errors='replace').read()
                except Exception:
                    txt = None
                break
        self.cache[fqcn] = txt
        return txt

    @staticmethod
    def _summary(block):
        body = []
        for ln in block.split('\n'):
            ln = ln.strip()
            if ln.startswith('/**'):
                ln = ln[3:]
            if ln.endswith('*/'):
                ln = ln[:-2]
            ln = ln.lstrip('*').strip()
            if not ln or ln.startswith('@'):
                continue
            body.append(ln)
            if ln.endswith('.') or ln.endswith('。'):
                break
        out = ' '.join(body)
        out = re.sub(r'\{@\w+\s+([^}]*)\}', r'\1', out)       # {@link Foo} → Foo
        out = re.sub(r'</?[a-zA-Z][^>]*>', '', out)               # <code>x</code> → x
        out = re.sub(r'\s+', ' ', out).strip()
        if len(out) > 110:
            out = out[:108].rstrip() + '…'
        return out or None

    def _doc_before(self, txt, pos):
        end = txt.rfind('*/', 0, pos)
        if end < 0:
            return None
        start = txt.rfind('/**', 0, end)
        if start < 0:
            return None
        gap = txt[end + 2:pos]
        if ';' in gap or '{' in gap or '}' in gap:
            return None
        return self._summary(txt[start:end + 2])

    def class_doc(self, fqcn):
        txt = self._src(fqcn)
        if not txt:
            return None
        simple = fqcn.split('/')[-1].split('$')[0]
        m = re.search(r'\b(class|interface|enum)\s+' + re.escape(simple) + r'\b', txt)
        return self._doc_before(txt, m.start()) if m else None

    def method_doc(self, fqcn, name, nargs):
        txt = self._src(fqcn)
        if not txt:
            return None
        if name in ('<init>', '<clinit>'):
            return None
        for m in re.finditer(r'(?<![.\w])' + re.escape(name) + r'\s*\(', txt):
            i = m.end() - 1
            depth, comma, empty = 0, 0, True
            while i < len(txt):
                ch = txt[i]
                if ch == '(':
                    depth += 1
                elif ch == ')':
                    depth -= 1
                    if depth == 0:
                        break
                elif ch == ',' and depth == 1:
                    comma += 1
                elif depth == 1 and not ch.isspace():
                    empty = False
                i += 1
            got = 0 if empty else comma + 1
            if got != nargs:
                continue
            d = self._doc_before(txt, m.start())
            if d:
                return d
        return None


class Oracles(object):
    """按需读单个 class 的上游索引（36 个 jar，全量解析太慢）。"""

    def __init__(self, pairs):
        self.jars = []
        for label, path in pairs:
            if path and _os.path.exists(path):
                z = zipfile.ZipFile(path)
                self.jars.append((label, z, set(n[:-6] for n in z.namelist() if n.endswith('.class'))))
        self.cache = {}

    def lookup(self, fqcn):
        """→ (label, 方法集合, 字段集合, access) 或 None（第一个命中的 oracle）。"""
        if fqcn in self.cache:
            return self.cache[fqcn]
        out = None
        for label, z, names in self.jars:
            if fqcn not in names:
                continue
            try:
                c = parse_class(z.read(fqcn + '.class'))
            except Exception:
                continue
            if not c:
                continue
            m = {(n, d) for n, d, _a in c['methods']}
            f = {(n, d) for n, d, _a in c['fields']}
            out = (label, m, f, c)
            break
        self.cache[fqcn] = out
        return out


def load_comments(path):
    seen = set()
    if not _os.path.exists(path):
        return seen
    for ln in open(path, encoding='utf-8'):
        if not ln.strip() or ln.startswith('#'):
            continue
        p = ln.rstrip('\n').split('\t')
        if len(p) == 5:
            kind, owner, name, desc = p[0], p[1], p[2], p[3]
            # 类行/字段行的 name/desc 只是占位（写 `-`），统一成空串再比，否则会重复追加
            if kind == 'c':
                name = desc = ''
            elif kind == 'f':
                desc = ''
            seen.add((kind, owner, name, desc))
    return seen


def _join(segs, cap=200):
    out = ''
    for x in segs:
        if not x:
            continue
        if len(x) > cap:                       # 单段就超长 → 自己截断，别整段丢掉
            x = x[:cap - 1] + '…'
        if len(out) + len(x) + 2 > cap:
            break
        out = (out + '；' + x) if out else x
    return out


def fill_part(part, oracles, acc, ftypes, docs=None, apply=False, limit=3):
    d = dict(_P.PART_DIRS).get(part)
    if not d:
        raise SystemExit('没有这个 part: %s' % part)
    cm = _os.path.join(d, 'class_map.tsv')
    ms = _os.path.join(d, 'members.tsrg')
    cp = _os.path.join(d, 'comments.tsv')
    if not _os.path.exists(cm):
        print('%-12s 跳过（该 part 没有 class_map.tsv）' % part)
        return 0, 0
    prefix = _P.PART_PREFIX.get(part, '')
    cls, order = {}, []
    for ln in open(cm, encoding='utf-8'):
        if not ln.strip() or ln.startswith('#'):
            continue
        f = ln.rstrip('\n').split('\t')
        probe = f[0] if '/' in f[0] else prefix + '/' + f[0]
        cls[probe] = f[1]
        order.append(probe)
    have = load_comments(cp)
    rows = []
    n_cls = n_mem = n_src = 0
    for probe in order:
        target = cls[probe]
        hit = oracles.lookup(target)
        if ('c', probe, '', '') not in have:
            is_iface = bool((hit[3].get('acc') or 0) & 0x200) if hit else False
            is_abs = bool((hit[3].get('acc') or 0) & 0x400) if hit else False
            simple = target.split('/')[-1]
            g = gloss_class(simple, is_iface, is_abs)
            doc = docs.class_doc(target) if docs else None
            if hit and doc:
                rows.append(('c', probe, '-', '-', _join(['src: %s %s' % (hit[0], target),
                                                          'doc: %s' % doc])))
                n_src += 1
            elif hit:
                rows.append(('c', probe, '-', '-', _join(['auto: %s' % g,
                                                          'src: %s %s' % (hit[0], target)])))
                n_src += 1
            else:
                rows.append(('c', probe, '-', '-', 'auto: %s（上游未收录，名字来自 jobs/%s 的判据）' % (g, part)))
            n_cls += 1
    # 成员
    cur = None
    if _os.path.exists(ms):
        for ln in open(ms, encoding='utf-8'):
            ln = ln.rstrip('\n')
            if not ln:
                continue
            if not ln.startswith('\t'):
                cur = ln.split(' ')[0]
                continue
            if cur not in cls:
                continue
            p = ln.lstrip('\t').split(' ')
            if len(p) == 3 and p[1].startswith('('):
                name, desc, new = p[0], p[1], p[2]
                key = ('m', cur, name, desc)
                if key in have:
                    continue
                n_mem += 1
                td = _PRM.remap_desc(desc, cls) if hasattr(_PRM, 'remap_desc') else desc
                hit = oracles.lookup(cls[cur])
                g = gloss_member(new, td)
                doc = docs.method_doc(cls[cur], new, len(_PRM.desc_args(td))) if docs else None
                if hit and (new, td) in hit[1]:
                    n_src += 1
                    if doc:
                        rows.append(('m', cur, name, desc,
                                     _join(['src: %s %s#%s' % (hit[0], cls[cur], new),
                                            'doc: %s' % doc])))
                    else:
                        rows.append(('m', cur, name, desc,
                                     _join(['auto: %s' % g,
                                            'src: %s %s#%s' % (hit[0], cls[cur], new)])))
                else:
                    rows.append(('m', cur, name, desc, 'auto: %s（上游无同签名对应，按作用取名）' % g))
            elif len(p) == 2:
                name, new = p[0], p[1]
                key = ('f', cur, name, '')     # load_comments 会把字段行的 desc 归一化成空
                if key in have:
                    continue
                n_mem += 1
                t = ftypes.get((cur, name), '')
                g = '字段' if not t else '字段(%s)' % t
                hit = oracles.lookup(cls[cur])
                td = _PRM.remap_desc(t, cls) if (t and hasattr(_PRM, 'remap_desc')) else t
                if hit and (new, td) in hit[2]:
                    rows.append(('f', cur, name, '-', 'auto: %s；src: %s %s.%s' % (g, hit[0], cls[cur], new)))
                    n_src += 1
                else:
                    rows.append(('f', cur, name, '-', 'auto: %s（上游无同类型对应，按作用取名）' % g))
    print('%-12s 新增 类 %d / 成员 %d（其中 src: 命中 %d）覆盖已有 %d 行'
          % (part, n_cls, n_mem, n_src, len(have)))
    if apply and rows:
        with open(cp, 'a', encoding='utf-8') as f:
            for r in rows:
                f.write('\t'.join(r) + '\n')
        print('   → 追加 %d 行到 %s' % (len(rows), cp))
    for r in rows[:limit]:
        print('   · %s %s%s → %s' % (r[0], r[1], '' if r[0] == 'c' else '.' + r[2], r[4][:110]))
    return n_cls, n_mem


def main():
    argv = _sys.argv[1:]
    parts = [a.split('=', 1)[1] for a in argv if a.startswith('--part=')]
    if '--all' in argv:
        parts = list(_P.PARTS)
    if not parts:
        raise SystemExit('用法: commentfill.py --part=<name>|--all [--apply]')
    apply = '--apply' in argv
    cfg = _CFG.load(_P.CONFIG)
    oracles = Oracles(cfg.oracle_jars)
    acc, ftypes = jar_access(_P.BASE_OK)
    docs = C = SrcDocs(cfg.src_root) if cfg.src_root else None
    tc = tm = 0
    for p in parts:
        c, m = fill_part(p, oracles, acc, ftypes, docs, apply)
        tc += c
        tm += m
    print('合计：类 %d / 成员 %d（%s）' % (tc, tm, '已写入' if apply else '仅统计，加 --apply 落盘'))
    return 0


if __name__ == '__main__':
    _sys.exit(main())
