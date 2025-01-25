.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final map:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field threshold:I

.field totalWeight:J

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1936
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1913
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1937
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 1938
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 1939
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 1940
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1942
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_29
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1944
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_36
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1946
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 1949
    :goto_43
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 1951
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-eqz v0, :cond_67

    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    .line 1954
    :goto_50
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 1956
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    .line 1959
    :goto_5d
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 1960
    return-void

    :cond_60
    move-object v0, v1

    .line 1942
    goto :goto_29

    .line 1949
    :cond_62
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_43

    .line 1954
    :cond_67
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_50

    .line 1959
    :cond_6c
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_5d
.end method


# virtual methods
.method cleanUp()V
    .registers 3

    .line 3358
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3359
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3360
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3361
    return-void
.end method

.method clear()V
    .registers 11

    const/4 v6, 0x0

    .line 3099
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_8e

    .line 3100
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3102
    :try_start_8
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3103
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3105
    iget-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v8, v6

    .line 3106
    :goto_16
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_5e

    .line 3107
    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v7, v0

    :goto_23
    if-eqz v7, :cond_5a

    .line 3109
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3110
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3111
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3112
    if-eqz v1, :cond_3f

    if-nez v3, :cond_57

    :cond_3f
    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3114
    :goto_41
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3107
    :cond_51
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    move-object v7, v0

    goto :goto_23

    .line 3112
    :cond_57
    sget-object v5, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    goto :goto_41

    .line 3106
    :cond_5a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_16

    :cond_5e
    move v0, v6

    .line 3119
    :goto_5f
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 3120
    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3119
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 3122
    :cond_6c
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3123
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3124
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3125
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3127
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3128
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_88
    .catchall {:try_start_8 .. :try_end_88} :catchall_8f

    .line 3130
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3131
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3134
    :cond_8e
    return-void

    .line 3130
    :catchall_8f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3131
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3132
    throw v0
.end method

.method clearKeyReferenceQueue()V
    .registers 2

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2408
    return-void
.end method

.method clearReferenceQueues()V
    .registers 2

    .line 2398
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2399
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2401
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2402
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2404
    :cond_16
    return-void
.end method

.method clearValueReferenceQueue()V
    .registers 2

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2412
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    .line 2639
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_26

    .line 2640
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2641
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    move-result-object v1

    .line 2642
    if-nez v1, :cond_17

    .line 2643
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2648
    :goto_16
    return v0

    .line 2645
    :cond_17
    :try_start_17
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 2650
    :cond_22
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2648
    :cond_26
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2650
    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2651
    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 11

    const/4 v1, 0x0

    .line 2661
    :try_start_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_3c

    .line 2662
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2663
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2664
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    move v2, v1

    .line 2665
    :goto_14
    if-ge v2, v6, :cond_3c

    .line 2666
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    :goto_1c
    if-eqz v0, :cond_38

    .line 2667
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v7

    .line 2668
    if-nez v7, :cond_29

    .line 2666
    :cond_24
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_1c

    .line 2671
    :cond_29
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_41

    move-result v7

    if-eqz v7, :cond_24

    .line 2672
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 2678
    :goto_37
    return v0

    .line 2665
    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 2678
    :cond_3c
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_37

    .line 2680
    :catchall_41
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2681
    throw v0
.end method

.method copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1986
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2000
    :cond_7
    :goto_7
    return-object v0

    .line 1991
    :cond_8
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 1992
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1993
    if-nez v2, :cond_18

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1998
    :cond_18
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1999
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    goto :goto_7
.end method

.method drainKeyReferenceQueue()V
    .registers 4

    .line 2371
    const/4 v0, 0x0

    move v1, v0

    .line 2372
    :goto_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2374
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2375
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->reclaimKey(Lcom/google/common/cache/ReferenceEntry;)V

    .line 2376
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2380
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2379
    goto :goto_2
.end method

.method drainRecencyQueue()V
    .registers 3

    .line 2474
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_18

    .line 2479
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2483
    :cond_18
    return-void
.end method

.method drainReferenceQueues()V
    .registers 2

    .line 2360
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2361
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2363
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2364
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2366
    :cond_16
    return-void
.end method

.method drainValueReferenceQueue()V
    .registers 4

    .line 2385
    const/4 v0, 0x0

    move v1, v0

    .line 2386
    :goto_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2388
    check-cast v0, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2389
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2390
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2394
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2393
    goto :goto_2
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 2521
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2522
    invoke-virtual {p5}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2523
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2525
    :cond_11
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_24

    .line 2526
    invoke-static {p1, p3, p5}, Lcom/google/common/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/RemovalNotification;

    move-result-object v0

    .line 2527
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2529
    :cond_24
    return-void
.end method

.method evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 2539
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2559
    :cond_8
    return-void

    .line 2543
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2547
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    .line 2548
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2553
    :cond_27
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 2554
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2555
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2556
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2549
    :cond_45
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method expand()V
    .registers 12

    .line 2762
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2763
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2764
    const/high16 v0, 0x40000000  # 2.0f

    if-lt v8, v0, :cond_b

    .line 2827
    :goto_a
    return-void

    .line 2778
    :cond_b
    iget v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2779
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2780
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2781
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2782
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_7e

    .line 2785
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2787
    if-eqz v0, :cond_85

    .line 2788
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 2789
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 2792
    if-nez v2, :cond_44

    .line 2793
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 2782
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_25

    :cond_44
    move-object v1, v0

    .line 2799
    :goto_45
    if-eqz v2, :cond_55

    .line 2801
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 2802
    if-eq v3, v4, :cond_83

    move-object v1, v2

    .line 2800
    :goto_4f
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    move v4, v3

    goto :goto_45

    .line 2808
    :cond_55
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 2811
    :goto_5a
    if-eq v3, v1, :cond_3f

    .line 2812
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 2813
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2814
    invoke-virtual {p0, v3, v0}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2815
    if-eqz v0, :cond_78

    .line 2816
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    .line 2811
    :goto_72
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v3

    move v2, v0

    goto :goto_5a

    .line 2818
    :cond_78
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V

    .line 2819
    add-int/lit8 v0, v2, -0x1

    goto :goto_72

    .line 2825
    :cond_7e
    iput-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2826
    iput v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto :goto_a

    :cond_83
    move v3, v4

    goto :goto_4f

    :cond_85
    move v2, v5

    goto :goto_3f
.end method

.method expireEntries(J)V
    .registers 6

    .line 2501
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2504
    :cond_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2505
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2506
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2509
    :cond_27
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2510
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2511
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2514
    :cond_4b
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 2059
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_39

    .line 2060
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2061
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d

    move-result-object v2

    .line 2062
    if-nez v2, :cond_17

    .line 2063
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2073
    :goto_16
    return-object v0

    .line 2066
    :cond_17
    :try_start_17
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2067
    if-eqz v5, :cond_36

    .line 2068
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2069
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3d

    move-result-object v0

    .line 2075
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2071
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 2073
    :cond_39
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2075
    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2076
    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2020
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    :try_start_6
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_45

    .line 2025
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 2026
    if-eqz v2, :cond_45

    .line 2027
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2028
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    .line 2029
    if-eqz v5, :cond_33

    .line 2030
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2031
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2032
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_2e} :catch_4d
    .catchall {:try_start_6 .. :try_end_2e} :catchall_61

    move-result-object v0

    .line 2052
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2042
    :goto_32
    return-object v0

    .line 2034
    :cond_33
    :try_start_33
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2035
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2036
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_33 .. :try_end_40} :catch_4d
    .catchall {:try_start_33 .. :try_end_40} :catchall_61

    move-result-object v0

    .line 2052
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_32

    .line 2042
    :cond_45
    :try_start_45
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_45 .. :try_end_48} :catch_4d
    .catchall {:try_start_45 .. :try_end_48} :catchall_61

    move-result-object v0

    .line 2052
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_32

    .line 2043
    :catch_4d
    move-exception v0

    move-object v1, v0

    .line 2044
    :try_start_4f
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2045
    instance-of v2, v0, Ljava/lang/Error;

    if-nez v2, :cond_67

    .line 2047
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_66

    .line 2048
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_61

    .line 2052
    :catchall_61
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2053
    throw v0

    .line 2050
    :cond_66
    :try_start_66
    throw v1

    .line 2046
    :cond_67
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_61
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2226
    const/4 v1, 0x0

    .line 2228
    :try_start_1
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2229
    if-eqz v1, :cond_22

    .line 2232
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2233
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 2234
    if-nez v1, :cond_21

    .line 2237
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2238
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2234
    :cond_21
    return-object v1

    .line 2230
    :cond_22
    :try_start_22
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3e

    .line 2236
    :catchall_3e
    move-exception v0

    if-nez v1, :cond_4d

    .line 2237
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2238
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2240
    :cond_4d
    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2584
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_26

    .line 2585
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_11

    .line 2584
    :cond_c
    :goto_c
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_4

    .line 2589
    :cond_11
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2590
    if-nez v1, :cond_1b

    .line 2591
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_c

    .line 2595
    :cond_1b
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2600
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method getFirst(I)Lcom/google/common/cache/ReferenceEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 2576
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2577
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 2605
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 2606
    if-nez v1, :cond_8

    .line 2612
    :goto_7
    return-object v0

    .line 2608
    :cond_8
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2609
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_7

    :cond_14
    move-object v0, v1

    .line 2612
    goto :goto_7
.end method

.method getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2620
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2621
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2634
    :goto_a
    return-object v0

    .line 2624
    :cond_b
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2625
    if-nez v1, :cond_19

    .line 2626
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_a

    .line 2630
    :cond_19
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2631
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_a

    :cond_25
    move-object v0, v1

    .line 2634
    goto :goto_a
.end method

.method getNextEvictable()Lcom/google/common/cache/ReferenceEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 2564
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2565
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    .line 2566
    if-lez v2, :cond_6

    .line 2567
    return-object v0

    .line 2570
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .line 1967
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 1968
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1f

    .line 1970
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 1972
    :cond_1f
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1973
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2293
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2296
    :try_start_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2297
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2299
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2300
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, v0, p2

    .line 2301
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v1, v0

    .line 2304
    :goto_1f
    if-eqz v1, :cond_72

    .line 2305
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2306
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_6d

    if-eqz v6, :cond_6d

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2308
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 2311
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    .line 2312
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_50

    if-eqz p3, :cond_58

    .line 2313
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v6, v0, Lcom/google/common/cache/LocalCache;->refreshNanos:J
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_8f

    cmp-long v0, v2, v6

    if-gez v0, :cond_58

    .line 2317
    :cond_50
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2317
    const/4 v0, 0x0

    .line 2334
    :goto_57
    return-object v0

    .line 2321
    :cond_58
    :try_start_58
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2322
    new-instance v0, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v0, v4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2324
    invoke-interface {v1, v0}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_8f

    .line 2325
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_57

    .line 2304
    :cond_6d
    :try_start_6d
    invoke-interface {v1}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    goto :goto_1f

    .line 2329
    :cond_72
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2330
    new-instance v1, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2331
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2332
    invoke-interface {v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2333
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_8f

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v1

    .line 2334
    goto :goto_57

    .line 2336
    :catchall_8f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2338
    throw v0
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .line 2202
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2203
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment$1;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2215
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2203
    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2216
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2193
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2194
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2081
    const/4 v6, 0x0

    .line 2082
    const/4 v11, 0x0

    .line 2083
    const/4 v14, 0x1

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2088
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 2089
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2091
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 2093
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v17, p2, v4

    .line 2094
    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v10, v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_119

    move-object v12, v10

    .line 2096
    :goto_30
    if-eqz v12, :cond_127

    .line 2097
    :try_start_32
    invoke-interface {v12}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2098
    invoke-interface {v12}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_f5

    if-eqz v5, :cond_f5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2100
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 2101
    invoke-interface {v12}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;
    :try_end_51
    .catchall {:try_start_32 .. :try_end_51} :catchall_11f

    move-result-object v13

    .line 2102
    :try_start_52
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_121

    move-result v4

    if-eqz v4, :cond_97

    .line 2103
    const/4 v4, 0x0

    move-object v6, v13

    move v7, v4

    .line 2096
    :goto_5b
    if-eqz v7, :cond_123

    .line 2131
    :try_start_5d
    new-instance v4, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_11b

    .line 2133
    if-nez v12, :cond_fb

    .line 2134
    :try_start_64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v5

    .line 2135
    invoke-interface {v5, v4}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2136
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_11d

    .line 2130
    :goto_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2144
    if-eqz v7, :cond_10e

    .line 2151
    :try_start_80
    monitor-enter v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_117

    .line 2152
    :try_start_81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v7

    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_101

    .line 2155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2159
    :goto_96
    return-object v7

    .line 2105
    :cond_97
    :try_start_97
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2106
    if-nez v7, :cond_c1

    .line 2107
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_a3
    .catchall {:try_start_97 .. :try_end_a3} :catchall_121

    move-object/from16 v4, p0

    move/from16 v6, p2

    :try_start_a7
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 2122
    :goto_aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v4, v12}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v4, v12}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2124
    add-int/lit8 v4, v15, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move-object v6, v13

    move v7, v14

    .line 2126
    goto :goto_5b

    .line 2109
    :cond_c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v4, v12, v8, v9}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 2112
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_d8
    .catchall {:try_start_a7 .. :try_end_d8} :catchall_d9

    goto :goto_aa

    .line 2142
    :catchall_d9
    move-exception v4

    :goto_da
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2144
    throw v4

    .line 2115
    :cond_e1
    :try_start_e1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_ee
    .catchall {:try_start_e1 .. :try_end_ee} :catchall_d9

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_96

    .line 2098
    :cond_f5
    :try_start_f5
    invoke-interface {v12}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_11b

    move-result-object v12

    goto/16 :goto_30

    .line 2138
    :cond_fb
    :try_start_fb
    invoke-interface {v12, v4}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_11d

    move-object v5, v12

    goto/16 :goto_78

    .line 2153
    :catchall_101
    move-exception v4

    :try_start_102
    monitor-exit v5
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    :try_start_103
    throw v4
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    .line 2155
    :catchall_104
    move-exception v4

    :goto_105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2156
    throw v4

    .line 2159
    :cond_10e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v6}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_96

    .line 2155
    :catchall_117
    move-exception v4

    goto :goto_105

    .line 2142
    :catchall_119
    move-exception v4

    goto :goto_da

    :catchall_11b
    move-exception v4

    goto :goto_da

    :catchall_11d
    move-exception v4

    goto :goto_da

    :catchall_11f
    move-exception v4

    goto :goto_da

    :catchall_121
    move-exception v4

    goto :goto_da

    :cond_123
    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_78

    :cond_127
    move v7, v14

    goto/16 :goto_5b
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .registers 6
    .param p3  # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1977
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .line 1963
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .registers 2

    .line 3336
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3339
    :cond_d
    return-void
.end method

.method postWriteCleanup()V
    .registers 1

    .line 3354
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3355
    return-void
.end method

.method preWriteCleanup(J)V
    .registers 4

    .line 3349
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3350
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2686
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2688
    :try_start_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 2689
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2691
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2692
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_1b

    .line 2693
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2694
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2697
    :cond_1b
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2698
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2699
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v10, v0

    .line 2702
    :goto_2c
    if-eqz v10, :cond_c0

    .line 2703
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2704
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_b9

    if-eqz v1, :cond_b9

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2706
    invoke-virtual {v4, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 2709
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2710
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2712
    if-nez v3, :cond_8a

    .line 2713
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2714
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2715
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p3

    move-wide v4, v8

    .line 2717
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2718
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2723
    :goto_70
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2724
    invoke-virtual {p0, v10}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_e4

    .line 2725
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2725
    const/4 v3, 0x0

    .line 2752
    :goto_7c
    return-object v3

    :cond_7d
    move-object v0, p0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p3

    move-wide v4, v8

    .line 2720
    :try_start_82
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2721
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 2726
    :cond_8a
    if-eqz p4, :cond_96

    .line 2730
    invoke-virtual {p0, v10, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_e4

    .line 2731
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_7c

    .line 2734
    :cond_96
    :try_start_96
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2735
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object v4, p0

    move-object v5, v10

    move-object v6, p1

    move-object v7, p3

    .line 2737
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2738
    invoke-virtual {p0, v10}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_e4

    .line 2739
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_7c

    .line 2704
    :cond_b9
    :try_start_b9
    invoke-interface {v10}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_2c

    .line 2745
    :cond_c0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2746
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    .line 2747
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2748
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2749
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2750
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2751
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_dc
    .catchall {:try_start_b9 .. :try_end_dc} :catchall_e4

    .line 2752
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2752
    const/4 v3, 0x0

    goto :goto_7c

    .line 2754
    :catchall_e4
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2756
    throw v0
.end method

.method reclaimKey(Lcom/google/common/cache/ReferenceEntry;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .line 3191
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3193
    :try_start_3
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3194
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3195
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, v0, p2

    .line 3196
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v1

    .line 3198
    :goto_16
    if-eqz v2, :cond_4e

    .line 3199
    if-ne v2, p1, :cond_49

    .line 3200
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3201
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3207
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3208
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    .line 3202
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3210
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3211
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3212
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_56

    .line 3213
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3213
    const/4 v0, 0x1

    .line 3217
    :goto_48
    return v0

    .line 3198
    :cond_49
    :try_start_49
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_56

    move-result-object v2

    goto :goto_16

    .line 3217
    :cond_4e
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3217
    const/4 v0, 0x0

    goto :goto_48

    .line 3219
    :catchall_56
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3221
    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3226
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3228
    :try_start_4
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3229
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3230
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3231
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v1

    .line 3233
    :goto_17
    if-eqz v2, :cond_71

    .line 3234
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3235
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_6c

    if-eqz v3, :cond_6c

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3237
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 3238
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    .line 3239
    if-ne v4, p3, :cond_5f

    .line 3240
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3241
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    .line 3242
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3250
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3251
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3252
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_7e

    .line 3253
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3253
    :cond_5d
    const/4 v0, 0x1

    .line 3259
    :cond_5e
    :goto_5e
    return v0

    .line 3255
    :cond_5f
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_5e

    .line 3233
    :cond_6c
    :try_start_6c
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7e

    move-result-object v2

    goto :goto_17

    .line 3259
    :cond_71
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_5e

    .line 3261
    :catchall_7e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3265
    :cond_8b
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .line 2439
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2440
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2442
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2443
    return-void
.end method

.method recordRead(Lcom/google/common/cache/ReferenceEntry;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .line 2424
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2425
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2427
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2428
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/ReferenceEntry;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .line 2452
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2453
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2455
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2456
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2458
    :cond_14
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2459
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 2461
    :cond_1f
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2462
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2463
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 2269
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;

    move-result-object v1

    .line 2271
    if-nez v1, :cond_8

    .line 2283
    :cond_7
    :goto_7
    return-object v0

    .line 2275
    :cond_8
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 2276
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2278
    :try_start_12
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    move-result-object v0

    goto :goto_7

    .line 2279
    :catchall_17
    move-exception v1

    goto :goto_7
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 2947
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2949
    :try_start_4
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2950
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2952
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2953
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2954
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 2955
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v1

    .line 2957
    :goto_22
    if-eqz v2, :cond_78

    .line 2958
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2959
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_73

    if-eqz v3, :cond_73

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2961
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 2962
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    .line 2963
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2966
    if-eqz v5, :cond_62

    .line 2967
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 2975
    :goto_46
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 2976
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2978
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2979
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2980
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_80

    .line 2981
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2985
    :goto_61
    return-object v5

    .line 2968
    :cond_62
    :try_start_62
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 2969
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_80

    goto :goto_46

    .line 2972
    :cond_6b
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v5, v0

    .line 2972
    goto :goto_61

    .line 2959
    :cond_73
    :try_start_73
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_80

    move-result-object v2

    goto :goto_22

    .line 2985
    :cond_78
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v5, v0

    .line 2985
    goto :goto_61

    .line 2987
    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2989
    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 16

    const/4 v9, 0x0

    .line 2993
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2995
    :try_start_4
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 2996
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2998
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v8, 0x1

    .line 2999
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3000
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3001
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v1

    .line 3003
    :goto_23
    if-eqz v2, :cond_8a

    .line 3004
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3005
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_85

    if-eqz v3, :cond_85

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3007
    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 3008
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    .line 3009
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3012
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3013
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3021
    :goto_4f
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3022
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3024
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3025
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3026
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3027
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_66
    .catchall {:try_start_4 .. :try_end_66} :catchall_91

    if-ne v7, v0, :cond_7c

    move v0, v8

    .line 3033
    :goto_69
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v9, v0

    .line 3031
    :goto_70
    return v9

    .line 3014
    :cond_71
    if-nez v5, :cond_7e

    :try_start_73
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3015
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_91

    goto :goto_4f

    :cond_7c
    move v0, v9

    .line 3027
    goto :goto_69

    .line 3014
    :cond_7e
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_70

    .line 3005
    :cond_85
    :try_start_85
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_91

    move-result-object v2

    goto :goto_23

    .line 3031
    :cond_8a
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_70

    .line 3033
    :catchall_91
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3035
    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 3179
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3181
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    .line 3182
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3183
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    .line 3179
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3185
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3186
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3187
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .line 3304
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3305
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3306
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3307
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v1

    .line 3309
    :goto_13
    if-eqz v2, :cond_44

    .line 3310
    if-ne v2, p1, :cond_3f

    .line 3311
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3312
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3318
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3319
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    move-object v0, p0

    move v4, p2

    move-object v7, p3

    .line 3313
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3321
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3322
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3323
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3324
    const/4 v0, 0x1

    .line 3328
    :goto_3e
    return v0

    .line 3309
    :cond_3f
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    goto :goto_13

    .line 3328
    :cond_44
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3162
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3163
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3164
    :goto_6
    if-eq p1, p2, :cond_1b

    .line 3165
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3166
    if-eqz v0, :cond_14

    .line 3164
    :goto_e
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    move-object v1, v0

    goto :goto_6

    .line 3169
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3170
    add-int/lit8 v2, v2, -0x1

    move-object v0, v1

    goto :goto_e

    .line 3173
    :cond_1b
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3174
    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 3269
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3271
    :try_start_4
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3272
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, v0, p2

    .line 3273
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v2, v0

    .line 3275
    :goto_15
    if-eqz v2, :cond_65

    .line 3276
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3277
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_60

    if-eqz v5, :cond_60

    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3279
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 3280
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3281
    if-ne v5, p3, :cond_58

    .line 3282
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3283
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_50

    .line 3288
    :goto_40
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3297
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3288
    const/4 v0, 0x1

    .line 3294
    :goto_47
    return v0

    .line 3285
    :cond_48
    :try_start_48
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3286
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_50

    goto :goto_40

    .line 3296
    :catchall_50
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3297
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3298
    throw v0

    .line 3290
    :cond_58
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3297
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    .line 3290
    goto :goto_47

    .line 3275
    :cond_60
    :try_start_60
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_50

    move-result-object v2

    goto :goto_15

    .line 3294
    :cond_65
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3297
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    .line 3294
    goto :goto_47
.end method

.method removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;
    .registers 14
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;ITV;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3146
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3147
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3148
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3150
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3151
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3154
    :goto_20
    return-object p1

    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    goto :goto_20
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2892
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2894
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 2895
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2897
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2898
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v11, p2, v2

    .line 2899
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    move-object v4, v3

    .line 2901
    :goto_25
    if-eqz v4, :cond_b7

    .line 2902
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2903
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_b1

    if-eqz v5, :cond_b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2905
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2906
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v8

    .line 2907
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2908
    if-nez v7, :cond_80

    .line 2909
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2913
    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 2914
    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 2922
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2923
    invoke-virtual {v10, v11, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2924
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_bf

    .line 2909
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2926
    const/4 v7, 0x0

    .line 2938
    :goto_7f
    return-object v7

    .line 2929
    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2930
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v12

    sget-object v13, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v8, p0

    move-object v9, v4

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-wide v12, v14

    .line 2932
    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2933
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_aa
    .catchall {:try_start_80 .. :try_end_aa} :catchall_bf

    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_7f

    .line 2903
    :cond_b1
    :try_start_b1
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_bf

    move-result-object v4

    goto/16 :goto_25

    .line 2938
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2938
    const/4 v7, 0x0

    goto :goto_7f

    .line 2940
    :catchall_bf
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2942
    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2832
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 2833
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2835
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2836
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v11, p2, v2

    .line 2837
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    move-object v4, v3

    .line 2839
    :goto_25
    if-eqz v4, :cond_d2

    .line 2840
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2841
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_cc

    if-eqz v5, :cond_cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2843
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 2844
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v8

    .line 2845
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2846
    if-nez v7, :cond_80

    .line 2847
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2849
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2851
    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 2852
    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 2860
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2861
    invoke-virtual {v10, v11, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2862
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_da

    .line 2847
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2864
    const/4 v2, 0x0

    .line 2883
    :goto_7f
    return v2

    .line 2867
    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_da

    :try_start_86
    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 2868
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2869
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v12

    sget-object v13, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-wide v7, v14

    .line 2871
    invoke-virtual/range {v3 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2872
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_b7
    .catchall {:try_start_86 .. :try_end_b7} :catchall_e2

    .line 2873
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2873
    const/4 v2, 0x1

    goto :goto_7f

    .line 2877
    :cond_bf
    :try_start_bf
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_e2

    .line 2878
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2878
    const/4 v2, 0x0

    goto :goto_7f

    .line 2841
    :cond_cc
    :try_start_cc
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_e2

    move-result-object v4

    goto/16 :goto_25

    .line 2883
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2883
    const/4 v2, 0x0

    goto :goto_7f

    .line 2885
    :catchall_da
    move-exception v2

    :goto_db
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2887
    throw v2

    .line 2885
    :catchall_e2
    move-exception v2

    goto :goto_db
.end method

.method runLockedCleanup(J)V
    .registers 6

    .line 3364
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3366
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3367
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3368
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3370
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3373
    :cond_15
    return-void

    .line 3370
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3371
    throw v0
.end method

.method runUnlockedCleanup()V
    .registers 2

    .line 3377
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3378
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->processPendingNotifications()V

    .line 3380
    :cond_b
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .line 2250
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2251
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v2, v2, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 2252
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2253
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2254
    if-eqz v0, :cond_28

    move-object p4, v0

    .line 2258
    :cond_28
    return-object p4
.end method

.method setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .line 2006
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2007
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    invoke-interface {v0, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2008
    if-ltz v2, :cond_26

    const/4 v0, 0x1

    :goto_f
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2010
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2011
    invoke-virtual {v0, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2012
    invoke-interface {p1, v0}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2013
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/ReferenceEntry;IJ)V

    .line 2014
    invoke-interface {v1, p3}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2015
    return-void

    .line 2008
    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .line 3040
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3042
    :try_start_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 3043
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3045
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v6, v0, 0x1

    .line 3046
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v6, v0, :cond_1d

    .line 3047
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3048
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v6, v0, 0x1

    .line 3051
    :cond_1d
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3052
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3053
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    move-object v7, v0

    .line 3055
    :goto_2e
    if-eqz v7, :cond_a5

    .line 3056
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3057
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_9f

    if-eqz v1, :cond_9f

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3059
    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 3060
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 3061
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3064
    if-eq p3, v0, :cond_56

    if-nez v3, :cond_89

    sget-object v1, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    if-eq v0, v1, :cond_89

    :cond_56
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3067
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3068
    if-nez v3, :cond_9c

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3070
    :goto_66
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3071
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    :cond_73
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object/from16 v3, p4

    move-wide v4, v8

    .line 3067
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3074
    iput v6, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3075
    invoke-virtual {p0, v7}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_c7

    .line 3076
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3076
    const/4 v0, 0x1

    .line 3091
    :goto_88
    return v0

    .line 3080
    :cond_89
    const/4 v4, 0x0

    :try_start_8a
    sget-object v5, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_c7

    .line 3081
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3081
    const/4 v0, 0x0

    goto :goto_88

    .line 3068
    :cond_9c
    :try_start_9c
    sget-object v5, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_66

    .line 3057
    :cond_9f
    invoke-interface {v7}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    move-object v7, v1

    goto :goto_2e

    .line 3085
    :cond_a5
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3086
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-wide v4, v8

    .line 3087
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3088
    invoke-virtual {v10, v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3089
    iput v6, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3090
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_c7

    .line 3091
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3091
    const/4 v0, 0x1

    goto :goto_88

    .line 3093
    :catchall_c7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3095
    throw v0
.end method

.method tryDrainReferenceQueues()V
    .registers 2

    .line 2345
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2347
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2352
    :cond_c
    return-void

    .line 2349
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2350
    throw v0
.end method

.method tryExpireEntries(J)V
    .registers 4

    .line 2489
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2491
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2493
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2497
    :cond_c
    return-void

    .line 2493
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2495
    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v4, 0x1

    .line 2165
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2169
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Recursive load of: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2172
    :try_start_12
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    .line 2173
    if-eqz v0, :cond_29

    .line 2177
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2178
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_45

    .line 2179
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v0

    .line 2174
    :cond_29
    :try_start_29
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_45

    .line 2181
    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2182
    throw v0

    .line 2166
    :cond_4c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
