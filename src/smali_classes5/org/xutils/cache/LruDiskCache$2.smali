.class Lorg/xutils/cache/LruDiskCache$2;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 253
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$100(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 321
    :cond_8
    :goto_8
    return-void

    .line 255
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->access$200(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    .line 259
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2, v0, v1}, Lorg/xutils/cache/LruDiskCache;->access$202(Lorg/xutils/cache/LruDiskCache;J)J

    .line 263
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$300(Lorg/xutils/cache/LruDiskCache;)V

    .line 267
    :try_start_25
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v0

    const-class v1, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v0

    long-to-int v0, v0

    .line 268
    const/16 v1, 0x1392

    if-le v0, v1, :cond_b9

    .line 269
    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v1

    const-class v2, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    .line 270
    const-string v2, "lastAccess"

    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "hits"

    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v1

    .line 271
    add-int/lit16 v0, v0, -0x1388

    invoke-virtual {v1, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_b9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b9

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6d
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_b1

    .line 277
    :try_start_79
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 281
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2, v0}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 282
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_a7
    .catchall {:try_start_79 .. :try_end_a7} :catchall_a8

    goto :goto_6d

    .line 284
    :catchall_a8
    move-exception v0

    .line 285
    :try_start_a9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b1

    goto :goto_6d

    .line 291
    :catchall_b1
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    :cond_b9
    :try_start_b9
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$500(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->access$600(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 298
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v0

    const-class v1, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    .line 299
    const-string v1, "lastAccess"

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "hits"

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_b9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b9

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_100
    :goto_100
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_10c
    .catchall {:try_start_b9 .. :try_end_10c} :catchall_144

    .line 305
    :try_start_10c
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 309
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v2, v0}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 310
    iget-object v2, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_13a
    .catchall {:try_start_10c .. :try_end_13a} :catchall_13b

    goto :goto_100

    .line 312
    :catchall_13b
    move-exception v0

    .line 313
    :try_start_13c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_143
    .catchall {:try_start_13c .. :try_end_143} :catchall_144

    goto :goto_100

    .line 318
    :catchall_144
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method
