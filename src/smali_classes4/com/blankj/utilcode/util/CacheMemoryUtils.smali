.class public final Lcom/blankj/utilcode/util/CacheMemoryUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;
    }
.end annotation


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_COUNT:I = 0x100


# instance fields
.field private final mCacheKey:Ljava/lang/String;

.field private final mMemoryCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/collection/LruCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mCacheKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 1

    const/16 v0, 0x100

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .registers 4

    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    if-nez v0, :cond_29

    const-class v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    monitor-enter v0

    :try_start_d
    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    if-nez v0, :cond_26

    new-instance v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    new-instance v1, Landroidx/collection/LruCache;

    invoke-direct {v1, p1}, Landroidx/collection/LruCache;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;-><init>(Ljava/lang/String;Landroidx/collection/LruCache;)V

    sget-object v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const-class v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    monitor-exit v1

    :cond_29
    return-object v0

    :catchall_2a
    move-exception v0

    const-class v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2a

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    if-nez v0, :cond_b

    :goto_a
    return-object p2

    :cond_b
    iget-wide v2, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->dueTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1d

    iget-wide v2, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->dueTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_20

    :cond_1d
    iget-object p2, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public getCacheCount()I
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 8

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    if-gez p3, :cond_12

    const-wide/16 v0, -0x1

    :goto_7
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    new-instance v3, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    invoke-direct {v3, v0, v1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_7
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mMemoryCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$CacheValue;->value:Ljava/lang/Object;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
