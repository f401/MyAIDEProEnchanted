.class abstract Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1212
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1213
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 1214
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 1215
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1216
    return-void
.end method

.method static isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1945
    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method abstract castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method clear()V
    .registers 4

    const/4 v0, 0x0

    .line 1778
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_2c

    .line 1779
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1781
    :try_start_8
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1782
    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1783
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1782
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1785
    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    .line 1786
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1788
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2d

    .line 1791
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1794
    :cond_2c
    return-void

    .line 1791
    :catchall_2d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1792
    throw v0
.end method

.method clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)V"
        }
    .end annotation

    .line 1384
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1385
    return-void
.end method

.method clearValueForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    .line 1891
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1893
    :try_start_4
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1894
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, v1, p2

    .line 1895
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v1

    .line 1897
    :goto_15
    if-eqz v3, :cond_4d

    .line 1898
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1899
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_48

    if-eqz v2, :cond_48

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1901
    invoke-virtual {v7, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1902
    move-object v0, v3

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 1903
    if-ne v2, p3, :cond_43

    .line 1904
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    .line 1905
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_52

    .line 1906
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    const/4 v1, 0x1

    .line 1912
    :goto_42
    return v1

    .line 1908
    :cond_43
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v1, v4

    goto :goto_42

    .line 1897
    :cond_48
    :try_start_48
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_52

    move-result-object v3

    goto :goto_15

    .line 1912
    :cond_4d
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v1, v4

    goto :goto_42

    .line 1914
    :catchall_52
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1915
    throw v1
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 1441
    :try_start_1
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_16

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    .line 1443
    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 1448
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1446
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_15

    .line 1448
    :catchall_1a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1449
    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x0

    .line 1459
    :try_start_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_36

    .line 1460
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1461
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 1462
    :goto_c
    if-ge v2, v4, :cond_36

    .line 1463
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    :goto_14
    if-eqz v0, :cond_32

    .line 1464
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 1465
    if-nez v5, :cond_21

    .line 1463
    :cond_1c
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_14

    .line 1468
    :cond_21
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3b

    move-result v5

    if-eqz v5, :cond_1c

    .line 1469
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 1475
    :goto_31
    return v0

    .line 1462
    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 1475
    :cond_36
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_31

    .line 1477
    :catchall_3b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1478
    throw v0
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method copyForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 7
    .param p2  # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;)V"
        }
    .end annotation

    .line 1358
    const/4 v0, 0x0

    move v1, v0

    .line 1359
    :goto_2
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1361
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1362
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 1363
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 1367
    :cond_15
    return-void

    :cond_16
    move v1, v0

    .line 1366
    goto :goto_2
.end method

.method drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .line 1372
    const/4 v0, 0x0

    move v1, v0

    .line 1373
    :goto_2
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1375
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1376
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V

    .line 1377
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 1381
    :cond_15
    return-void

    :cond_16
    move v1, v0

    .line 1380
    goto :goto_2
.end method

.method expand()V
    .registers 12

    .line 1541
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1542
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 1543
    const/high16 v0, 0x40000000  # 2.0f

    if-lt v8, v0, :cond_b

    .line 1605
    :goto_a
    return-void

    .line 1557
    :cond_b
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1558
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 1559
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1560
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 1561
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_7b

    .line 1564
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1566
    if-eqz v0, :cond_82

    .line 1567
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    .line 1568
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 1571
    if-nez v2, :cond_44

    .line 1572
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 1561
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_25

    :cond_44
    move-object v1, v0

    .line 1578
    :goto_45
    if-eqz v2, :cond_55

    .line 1580
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 1581
    if-eq v3, v4, :cond_80

    move-object v1, v2

    .line 1579
    :goto_4f
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    move v4, v3

    goto :goto_45

    .line 1587
    :cond_55
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 1590
    :goto_5a
    if-eq v3, v1, :cond_3f

    .line 1591
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 1592
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1593
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1594
    if-eqz v0, :cond_78

    .line 1595
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    .line 1590
    :goto_72
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3

    move v2, v0

    goto :goto_5a

    .line 1597
    :cond_78
    add-int/lit8 v0, v2, -0x1

    goto :goto_72

    .line 1603
    :cond_7b
    iput-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1604
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto :goto_a

    :cond_80
    move v3, v4

    goto :goto_4f

    :cond_82
    move v2, v5

    goto :goto_3f
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1424
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_18

    move-result-object v0

    .line 1425
    if-nez v0, :cond_b

    .line 1426
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    .line 1433
    :goto_a
    return-object v0

    .line 1429
    :cond_b
    :try_start_b
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1430
    if-nez v0, :cond_14

    .line 1431
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 1433
    :cond_14
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_a

    .line 1435
    :catchall_18
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1436
    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1397
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2a

    .line 1398
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_2a

    .line 1399
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_15

    .line 1398
    :cond_10
    :goto_10
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_8

    .line 1403
    :cond_15
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1404
    if-nez v1, :cond_1f

    .line 1405
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_10

    .line 1409
    :cond_1f
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1415
    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1391
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v0
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

    .line 1269
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1419
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x0

    .line 1954
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1955
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 1964
    :goto_a
    return-object v0

    .line 1958
    :cond_b
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1959
    if-nez v1, :cond_15

    .line 1960
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_a

    :cond_15
    move-object v0, v1

    .line 1964
    goto :goto_a
.end method

.method getLiveValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1339
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation

    .line 1274
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .line 1279
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    .line 1248
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1249
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_12

    .line 1251
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1253
    :cond_12
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1254
    return-void
.end method

.method maybeClearReferenceQueues()V
    .registers 1

    .line 1231
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .registers 1

    .line 1228
    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .line 1244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method newEntryForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 7
    .param p3  # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method newWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .line 1288
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method postReadCleanup()V
    .registers 2

    .line 1973
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 1974
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 1976
    :cond_d
    return-void
.end method

.method preWriteCleanup()V
    .registers 1

    .line 1984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1985
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1482
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1484
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1486
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 1487
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v0, v2, :cond_94

    .line 1488
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 1489
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 1492
    :goto_17
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1493
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, v0, p2

    .line 1494
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v2, v0

    .line 1497
    :goto_28
    if-eqz v2, :cond_70

    .line 1498
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1499
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_6b

    if-eqz v6, :cond_6b

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1501
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1504
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1506
    if-nez v0, :cond_58

    .line 1507
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1508
    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1509
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1510
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_8f

    .line 1511
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    .line 1532
    :goto_57
    return-object v0

    .line 1512
    :cond_58
    if-eqz p4, :cond_5e

    .line 1516
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_57

    .line 1519
    :cond_5e
    :try_start_5e
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1520
    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_8f

    .line 1521
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_57

    .line 1497
    :cond_6b
    :try_start_6b
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    goto :goto_28

    .line 1527
    :cond_70
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1528
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v6

    invoke-interface {v2, v6, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1529
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1530
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1531
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_8f

    .line 1532
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    goto :goto_57

    .line 1534
    :catchall_8f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1535
    throw v0

    :cond_94
    move v3, v0

    goto :goto_17
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1829
    :try_start_3
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1830
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1831
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, v0, p2

    .line 1832
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v1, v0

    .line 1834
    :goto_16
    if-eqz v1, :cond_37

    .line 1835
    if-ne v1, p1, :cond_32

    .line 1836
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1837
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1838
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1839
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1840
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3c

    .line 1841
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    const/4 v0, 0x1

    .line 1845
    :goto_31
    return v0

    .line 1834
    :cond_32
    :try_start_32
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    move-result-object v1

    goto :goto_16

    .line 1845
    :cond_37
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    const/4 v0, 0x0

    goto :goto_31

    .line 1847
    :catchall_3c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1848
    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    .line 1854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1856
    :try_start_4
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1857
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1858
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, v1, p2

    .line 1859
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v1

    .line 1861
    :goto_17
    if-eqz v3, :cond_5b

    .line 1862
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1863
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_56

    if-eqz v2, :cond_56

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1865
    invoke-virtual {v7, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1866
    move-object v0, v3

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 1867
    if-ne v2, p3, :cond_51

    .line 1868
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1869
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    .line 1870
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1871
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1872
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_60

    .line 1873
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    const/4 v1, 0x1

    .line 1879
    :goto_50
    return v1

    .line 1875
    :cond_51
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v1, v4

    goto :goto_50

    .line 1861
    :cond_56
    :try_start_56
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_60

    move-result-object v3

    goto :goto_17

    .line 1879
    :cond_5b
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v1, v4

    goto :goto_50

    .line 1881
    :catchall_60
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1882
    throw v1
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1697
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1699
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1701
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1702
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1703
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, v0, p2

    .line 1704
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v0

    .line 1706
    :goto_1a
    if-eqz v3, :cond_61

    .line 1707
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1708
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_5b

    if-eqz v2, :cond_5b

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1710
    invoke-virtual {v6, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1711
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1713
    if-eqz v2, :cond_50

    .line 1721
    :cond_38
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1722
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1723
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1724
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1725
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_66

    .line 1726
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v2

    .line 1730
    :goto_4f
    return-object v0

    .line 1715
    :cond_50
    :try_start_50
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_66

    move-result v6

    if-nez v6, :cond_38

    .line 1718
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    goto :goto_4f

    .line 1706
    :cond_5b
    :try_start_5b
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_66

    move-result-object v2

    move-object v3, v2

    goto :goto_1a

    .line 1730
    :cond_61
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    goto :goto_4f

    .line 1732
    :catchall_66
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1733
    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 11

    const/4 v1, 0x0

    .line 1737
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1739
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1741
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1742
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1743
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, v0, p2

    .line 1744
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v2, v0

    .line 1746
    :goto_1a
    if-eqz v2, :cond_6b

    .line 1747
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1748
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_66

    if-eqz v5, :cond_66

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1750
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 1751
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1754
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v6

    invoke-virtual {v6, p3, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1755
    const/4 v1, 0x1

    .line 1762
    :cond_43
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1763
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1764
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1765
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1766
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_70

    .line 1767
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    .line 1771
    :goto_5a
    return v0

    .line 1756
    :cond_5b
    :try_start_5b
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_70

    move-result v5

    if-nez v5, :cond_43

    .line 1759
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    goto :goto_5a

    .line 1746
    :cond_66
    :try_start_66
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_70

    move-result-object v2

    goto :goto_1a

    .line 1771
    :cond_6b
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    goto :goto_5a

    .line 1773
    :catchall_70
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1774
    throw v0
.end method

.method removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1920
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1921
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1922
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1923
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v3, v1, v0

    .line 1924
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v1, v0

    .line 1926
    :goto_17
    if-eqz v1, :cond_35

    .line 1927
    if-ne v1, p1, :cond_30

    .line 1928
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1929
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1930
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1931
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1932
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1933
    const/4 v0, 0x1

    .line 1937
    :goto_2f
    return v0

    .line 1926
    :cond_30
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    goto :goto_17

    .line 1937
    :cond_35
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1810
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1811
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    .line 1812
    :goto_6
    if-eq p1, p2, :cond_18

    .line 1813
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1814
    if-eqz v0, :cond_14

    .line 1812
    :goto_e
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    move-object v1, v0

    goto :goto_6

    .line 1817
    :cond_14
    add-int/lit8 v2, v2, -0x1

    move-object v0, v1

    goto :goto_e

    .line 1820
    :cond_18
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1821
    return-object v1
.end method

.method removeFromChainForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    return-object v0
.end method

.method removeTableEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)Z"
        }
    .end annotation

    .line 1326
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    return v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1655
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1657
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1659
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1660
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, v0, p2

    .line 1661
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v0

    .line 1663
    :goto_18
    if-eqz v3, :cond_6a

    .line 1664
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1665
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_64

    if-eqz v2, :cond_64

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1667
    invoke-virtual {v6, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1670
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1671
    if-nez v2, :cond_56

    .line 1672
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1673
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1674
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1675
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1676
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1677
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1678
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_6f

    .line 1680
    :cond_51
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    .line 1689
    :goto_55
    return-object v0

    .line 1683
    :cond_56
    :try_start_56
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1684
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_6f

    .line 1685
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v2

    goto :goto_55

    .line 1663
    :cond_64
    :try_start_64
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6f

    move-result-object v2

    move-object v3, v2

    goto :goto_18

    .line 1689
    :cond_6a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move-object v0, v1

    goto :goto_55

    .line 1691
    :catchall_6f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1692
    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1608
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1610
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1612
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1613
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, v0, p2

    .line 1614
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v2, v0

    .line 1616
    :goto_18
    if-eqz v2, :cond_7a

    .line 1617
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1618
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_75

    if-eqz v5, :cond_75

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1620
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1623
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1624
    if-nez v5, :cond_56

    .line 1625
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1626
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1627
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1628
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1629
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1630
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1631
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_7f

    .line 1633
    :cond_51
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    .line 1648
    :goto_55
    return v0

    .line 1636
    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {v0, p3, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1637
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1638
    invoke-virtual {p0, v2, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_7f

    .line 1639
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    const/4 v0, 0x1

    goto :goto_55

    .line 1643
    :cond_70
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    goto :goto_55

    .line 1616
    :cond_75
    :try_start_75
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7f

    move-result-object v2

    goto :goto_18

    .line 1648
    :cond_7a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    move v0, v1

    goto :goto_55

    .line 1650
    :catchall_7f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1651
    throw v0
.end method

.method runCleanup()V
    .registers 1

    .line 1988
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 1989
    return-void
.end method

.method runLockedCleanup()V
    .registers 3

    .line 1992
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1994
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    .line 1995
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 1997
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2000
    :cond_12
    return-void

    .line 1997
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1998
    throw v0
.end method

.method abstract self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method setTableEntryForTesting(ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)V"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1306
    return-void
.end method

.method setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1236
    return-void
.end method

.method setValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;TV;)V"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1316
    return-void
.end method

.method setWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .registers 2

    .line 1346
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1348
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 1350
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1353
    :cond_c
    return-void

    .line 1350
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 1351
    throw v0
.end method
