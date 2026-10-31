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
"""paramfill.py —— 生成各 part 的 `truth/<part>/params.tsv`（入口；实现是 `tools/deob/params.py::fill`）。

判据（都可复现，不接受形状巧合，详见 docs/VERIFY.md 门 9）：
  1) 目标类   = class_map.tsv 里该探针的真名；
  2) 目标方法 = members.tsrg 里该行的新名；
  3) 目标描述符 = 该行描述符按 class_map 逐类换名（只换 `L...;`）；
  4) oracle jar 里 (类, 名字, 描述符) **三元组完全相等**的那条方法的 LocalVariableTable，
     槽位换算成实参序号后就是该参数名；
  5) jar 里那条是抽象/接口方法（没有 Code）时，退到 `~/src/jgit` 的同名源码：
     只认无方法体（`;` 结尾）的声明，多条时用形参类型消歧。
三元组对不上（AIDE 魔改过签名/名字、AIDE 自有类）→ 不出行，不猜。

用法：
  python3 tools/jgit/pipeline/paramfill.py            # 只统计
  python3 tools/jgit/pipeline/paramfill.py --write    # 按类来源写 process/truth/<part>/params.tsv
  python3 tools/jgit/pipeline/paramfill.py --no-src   # 不查源码（对照用）
"""
# oracle 优先顺序：AIDE 的 jgit 以 3.7.1 为基，其余版本只用来补 3.7.1 没有的类/方法。
ORACLE = [
    'j-3.7.1.201504261725-r.jar',
    'j-4.0.0.201506090130-r.jar',
    'j-4.2.0.201601211800-r.jar',
    'j-4.4.1.201607150455-r.jar',
    'j-4.5.0.201609210915-r.jar',
    'j-4.5.7.201904151645-r.jar',
    'j-4.9.10.201904181027-r.jar',
    'j-4.10.0.201712302008-r.jar',
    'j-4.11.9.201909030838-r.jar',
    'org.eclipse.jgit-5.6.1.202002131546-r.jar',
    'org.eclipse.jgit-5.13.3.202401111512-r.jar',
]


def main(argv):
    write = '--write' in argv
    src = None if '--no-src' in argv else _P.SRC_JGIT
    oracles = [_os.path.join(_P.ORACLE_DIR, n) for n in ORACLE]
    _PRM.fill(_P.MAP, _P.TSRG, 'abcd', oracles, _P.PARAMS, src, write=write)
    return 0


if __name__ == '__main__':
    raise SystemExit(main(_sys.argv[1:]))
