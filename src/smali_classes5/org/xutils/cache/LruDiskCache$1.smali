.class Lorg/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/cache/LruDiskCache;

.field final val$finalResult:Lorg/xutils/cache/DiskCacheEntity;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    iput-object p2, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 109
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getHits()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setHits(J)V

    .line 110
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 112
    :try_start_15
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lastAccess"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2e

    .line 116
    :goto_2d
    return-void

    .line 113
    :catchall_2e
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
