.class Lorg/xutils/cache/LruDiskCache$3;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->deleteNoIndexFiles()V
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

    .line 351
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$3;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 354
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$3;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$100(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 374
    :cond_8
    :goto_8
    return-void

    .line 357
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$3;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$500(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_8

    .line 359
    array-length v3, v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_4e

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v3, :cond_8

    aget-object v0, v2, v1

    .line 361
    :try_start_1c
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$3;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v5, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    .line 362
    const-string v5, "path"

    const-string v6, "="

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v4

    .line 363
    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_41

    .line 364
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_45

    .line 359
    :cond_41
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 366
    :catchall_45
    move-exception v0

    .line 367
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_41

    .line 371
    :catchall_4e
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method
