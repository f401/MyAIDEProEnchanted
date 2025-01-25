.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v0, v0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_12

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2b

    :goto_11
    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_2e
    .catchall {:try_start_12 .. :try_end_17} :catchall_2b

    :goto_17
    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    iput v2, v0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_35
    .catchall {:try_start_17 .. :try_end_29} :catchall_2b

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v1

    goto :goto_11

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v0

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    goto :goto_17

    :catch_35
    move-exception v0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_2b

    goto :goto_29
.end method
