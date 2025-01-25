.class public final Lcom/google/android/gms/internal/ads/DF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private FH:Lcom/google/android/gms/internal/ads/JF;

.field private Hw:Landroid/content/Context;

.field private final j6:Ljava/lang/Runnable;

.field private v5:Lcom/google/android/gms/internal/ads/NF;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/EF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/EF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->j6:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    return-void
.end method

.method private final DW()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    if-eqz v1, :cond_c

    goto :goto_2c

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/GF;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/GF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/HF;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/HF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/JF;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/JF;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    monitor-exit v0

    return-void

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    return-void
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    return-object p0
.end method

.method private final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/DF;)Lcom/google/android/gms/internal/ads/JF;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/JF;)Lcom/google/android/gms/internal/ads/JF;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/NF;)Lcom/google/android/gms/internal/ads/NF;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->FH()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    if-nez v1, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zztv;-><init>()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return-object p1

    :cond_e
    :try_start_e
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/NF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_14
    .catchall {:try_start_e .. :try_end_12} :catchall_21

    :try_start_12
    monitor-exit v0

    return-object p1

    :catch_14
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zztv;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final j6()V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->zg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DF;->j6:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DF;->j6:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->J1:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    return-void
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    if-eqz v1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->s0:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    goto :goto_46

    :cond_28
    sget-object p1, Lcom/google/android/gms/internal/ads/p;->hG:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/google/android/gms/internal/ads/FF;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/FF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gn()Lcom/google/android/gms/internal/ads/fF;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/fF;->j6(Lcom/google/android/gms/internal/ads/iF;)V

    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw p1
.end method
