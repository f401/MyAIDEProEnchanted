import os as _os, sys as _sys
_JG = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
_sys.path.insert(0, _JG)
for _sub in ('pipeline','naming','audit','inspect','stage','deob'):
    _p = _os.path.join(_JG, _sub)
    if _os.path.isdir(_p) and _p not in _sys.path:
        _sys.path.append(_p)
import paths as _P  # noqa: E402
P=_P.MAP
R='org/eclipse/jgit/diff/'
fixes={
 'zC':(R+'RawTextComparator','body:抽象 extends DC(SequenceComparator) + 5 个 RawTextComparator 类型静态字段(DEFAULT/WS_IGNORE_ALL/LEADING/TRAILING/CHANGE) + hash/hashRegion/reduceCommonStartEnd/findForwardLine/findReverseLine 与 3.7.1 逐位对应'),
 'uC':(R+'RawTextComparator$1','body:zC.<clinit> 第 1 个实例 = DEFAULT；hashRegion 为纯字节哈希（无 HK 调用）'),
 'vC':(R+'RawTextComparator$2','body:zC.<clinit> 第 2 个实例 = WS_IGNORE_ALL'),
 'wC':(R+'RawTextComparator$3','body:zC.<clinit> 第 3 个实例 = WS_IGNORE_LEADING'),
 'xC':(R+'RawTextComparator$4','body:zC.<clinit> 第 4 个实例 = WS_IGNORE_TRAILING'),
 'yC':(R+'RawTextComparator$5','body:zC.<clinit> 第 5 个实例 = WS_IGNORE_CHANGE'),
}
lines=open(P,encoding='utf-8').read().split('\n'); out=[]
for l in lines:
    f=l.split('\t')
    if len(f)>1 and f[0] in fixes:
        tgt,ev=fixes[f[0]]; print('FIX %-4s %-48s -> %s' % (f[0], f[1], tgt)); out.append('%s\t%s\t%s'%(f[0],tgt,ev))
    else: out.append(l)
open(P,'w',encoding='utf-8').write('\n'.join(out))
