.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iput-boolean v2, p0, Lokhttp3/Cache$2;->canRemove:Z

    :goto_a
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    :try_start_12
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_39

    const/4 v3, 0x0

    :try_start_1b
    invoke-virtual {v0, v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_30

    if-eqz v0, :cond_2e

    :try_start_2b
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39

    :cond_2e
    move v0, v1

    goto :goto_7

    :catchall_30
    move-exception v3

    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v4

    if-eqz v0, :cond_38

    :try_start_35
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3b

    :cond_38
    :goto_38
    :try_start_38
    throw v4

    :catch_39
    move-exception v0

    goto :goto_a

    :catchall_3b
    move-exception v0

    invoke-static {v3, v0}, Lokhttp3/Cache$2$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_39

    goto :goto_38

    :cond_40
    move v0, v2

    goto :goto_7
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
