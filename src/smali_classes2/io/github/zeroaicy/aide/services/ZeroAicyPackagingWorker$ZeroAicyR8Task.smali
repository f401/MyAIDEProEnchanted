.class public Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;
.super Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;
.source "ZeroAicyPackagingWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZeroAicyR8Task"
.end annotation


# instance fields
.field dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

.field private final this$0:Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

.field private validDependencyLibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 20

    .line 46
    move-object v0, p0

    invoke-direct/range {p0 .. p17}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;-><init>(Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object v1, p1

    iput-object v1, v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->this$0:Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    new-instance v1, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;-><init>()V

    iput-object v1, v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    new-instance v1, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;-><init>()V

    iput-object v1, v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;)Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->this$0:Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    return-object p0
.end method

.method private addResource(Ljava/util/List;Lio/github/zeroaicy/aide/services/PackagingStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/zeroaicy/aide/services/PackagingStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 663
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a0

    .line 667
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getSourceDirs()[Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    .line 673
    :goto_12
    array-length v2, v0

    if-lt p1, v2, :cond_6e

    .line 675
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAllDependencyLibs()[Ljava/lang/String;

    move-result-object p1

    .line 676
    if-eqz p1, :cond_6d

    .line 677
    const/4 v0, 0x0

    .line 690
    :goto_1c
    array-length v2, p1

    if-lt v0, v2, :cond_20

    goto :goto_6d

    .line 677
    :cond_20
    aget-object v2, p1, v0

    .line 678
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-direct {p0, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isCompileOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 681
    goto :goto_6a

    .line 683
    :cond_2d
    invoke-direct {p0, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isRuntimeOnly(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 684
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "从仅打包依赖文件添加资源及classes.dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    invoke-direct {p0, v2, v3, p2, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    .line 686
    goto :goto_6a

    .line 689
    :cond_4f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "从JAR文件添加资源 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 690
    iget-object v3, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    invoke-direct {p0, v2, v3, p2, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_6d
    :goto_6d
    return-void

    .line 667
    :cond_6e
    aget-object v2, v0, p1

    .line 668
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 670
    goto :goto_9c

    .line 672
    :cond_7c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "从源码目录添加资源"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 673
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    invoke-virtual {p0, v2, v3, v4, p2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingDirFile(Ljava/lang/String;Ljava/io/File;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;)V

    :goto_9c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_12

    .line 661
    :cond_a0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 662
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "添加classes.dex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    invoke-direct {p0, v0, v2, p2, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    goto/16 :goto_6
.end method

.method private checkInterrupted()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    return-void

    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private dexingClassFilesFromD8(Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 352
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 358
    :cond_13
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->this$0:Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    invoke-virtual {v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;->getUserAndroidJar()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMinSdk()I

    move-result v0

    .line 360
    const/16 v1, 0x15

    if-ge v0, v1, :cond_24

    .line 362
    const/16 v2, 0x15

    goto :goto_25

    .line 360
    :cond_24
    move v2, v0

    :goto_25
    nop

    .line 364
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getExistsDependencyLibs()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, v8

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillD8Args(Ljava/util/List;IZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 366
    invoke-interface {v8, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    const-string p1, "dexingClassFilesFromD8参数"

    invoke-static {p1}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    .line 369
    invoke-static {v8}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/Object;)V

    .line 371
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/D8;->main([Ljava/lang/String;)V

    return-void
.end method

.method private dexingDependencyLibFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const-string v0, " 删除临时文件: "

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getJarDexCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "dexing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/zeroaicy/util/Log;->println(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lio/github/zeroaicy/util/Log;->println()V

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_55

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_55
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dex.zip"

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v5, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->this$0:Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    invoke-virtual {v5}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;->getUserAndroidJar()Ljava/lang/String;

    move-result-object v11

    .line 224
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMinSdk()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getValidDependencyLibs()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v13}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillD8Args(Ljava/util/List;IZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 226
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :try_start_87
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/D8;->main([Ljava/lang/String;)V

    .line 232
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "移动: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 p1, 0xa

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_bb
    .catchall {:try_start_87 .. :try_end_bb} :catchall_f2

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 240
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lio/github/zeroaicy/util/Log;->println()V

    .line 244
    :cond_f1
    return-object v1

    .line 235
    :catchall_f2
    move-exception p1

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 240
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lio/github/zeroaicy/util/Log;->println()V

    :cond_129
    throw p1
.end method

.method private dexingMergingClassFiles()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->checkInterrupted()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 257
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMainClassCacheDir()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0, v2, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillClassFileCache(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 261
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAllClassFileRootDirs()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 265
    :goto_19
    array-length v5, v3

    if-lt v4, v5, :cond_53

    .line 268
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMainClassesDexZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 272
    return-object v1

    .line 275
    :cond_27
    const-string v2, "Dexing - Classes"

    const/16 v3, 0x43

    invoke-virtual {p0, v2, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getDefaultClassDexCacheDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexingClassFilesFromD8(Ljava/lang/String;Ljava/util/List;)V

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getDefaultClassDexCacheDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ".dex"

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/FileUtil;->findFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/util/FileUtil;->Files2Strings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 282
    const-string v2, "Merging - Classes"

    const/16 v3, 0x45

    invoke-virtual {p0, v2, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 283
    invoke-direct {p0, v1, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->mergingClassDexs(Ljava/lang/String;Ljava/util/Collection;)V

    .line 285
    return-object v1

    .line 261
    :cond_53
    aget-object v5, v3, v4

    .line 262
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->checkInterrupted()V

    .line 263
    if-nez v5, :cond_60

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 265
    :cond_60
    invoke-virtual {p0, v5, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillClassFileCache(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method private dexingMergingJarDexFiles()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getDependencyMergerFilePath()Ljava/lang/String;

    move-result-object v8

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 147
    const-string v1, "Dexing - Libraries"

    const/16 v2, 0x3e

    invoke-virtual {p0, v1, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 149
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getValidDependencyLibs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 171
    nop

    .line 173
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 176
    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    goto :goto_57

    .line 173
    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_3a

    .line 175
    nop

    .line 176
    const/4 v0, 0x1

    .line 180
    :goto_57
    if-nez v0, :cond_61

    .line 181
    const-string v0, "Worker"

    const-string v1, "缓存文件没有更新，不需要合并"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v8

    .line 185
    :cond_61
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->checkInterrupted()V

    .line 186
    const-string v0, "Merging - Libraries"

    const/16 v1, 0x41

    invoke-virtual {p0, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 187
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMinSdk()I

    move-result v2

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillD8Args(Ljava/util/List;IZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 192
    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/D8;->main([Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "合并依赖库，已输出: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 197
    return-object v8

    .line 152
    :cond_ad
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->checkInterrupted()V

    .line 155
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getJarDexCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isBuildRefresh()Z

    move-result v6

    if-nez v6, :cond_e4

    if-eqz v0, :cond_e4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v3, v6, v10

    if-lez v3, :cond_df

    goto :goto_e4

    .line 164
    :cond_df
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 162
    :cond_e4
    :goto_e4
    invoke-direct {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexingDependencyLibFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23
.end method

.method private getDependencyMergerFilePath()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "dex"

    invoke-virtual {p0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/dependency_merger.dex.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMainClassesDexZipFilePath()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "dex"

    invoke-virtual {p0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/classes.dex.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMixUpDexZipFilePath()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "dex"

    invoke-virtual {p0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/classes_mix_up.dex.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnSignedApkFile()Ljava/io/File;
    .registers 4

    .line 706
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getOutFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-unsigned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_29

    .line 709
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 711
    :cond_29
    return-object v0
.end method

.method private getUnZipAlignedUnSignedApkFile()Ljava/io/File;
    .registers 4

    .line 698
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getOutFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-unzipaligned-unsigned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_29

    .line 701
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 703
    :cond_29
    return-object v0
.end method

.method private getZipEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 813
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 814
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 815
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 816
    :goto_c
    if-ge p2, v0, :cond_1a

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_17

    goto :goto_1a

    .line 818
    :cond_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 820
    :cond_1a
    :goto_1a
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isCompileOnly(Ljava/lang/String;)Z
    .registers 3

    .line 322
    const-string v0, "_compileonly.jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isRuntimeOnly(Ljava/lang/String;)Z
    .registers 3

    .line 328
    const-string v0, "_resource.jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 880
    const-string v0, "Worker"

    invoke-static {v0, p1}, Lio/github/zeroaicy/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private mergingClassDexs(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMinSdk()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getValidDependencyLibs()Ljava/util/List;

    move-result-object v7

    move-object v1, p0

    move-object v2, v0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillD8Args(Ljava/util/List;IZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 385
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/android/tools/r8/D8;->main([Ljava/lang/String;)V

    .line 387
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "合并classes.dex，已输出: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private nowTime()J
    .registers 3

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/github/zeroaicy/aide/services/ZipEntryTransformer;",
            "Lio/github/zeroaicy/aide/services/PackagingStream;",
            "Z)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    .line 837
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "没有找到Zip文件: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 838
    return-void

    .line 840
    :cond_22
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 842
    :goto_2c
    nop

    .line 844
    :try_start_2d
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_7c

    if-nez p1, :cond_37

    .line 875
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    .line 845
    :cond_37
    nop

    .line 846
    if-eqz p2, :cond_42

    .line 847
    :try_start_3a
    invoke-interface {p2, p1, p3}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer;->transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 849
    if-nez v1, :cond_41

    .line 850
    goto :goto_2c

    :cond_41
    goto :goto_43

    .line 854
    :cond_42
    move-object v1, p1

    .line 857
    :goto_43
    if-ne v1, p1, :cond_4e

    .line 858
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 860
    :cond_4e
    if-eqz p4, :cond_72

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_72

    .line 861
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_6b

    .line 862
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 863
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 865
    :cond_6b
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 868
    :cond_72
    invoke-virtual {p3, v1}, Lio/github/zeroaicy/aide/services/PackagingStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 869
    invoke-direct {p0, v0, p3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->streamTransfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 871
    invoke-virtual {p3}, Lio/github/zeroaicy/aide/services/PackagingStream;->closeEntry()V
    :try_end_7b
    .catchall {:try_start_3a .. :try_end_7b} :catchall_7c

    goto :goto_2c

    .line 844
    :catchall_7c
    move-exception p1

    .line 875
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_82

    :goto_81
    throw p1

    :goto_82
    goto :goto_81
.end method

.method private streamTransfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 825
    :goto_4
    nop

    .line 826
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_c

    return-void

    .line 827
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method private zipalignApk()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;",
            "^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 496
    const-string v0, "ZeroAicy Zipalign APK "

    const/16 v1, 0x55

    invoke-virtual {p0, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 499
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getUnZipAlignedUnSignedApkFile()Ljava/io/File;

    move-result-object v0

    .line 501
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getUnSignedApkFile()Ljava/io/File;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 509
    :cond_18
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getZipalignPath()Ljava/lang/String;

    move-result-object v2

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    const-string v2, "-p"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v2, "-v"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    const-string v2, "4"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v2, 0x0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    move-object v4, v2

    check-cast v4, Ljava/io/OutputStream;

    check-cast v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v2

    .line 521
    invoke-interface {v2}, Labcd/Pl;->DW()I

    move-result v3

    if-nez v3, :cond_a3

    .line 525
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 528
    const-string v0, "开始Signing APK: "

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v2

    .line 531
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getOutFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->proxySign(Ljava/io/File;Ljava/io/File;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Signing APK共用时: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    return-void

    .line 522
    :cond_a3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " zipalign Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-interface {v2}, Labcd/Pl;->j6()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fillClassFileCache(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillClassFileCacheMap(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public fillClassFileCacheMap(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 400
    if-nez p2, :cond_7

    .line 401
    return-void

    .line 403
    :cond_7
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isBuildRefresh()Z

    move-result v0

    .line 404
    const/4 v1, 0x0

    .line 429
    :goto_c
    array-length v2, p2

    if-lt v1, v2, :cond_10

    return-void

    .line 404
    :cond_10
    aget-object v2, p2, v1

    .line 405
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 406
    invoke-virtual {p0, p1, v2, p3, p4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->fillClassFileCacheMap(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Set;)V

    .line 407
    goto :goto_63

    .line 409
    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 410
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 412
    goto :goto_63

    .line 414
    :cond_33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 417
    goto :goto_63

    .line 420
    :cond_42
    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    if-eqz v0, :cond_4b

    .line 423
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    goto :goto_63

    .line 426
    :cond_4b
    invoke-virtual {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getClassDexFileCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_63

    .line 429
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public fillD8Args(Ljava/util/List;IZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 293
    const-string v0, "--min-api"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    if-eqz p3, :cond_13

    .line 298
    const-string p2, "--file-per-class-file"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_13
    if-eqz p4, :cond_1a

    .line 301
    const-string p2, "--intermediate"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_1a
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 304
    const-string p2, "--lib"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_28
    if-eqz p6, :cond_46

    .line 309
    check-cast p6, Ljava/util/Collection;

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 311
    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_37

    goto :goto_46

    .line 309
    :cond_37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 310
    const-string p4, "--classpath"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 314
    :cond_46
    :goto_46
    const-string p2, "--output"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getClassesDexZipList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->checkInterrupted()V

    .line 107
    const-string v1, "Run D8 Dexing"

    const/16 v2, 0x3c

    invoke-virtual {p0, v1, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getValidDependencyLibs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 111
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexingMergingJarDexFiles()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 114
    :cond_1f
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 118
    :goto_23
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexingMergingClassFiles()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    if-eqz v1, :cond_2f

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2f
    return-object v0
.end method

.method public getExistsDependencyLibs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAllDependencyLibs()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 345
    :goto_a
    array-length v3, v1

    if-lt v2, v3, :cond_e

    .line 348
    return-object v0

    .line 336
    :cond_e
    aget-object v3, v1, v2

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 338
    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v5, "_resource.jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_33

    .line 343
    :cond_25
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 345
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_33
    :goto_33
    nop

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public getFileCRC32(Ljava/io/File;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 801
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 802
    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 803
    :goto_13
    nop

    .line 804
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_22

    .line 807
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 808
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 805
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_13
.end method

.method public getValidDependencyLibs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->validDependencyLibs:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 440
    return-object v0

    .line 442
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->validDependencyLibs:Ljava/util/List;

    .line 444
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAllDependencyLibs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 462
    :goto_11
    array-length v2, v0

    if-lt v1, v2, :cond_17

    .line 464
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->validDependencyLibs:Ljava/util/List;

    return-object v0

    .line 444
    :cond_17
    aget-object v2, v0, v1

    .line 445
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 446
    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    const-string v4, "_resource.jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "_compileonly.jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_67

    .line 451
    :cond_36
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_42

    .line 454
    goto :goto_67

    .line 457
    :cond_42
    :try_start_42
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_4d

    .line 462
    iget-object v3, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->validDependencyLibs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 457
    :catch_4d
    move-exception v0

    .line 460
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "不是zip文件或zip文件有损坏"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_67
    :goto_67
    nop

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public packaging()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 474
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v0

    .line 475
    const-string v2, "开始dxing"

    invoke-direct {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getClassesDexZipList()Ljava/util/List;

    move-result-object v2

    .line 477
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "dxing共用时: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v3

    .line 481
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getOutFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 482
    invoke-virtual {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingJavaProject(Ljava/util/List;)V

    goto :goto_52

    .line 486
    :cond_4f
    invoke-virtual {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingAndroidProject(Ljava/util/List;)V

    .line 488
    :goto_52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "打包共用时: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->nowTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public packagingAndroidProject(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 629
    const-string v0, "构建APK"

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 631
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getUnZipAlignedUnSignedApkFile()Ljava/io/File;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 635
    :cond_14
    new-instance v1, Lio/github/zeroaicy/aide/services/PackagingStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Lio/github/zeroaicy/aide/services/PackagingStream;-><init>(Ljava/io/OutputStream;)V

    .line 637
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAAptResourceFilePath()Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Adding aapt generated resources from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    .line 643
    new-instance v0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAndroidFxtractNativeLibs()Z

    move-result v2

    invoke-direct {v0, v2}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;-><init>(Z)V

    .line 645
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getNativeLibDirs()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 649
    :goto_4c
    array-length v4, v2

    if-lt v3, v4, :cond_59

    .line 653
    invoke-direct {p0, p1, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->addResource(Ljava/util/List;Lio/github/zeroaicy/aide/services/PackagingStream;)V

    .line 656
    invoke-virtual {v1}, Lio/github/zeroaicy/aide/services/PackagingStream;->close()V

    .line 657
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipalignApk()V

    return-void

    .line 645
    :cond_59
    aget-object v4, v2, v3

    .line 646
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 648
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "从原生库添加"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0, v4, v5, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingDirFile(Ljava/lang/String;Ljava/io/File;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;)V

    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c
.end method

.method public packagingDirFile(Ljava/lang/String;Ljava/io/File;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lio/github/zeroaicy/aide/services/ZipEntryTransformer;",
            "Lio/github/zeroaicy/aide/services/PackagingStream;",
            ")V^",
            "Ljava/io/FileNotFoundException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 760
    invoke-virtual {p2}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 761
    return-void

    .line 763
    :cond_d
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 p2, 0x0

    .line 767
    :goto_12
    array-length v1, v0

    if-lt p2, v1, :cond_16

    goto :goto_6e

    .line 763
    :cond_16
    aget-object v1, v0, p2

    .line 764
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 765
    return-void

    .line 767
    :cond_25
    invoke-virtual {p0, p1, v1, p3, p4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingDirFile(Ljava/lang/String;Ljava/io/File;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 772
    :cond_2b
    invoke-direct {p0, p2, p1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getZipEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 773
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 774
    if-eqz p3, :cond_3d

    invoke-interface {p3, v0, p4}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer;->transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 777
    return-void

    .line 780
    :cond_3d
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p1

    if-nez p1, :cond_4a

    .line 782
    invoke-virtual {p0, p2}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getFileCRC32(Ljava/io/File;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 785
    :cond_4a
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 786
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 788
    invoke-virtual {p4, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 790
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 791
    invoke-direct {p0, p1, p4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->streamTransfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 792
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    .line 794
    invoke-virtual {p4}, Lio/github/zeroaicy/aide/services/PackagingStream;->closeEntry()V

    :goto_6e
    return-void
.end method

.method public packagingJavaProject(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 719
    const-string v0, "packaging - JavaProject"

    const/16 v1, 0x49

    invoke-virtual {p0, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 721
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getOutFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 723
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 724
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 727
    :cond_1d
    new-instance v1, Lio/github/zeroaicy/aide/services/PackagingStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Lio/github/zeroaicy/aide/services/PackagingStream;-><init>(Ljava/io/OutputStream;)V

    .line 728
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_8b

    .line 735
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getAllDependencyLibs()[Ljava/lang/String;

    move-result-object p1

    .line 736
    if-eqz p1, :cond_87

    .line 737
    const/4 v2, 0x0

    .line 749
    :goto_36
    array-length v3, p1

    if-lt v2, v3, :cond_3a

    goto :goto_87

    .line 737
    :cond_3a
    aget-object v3, p1, v2

    .line 738
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-direct {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isCompileOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 741
    goto :goto_84

    .line 743
    :cond_47
    invoke-direct {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->isRuntimeOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 744
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "从仅打包依赖文件添加资源 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 745
    iget-object v4, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    invoke-direct {p0, v3, v4, v1, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    .line 746
    goto :goto_84

    .line 748
    :cond_69
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "从JAR文件添加资源 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->zipResourceZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;

    invoke-direct {p0, v3, v4, v1, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 754
    :cond_87
    :goto_87
    invoke-virtual {v1}, Lio/github/zeroaicy/aide/services/PackagingStream;->close()V

    return-void

    .line 729
    :cond_8b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 730
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Adding classes.dex from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->logDebug(Ljava/lang/String;)V

    .line 731
    iget-object v4, p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->dexZipEntryTransformer:Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;

    invoke-direct {p0, v3, v4, v1, v0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->packagingZipFile(Ljava/lang/String;Lio/github/zeroaicy/aide/services/ZipEntryTransformer;Lio/github/zeroaicy/aide/services/PackagingStream;Z)V

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_29
.end method

.method public proxySign(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 538
    const-string v0, "ZeroAicy Signing APK "

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->showProgress(Ljava/lang/String;I)V

    .line 539
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 540
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 542
    :cond_10
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getSignaturePath()Ljava/lang/String;

    move-result-object v0

    .line 544
    nop

    .line 545
    nop

    .line 547
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "X.509"

    const-string v3, ".pk8"

    const-string v4, ".x509.pem"

    if-eqz v1, :cond_d6

    .line 549
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_68

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_68

    .line 572
    :cond_35
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getSignaturePassword()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getSignatureAlias()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getSignatureAliasPassword()Ljava/lang/String;

    move-result-object v3

    .line 576
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 578
    new-instance v0, Lcom/aide/ui/build/android/I;

    invoke-direct {v0}, Lcom/aide/ui/build/android/I;-><init>()V

    .line 579
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 582
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 584
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_d5

    .line 551
    :cond_68
    :goto_68
    nop

    .line 552
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    .line 556
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_84
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 560
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 561
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 563
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 564
    new-instance v0, Lsun1/security/pkcs/PKCS8Key;

    invoke-direct {v0}, Lsun1/security/pkcs/PKCS8Key;-><init>()V

    .line 565
    invoke-virtual {v0, v4}, Lsun1/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 566
    nop

    .line 567
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v1, v0

    move-object v0, v2

    .line 584
    :goto_d5
    goto :goto_146

    .line 589
    :cond_d6
    nop

    .line 590
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 591
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "/assets/keys/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "testkey"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 592
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 593
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 595
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 596
    new-instance v3, Lsun1/security/pkcs/PKCS8Key;

    invoke-direct {v3}, Lsun1/security/pkcs/PKCS8Key;-><init>()V

    .line 597
    invoke-virtual {v3, v0}, Lsun1/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 598
    nop

    .line 599
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v0, v2

    move-object v1, v3

    .line 602
    :goto_146
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 603
    const-string v3, "v1"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 604
    const-string v5, "v2"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 605
    const-string v6, "v3"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 607
    new-instance v4, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    const-string v6, "ANDROID"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v6, v1, v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object v0

    .line 611
    new-instance v1, Lcom/android/apksig/ApkSigner$Builder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    const-string v0, "Android Gradle 8.4"

    invoke-virtual {v1, v0}, Lcom/android/apksig/ApkSigner$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;->getMinSdk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setMinSdkVersion(I)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/apksig/ApkSigner;->sign()V

    .line 622
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method
