.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;",
        "Lcom/google/common/collect/MapMaker$Dummy;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
        "<TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
            "<TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment",
            "<TK;>;>;II)V"
        }
    .end annotation

    .line 2235
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 2229
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2236
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .registers 2

    .line 2227
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 3

    .line 2227
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
            "<TK;>;"
        }
    .end annotation

    .line 2251
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    return-object p1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .registers 2

    .line 2261
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2262
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .registers 2

    .line 2256
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2257
    return-void
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 2

    .line 2227
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment",
            "<TK;>;"
        }
    .end annotation

    .line 2240
    return-object p0
.end method
