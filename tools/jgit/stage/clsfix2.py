import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
P=_P.MAP
fixes={
 'QH':('org/eclipse/jgit/internal/storage/pack/PackWriter$1','body:implements Iterable<PackWriter> + 唯一 iterator() 返回 new abcd/PH；PH 已定名 PackWriter$1$1 ⇒ QH=PackWriter$1（原 PackWriter$5 为编号猜测，$5 实为 switch 表持有类）'),
 'TH$a':('org/eclipse/jgit/internal/storage/pack/PackWriter$MutableState','body:字段 phase:TH$b(PackingPhase)+this$0:TH+long，唯一静态 access$000(TH$a,TH$b)V 即 access$102 的 phase setter ⇒ MutableState'),
 'TH$c':('org/eclipse/jgit/internal/storage/pack/PackWriter$Statistics','body:18 个字段与 3.7.1 PackWriter$Statistics 逐位对应（interestingObjects/uninterestingObjects/reusedPacks/depth/deltaSearchNonEdgeObjects/deltasFound/totalObjects/totalDeltas/reusedObjects/reusedDeltas/totalBytes/thinPackBytes/timeCounting/timeSearchingForReuse/timeSearchingForSizes/timeCompressing/timeWriting/objectTypes）+ getMessage()String'),
 'Sw':('org/apache/http/conn/params/Sw','body:implements org.apache.http.conn.params.ConnPerRoute(getMaxForRoute(HttpRoute)) ⇒ AIDE 内置 apache HttpClient 的类，非 jgit；原 TreeFilterMarker 为 loose shape 误判'),
}
lines=open(P,encoding='utf-8').read().split('\n'); out=[]
for l in lines:
    f=l.split('\t')
    if len(f)>1 and f[0] in fixes:
        tgt,ev=fixes[f[0]]; print('FIX %-6s %-55s -> %s' % (f[0], f[1], tgt)); out.append('%s\t%s\t%s'%(f[0],tgt,ev))
    else: out.append(l)
open(P,'w',encoding='utf-8').write('\n'.join(out))
