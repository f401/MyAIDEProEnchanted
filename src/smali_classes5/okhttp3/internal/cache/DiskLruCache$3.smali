.class Lokhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
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
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field final this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v0, v0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_14

    monitor-exit v3

    move v0, v2

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v4, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v4, :cond_14

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_14

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    monitor-exit v3

    move v0, v1

    goto :goto_7

    :cond_33
    monitor-exit v3

    move v0, v2

    goto :goto_7

    :catchall_36
    move-exception v0

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$3;->next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 3

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_15

    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_1d
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    :goto_e
    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void

    :catchall_11
    move-exception v0

    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1d
    move-exception v0

    goto :goto_e
.end method
