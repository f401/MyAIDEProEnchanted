.class final Lcom/google/android/gms/internal/ads/py;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mF;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ox;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ox;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/py;->DW:Lcom/google/android/gms/internal/ads/ox;

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/lE;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Ws()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    :cond_38
    monitor-exit p0

    return v2

    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/mF;)V

    sget-boolean p1, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/py;Lcom/google/android/gms/internal/ads/lE;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/py;->DW(Lcom/google/android/gms/internal/ads/lE;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/lE;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Ws()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    sget-boolean v1, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/lE;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/mF;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_64

    :try_start_3d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/py;->DW:Lcom/google/android/gms/internal/ads/ox;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ox;->j6(Lcom/google/android/gms/internal/ads/ox;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_48
    .catchall {:try_start_3d .. :try_end_46} :catchall_64

    monitor-exit p0

    return-void

    :catch_48
    move-exception p1

    :try_start_49
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/py;->DW:Lcom/google/android/gms/internal/ads/ox;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ox;->j6()V
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_64

    :cond_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/wH<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wH;->DW:Lcom/google/android/gms/internal/ads/Ow;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ow;->j6()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_53

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Ws()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_50

    if-eqz v0, :cond_4f

    sget-boolean v1, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    if-eqz v1, :cond_35

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py;->DW:Lcom/google/android/gms/internal/ads/ox;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ox;->DW(Lcom/google/android/gms/internal/ads/ox;)Lcom/google/android/gms/internal/ads/b;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V

    goto :goto_39

    :cond_4f
    return-void

    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1

    :cond_53
    :goto_53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/py;->j6(Lcom/google/android/gms/internal/ads/lE;)V

    return-void
.end method
