.class public final Lcom/google/android/gms/internal/ads/ox;
.super Ljava/lang/Thread;


# static fields
.field private static final j6:Z


# instance fields
.field private final DW:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/internal/ads/El;

.field private final VH:Lcom/google/android/gms/internal/ads/py;

.field private volatile Zo:Z

.field private final v5:Lcom/google/android/gms/internal/ads/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db;->DW:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/ox;->j6:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;",
            "Lcom/google/android/gms/internal/ads/El;",
            "Lcom/google/android/gms/internal/ads/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ox;->Zo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ox;->DW:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ox;->FH:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ox;->Hw:Lcom/google/android/gms/internal/ads/El;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ox;->v5:Lcom/google/android/gms/internal/ads/b;

    new-instance v0, Lcom/google/android/gms/internal/ads/py;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/py;-><init>(Lcom/google/android/gms/internal/ads/ox;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ox;->VH:Lcom/google/android/gms/internal/ads/py;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/ox;)Lcom/google/android/gms/internal/ads/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ox;->v5:Lcom/google/android/gms/internal/ads/b;

    return-object v0
.end method

.method private final DW()V
    .registers 11

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ox;->DW:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lE;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->we()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->Hw:Lcom/google/android/gms/internal/ads/El;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/El;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->VH:Lcom/google/android/gms/internal/ads/py;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/py;->j6(Lcom/google/android/gms/internal/ads/py;Lcom/google/android/gms/internal/ads/lE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ow;->j6()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/lE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->VH:Lcom/google/android/gms/internal/ads/py;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/py;->j6(Lcom/google/android/gms/internal/ads/py;Lcom/google/android/gms/internal/ads/lE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/nD;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Ow;->j6:[B

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/Ow;->VH:Ljava/util/Map;

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/ads/nD;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object v4

    const-string v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/Ow;->Zo:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    const-string v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/lE;

    iput-boolean v2, v4, Lcom/google/android/gms/internal/ads/wH;->Hw:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->VH:Lcom/google/android/gms/internal/ads/py;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/py;->j6(Lcom/google/android/gms/internal/ads/py;Lcom/google/android/gms/internal/ads/lE;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->v5:Lcom/google/android/gms/internal/ads/b;

    new-instance v2, Lcom/google/android/gms/internal/ads/Px;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Px;-><init>(Lcom/google/android/gms/internal/ads/ox;Lcom/google/android/gms/internal/ads/lE;)V

    invoke-interface {v1, v0, v4, v2}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ox;->v5:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/ox;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ox;->FH:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ox;->Zo:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/ox;->j6:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Db;->FH(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ox;->Hw:Lcom/google/android/gms/internal/ads/El;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/El;->iW()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ox;->DW()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ox;->Zo:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
