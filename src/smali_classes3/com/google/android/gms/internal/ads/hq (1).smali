.class final Lcom/google/android/gms/internal/ads/hq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/br;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Lcom/google/android/gms/internal/ads/iq;

.field private final v5:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hq;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hq;->FH:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hq;->v5:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p3, Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p1, p2, p0, p0}, Lcom/google/android/gms/internal/ads/iq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private static DW()Lcom/google/android/gms/internal/ads/br;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/br;-><init>()V

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->a8:Ljava/lang/Long;

    return-object v0
.end method

.method private final FH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :cond_17
    return-void
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/lq;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->j6:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->j6()Lcom/google/android/gms/internal/ads/lq;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_9
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final j6(I)Lcom/google/android/gms/internal/ads/br;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/br;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    move-exception p1

    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/ads/hq;->DW()Lcom/google/android/gms/internal/ads/br;

    move-result-object p1

    :cond_15
    return-object p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hq;->j6()Lcom/google/android/gms/internal/ads/lq;

    move-result-object p1

    if-eqz p1, :cond_43

    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hq;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hq;->FH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/lq;->j6(Lcom/google/android/gms/internal/ads/zzbjg;)Lcom/google/android/gms/internal/ads/zzbji;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbji;->DW()Lcom/google/android/gms/internal/ads/br;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hq;->FH()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->v5:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_25
    move-exception p1

    :try_start_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/hq;->DW()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2f} :catch_3a
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_3b

    :catchall_30
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hq;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq;->v5:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :catch_3a
    move-exception p1

    :goto_3b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hq;->FH()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->v5:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_43
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/hq;->DW()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    :goto_b
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hq;->Hw:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/hq;->DW()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    :goto_b
    return-void
.end method
