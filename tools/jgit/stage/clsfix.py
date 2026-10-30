import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys
P=_P.MAP
fixes={
 'bG':('org/eclipse/jgit/revwalk/RenameCallback','body:abstract class + 唯一抽象 onRename(DiffEntry)；FollowFilter 的 renameCallback 字段/get-set 三处类型一致（3.7.1 里就是 abstract class）'),
 'cK':('org/eclipse/jgit/util/AndTreeFilter','body:abstract extends TreeFilter + static create(TreeFilter,TreeFilter)/create(Collection) + 内嵌 cK$a(Binary:a,b 两字段)/cK$b(List)，与 3.7.1 AndTreeFilter 1:1'),
 'mK':('org/eclipse/jgit/util/ChangeIdUtil','body:<clinit> 三条正则与 3.7.1 ChangeIdUtil 的 issuePattern/footerPattern/includeInFooterPattern 逐字节相同；clean/insertId×2/computeChangeId 签名同族'),
 'NI':('org/eclipse/jgit/transport/PushResult','body:extends OperationResult(zI) + 字段 remoteUpdates:Map + getRemoteUpdates()Collection<RemoteRefUpdate>/setRemoteUpdates(Map)，与 3.7.1 PushResult 1:1'),
 'gJ':('org/eclipse/jgit/transport/TrackingRefUpdate','body:包装 RefUpdate+String；update(RevWalk)/forceUpdate(RevWalk)/delete()/getNewObjectId/getOldObjectId/getLocalName 六个委托方法；pI.localUpdates:List<gJ> 即 FetchProcess.localUpdates'),
}
lines=open(P,encoding='utf-8').read().split('\n')
out=[]
for l in lines:
    f=l.split('\t')
    if len(f)>1 and f[0] in fixes:
        tgt,ev=fixes[f[0]]
        print('FIX %-6s %s -> %s' % (f[0], f[1], tgt))
        out.append('%s\t%s\t%s' % (f[0],tgt,ev))
    else:
        out.append(l)
open(P,'w',encoding='utf-8').write('\n'.join(out))
