.class public Lorg/xutils/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-lez p1, :cond_13

    .line 54
    iput p1, p0, Lorg/xutils/cache/LruCache;->maxSize:I

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 56
    return-void

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p2}, Lorg/xutils/cache/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 251
    if-ltz v0, :cond_7

    .line 254
    return v0

    .line 252
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public final createCount()I
    .registers 2

    monitor-enter p0

    .line 312
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 230
    return-void
.end method

.method public final evictAll()V
    .registers 2

    .line 271
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    .line 272
    return-void
.end method

.method public final evictionCount()I
    .registers 2

    monitor-enter p0

    .line 326
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_55

    .line 86
    monitor-enter p0

    .line 87
    :try_start_3
    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    .line 89
    iget v1, p0, Lorg/xutils/cache/LruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xutils/cache/LruCache;->hitCount:I

    .line 90
    monitor-exit p0

    .line 124
    :goto_12
    return-object v0

    .line 92
    :cond_13
    iget v0, p0, Lorg/xutils/cache/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xutils/cache/LruCache;->missCount:I

    .line 93
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_52

    .line 102
    invoke-virtual {p0, p1}, Lorg/xutils/cache/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    if-nez v1, :cond_22

    .line 104
    const/4 v0, 0x0

    goto :goto_12

    .line 107
    :cond_22
    monitor-enter p0

    .line 108
    :try_start_23
    iget v0, p0, Lorg/xutils/cache/LruCache;->createCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xutils/cache/LruCache;->createCount:I

    .line 109
    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3e

    .line 113
    iget-object v2, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_48

    .line 119
    if-eqz v0, :cond_4b

    .line 120
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    .line 115
    :cond_3e
    :try_start_3e
    iget v2, p0, Lorg/xutils/cache/LruCache;->size:I

    invoke-direct {p0, p1, v1}, Lorg/xutils/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/xutils/cache/LruCache;->size:I

    goto :goto_36

    .line 117
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw v0

    .line 123
    :cond_4b
    iget v0, p0, Lorg/xutils/cache/LruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    move-object v0, v1

    .line 124
    goto :goto_12

    .line 93
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 82
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hitCount()I
    .registers 2

    monitor-enter p0

    .line 297
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final maxSize()I
    .registers 2

    monitor-enter p0

    .line 289
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final missCount()I
    .registers 2

    monitor-enter p0

    .line 305
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 140
    monitor-enter p0

    .line 141
    :try_start_5
    iget v0, p0, Lorg/xutils/cache/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xutils/cache/LruCache;->putCount:I

    .line 142
    iget v0, p0, Lorg/xutils/cache/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lorg/xutils/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xutils/cache/LruCache;->size:I

    .line 143
    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_25

    .line 145
    iget v1, p0, Lorg/xutils/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lorg/xutils/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/xutils/cache/LruCache;->size:I

    .line 147
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    .line 149
    if-eqz v0, :cond_2c

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    :cond_2c
    iget v1, p0, Lorg/xutils/cache/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    .line 154
    return-object v0

    .line 147
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 136
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final putCount()I
    .registers 2

    monitor-enter p0

    .line 319
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 196
    if-eqz p1, :cond_20

    .line 201
    monitor-enter p0

    .line 202
    :try_start_3
    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_14

    .line 204
    iget v1, p0, Lorg/xutils/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lorg/xutils/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/xutils/cache/LruCache;->size:I

    .line 206
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 208
    if-eqz v0, :cond_1c

    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :cond_1c
    return-object v0

    .line 206
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 197
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resize(I)V
    .registers 4

    .line 64
    if-lez p1, :cond_d

    .line 68
    monitor-enter p0

    .line 69
    :try_start_3
    iput p1, p0, Lorg/xutils/cache/LruCache;->maxSize:I

    .line 70
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 71
    invoke-virtual {p0, p1}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    .line 72
    return-void

    .line 70
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0

    .line 65
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()I
    .registers 2

    monitor-enter p0

    .line 280
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public final snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    .line 339
    :try_start_2
    iget v1, p0, Lorg/xutils/cache/LruCache;->hitCount:I

    iget v2, p0, Lorg/xutils/cache/LruCache;->missCount:I

    add-int/2addr v2, v1

    .line 340
    if-eqz v2, :cond_c

    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    .line 341
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget v2, p0, Lorg/xutils/cache/LruCache;->maxSize:I

    .line 343
    iget v3, p0, Lorg/xutils/cache/LruCache;->hitCount:I

    iget v4, p0, Lorg/xutils/cache/LruCache;->missCount:I

    .line 341
    const-string v5, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 338
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .registers 6

    .line 168
    :goto_0
    monitor-enter p0

    .line 169
    :try_start_1
    iget v0, p0, Lorg/xutils/cache/LruCache;->size:I

    if-ltz v0, :cond_52

    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/xutils/cache/LruCache;->size:I

    if-nez v0, :cond_52

    .line 174
    :cond_11
    iget v0, p0, Lorg/xutils/cache/LruCache;->size:I

    if-le v0, p1, :cond_1d

    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 175
    :cond_1d
    monitor-exit p0

    .line 188
    return-void

    .line 178
    :cond_1f
    iget-object v0, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lorg/xutils/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget v2, p0, Lorg/xutils/cache/LruCache;->size:I

    invoke-direct {p0, v1, v0}, Lorg/xutils/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xutils/cache/LruCache;->size:I

    .line 183
    iget v2, p0, Lorg/xutils/cache/LruCache;->evictionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xutils/cache/LruCache;->evictionCount:I

    .line 184
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_71

    .line 186
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_52
    :try_start_52
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_52 .. :try_end_73} :catchall_71

    throw v0
.end method
