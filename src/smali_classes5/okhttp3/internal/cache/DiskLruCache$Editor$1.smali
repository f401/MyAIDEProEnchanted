.class Lokhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lokhttp3/internal/cache/FaultHidingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
