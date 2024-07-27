.class public final Lcom/google/android/gms/internal/ads/mC;
.super Ljava/lang/Thread;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/MB;

.field private final FH:Lcom/google/android/gms/internal/ads/El;

.field private final Hw:Lcom/google/android/gms/internal/ads/b;

.field private final j6:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile v5:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/MB;Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;>;",
            "Lcom/google/android/gms/internal/ads/MB;",
            "Lcom/google/android/gms/internal/ads/El;",
            "Lcom/google/android/gms/internal/ads/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mC;->v5:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mC;->j6:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mC;->DW:Lcom/google/android/gms/internal/ads/MB;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mC;->FH:Lcom/google/android/gms/internal/ads/El;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mC;->Hw:Lcom/google/android/gms/internal/ads/b;

    return-void
.end method

.method private final DW()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mC;->j6:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lE;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->we()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->J8()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mC;->DW:Lcom/google/android/gms/internal/ads/MB;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/MB;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;

    move-result-object v1

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/nD;->v5:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->rN()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->DW(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->er()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object v1

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->Mr()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/wH;->DW:Lcom/google/android/gms/internal/ads/Ow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mC;->FH:Lcom/google/android/gms/internal/ads/El;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->Ws()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/wH;->DW:Lcom/google/android/gms/internal/ads/Ow;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/ads/El;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->lg()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mC;->Hw:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/wH;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/db; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/db;->j6(J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mC;->Hw:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->er()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/Db;->j6(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/db;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/db;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/db;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mC;->Hw:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/b;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lE;->er()V

    goto :goto_0
.end method


# virtual methods
.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mC;->v5:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mC;->DW()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mC;->v5:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const-string v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Db;->DW(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
