.class public Lcom/sun/tools/javac/file/ZipFileIndexCache;
.super Ljava/lang/Object;
.source "ZipFileIndexCache.java"


# static fields
.field private static sharedInstance:Lcom/sun/tools/javac/file/ZipFileIndexCache;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/sun/tools/javac/file/ZipFileIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    return-void
.end method

.method public static getSharedInstance()Lcom/sun/tools/javac/file/ZipFileIndexCache;
    .registers 2

    const-class v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->sharedInstance:Lcom/sun/tools/javac/file/ZipFileIndexCache;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    invoke-direct {v0}, Lcom/sun/tools/javac/file/ZipFileIndexCache;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->sharedInstance:Lcom/sun/tools/javac/file/ZipFileIndexCache;

    .line 50
    :cond_e
    sget-object v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->sharedInstance:Lcom/sun/tools/javac/file/ZipFileIndexCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const-class v1, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_14
    move-exception v0

    const-class v1, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    monitor-exit v1

    throw v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/ZipFileIndexCache;
    .registers 3

    .line 55
    const-class v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    .line 56
    if-nez v0, :cond_14

    .line 57
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    invoke-direct {v0}, Lcom/sun/tools/javac/file/ZipFileIndexCache;-><init>()V

    const-class v1, Lcom/sun/tools/javac/file/ZipFileIndexCache;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 58
    :cond_14
    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .registers 2

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCache(J)V
    .registers 12

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 119
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 120
    if-eqz v1, :cond_b

    .line 121
    iget-wide v4, v1, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    add-long/2addr v4, p1

    .line 122
    iget-wide v6, v1, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_32

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_b

    .line 124
    :cond_32
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_b

    .line 115
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_3b
    monitor-exit p0

    return-void
.end method

.method public getExistingZipIndex(Ljava/io/File;)Lcom/sun/tools/javac/file/ZipFileIndex;
    .registers 3

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZipFileIndex(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;ZLjava/lang/String;Z)Lcom/sun/tools/javac/file/ZipFileIndex;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndexCache;->getExistingZipIndex(Ljava/io/File;)Lcom/sun/tools/javac/file/ZipFileIndex;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_13

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_22

    .line 100
    :cond_13
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndex;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/file/ZipFileIndex;-><init>(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;ZZLjava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 104
    :cond_22
    monitor-exit p0

    return-object v0

    .line 96
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZipFileIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex;",
            ">;"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/ZipFileIndexCache;->getZipFileIndexes(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZipFileIndexes(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    if-eqz p1, :cond_2e

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 84
    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->isOpen()Z

    move-result v3

    if-nez v3, :cond_15

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_15

    .line 77
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_2e
    monitor-exit p0

    return-object v1
.end method

.method public removeFromCache(Ljava/io/File;)V
    .registers 3

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpenedIndexes(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 146
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexCache;->map:Ljava/util/Map;

    iget-object v3, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_d

    .line 137
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_24
    monitor-exit p0

    return-void

    .line 139
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting opened indexes should be called only when the ZipFileCache is empty. Call JavacFileManager.flush() before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_21
.end method
