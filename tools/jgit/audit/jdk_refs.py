#!/usr/bin/env python3
"""jdk_refs.py —— 体检：改名有没有**动到 JDK/Android 的引用**。

判据是硬不变量：**指向 `java/` `javax/` `android/`… 的引用（owner+名+描述符）改名前后必须一模一样**。
一旦有差异，说明 FART 把某个改名沿覆写链传播到了 JDK 类型上。

踩过的坑：`LsEntry.toString()String` 被改名成 `getLongname`，FART 顺覆写链把
`java.lang.CharSequence.toString` 也改了，于是所有 `CharSequence.toString()` 调用点变成
`CharSequence.getLongname()` —— 编译期/安装都不报，运行到那行就
`NoSuchMethodError: No interface method getLongname() in class Ljava/lang/CharSequence;`。

用法：
    python3 tools/jgit/audit/jdk_refs.py out/build/renamed/merged.jar [--base process/base/merged_pub.jar]
期望：`✔ JDK/Android 引用与改名前一模一样`
"""
import collections
import os
import sys
import zipfile

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'deob'))
import jvm  # noqa: E402

PREFIX = ('java/', 'javax/', 'android/', 'androidx/', 'kotlin/', 'sun/', 'dalvik/', 'org/xml/', 'org/json/')


def jdk_refs(jar):
    """→ Counter{(owner, 名, 描述符): 出现次数}（只统计 JDK/Android 侧的引用）"""
    out = collections.Counter()
    with zipfile.ZipFile(jar) as z:
        names = [n for n in z.namelist() if n.endswith('.class')]
        own = {n[:-6] for n in names}   # 本 jar 自己定义的类（含被我们改名成 org/json/... 的）
        for n in names:
            try:
                c = jvm.parse(z.read(n))
            except Exception:
                continue
            if not c:
                continue
            for _i, (owner, name, desc, _tag) in (c.get('refmap') or {}).items():
                if owner and owner.startswith(PREFIX) and owner not in own:
                    out[(owner, name, desc)] += 1
    return out


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    new = sys.argv[1]
    here = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
    base = 'process/base/merged_pub.jar'
    if '--base' in sys.argv:
        base = sys.argv[sys.argv.index('--base') + 1]
    base = base if os.path.isabs(base) else os.path.join(here, base)
    if not os.path.exists(new) or not os.path.exists(base):
        raise SystemExit('用法: jdk_refs.py <改名后 jar> [--base <改名基线 jar>]')
    a, b = jdk_refs(base), jdk_refs(new)
    only_new = b - a          # 改名后多出来的（=被改坏的）
    only_old = a - b          # 改名后没了的
    print('基线 %s：JDK/Android 引用 %d 条（%d 种）' % (os.path.basename(base), sum(a.values()), len(a)))
    print('产物 %s：JDK/Android 引用 %d 条（%d 种）' % (os.path.basename(new), sum(b.values()), len(b)))
    if not only_new and not only_old:
        print('✔ JDK/Android 引用与改名前一模一样')
        return 0
    bad_names = collections.Counter()
    for (owner, name, desc), k in only_new.items():
        bad_names[name] += k
    print('✘ 有差异：多出 %d 条 / 少了 %d 条（多出的都是被误改的 JDK 引用）' % (
        sum(only_new.values()), sum(only_old.values())))
    for name, k in bad_names.most_common(10):
        print('   多出 %-24s %d 次' % (name, k))
    for (owner, name, desc), k in list(only_new.items())[:8]:
        print('   + %s.%s%s ×%d' % (owner, name, desc, k))
    for (owner, name, desc), k in list(only_old.items())[:4]:
        print('   - %s.%s%s ×%d' % (owner, name, desc, k))
    return 1


if __name__ == '__main__':
    sys.exit(main())
