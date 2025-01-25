.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void

    :cond_f
    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    goto :goto_c
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public abortUnlessCommitted()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-ne v0, p0, :cond_13

    :try_start_d
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_18
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0

    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method detach()V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_22

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1d

    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_23

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    :cond_22
    return-void

    :catch_23
    move-exception v1

    goto :goto_1a
.end method

.method public newSink(I)Lokio/Sink;
    .registers 5

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v0, p0, :cond_13

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v0

    monitor-exit v1

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    :cond_1e
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_33

    :try_start_24
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v2, v0}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2b} :catch_36
    .catchall {:try_start_24 .. :try_end_2b} :catchall_33

    move-result-object v2

    :try_start_2c
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v1

    goto :goto_12

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v0

    :catch_36
    move-exception v0

    :try_start_37
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v0

    monitor-exit v1

    goto :goto_12

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_33
.end method

.method public newSource(I)Lokio/Source;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v2, :cond_2c

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_16

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_26

    :goto_15
    return-object v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_23} :catch_29
    .catchall {:try_start_16 .. :try_end_23} :catchall_26

    move-result-object v0

    :try_start_24
    monitor-exit v1

    goto :goto_15

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v0

    :catch_29
    move-exception v2

    :try_start_2a
    monitor-exit v1

    goto :goto_15

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_26
.end method
