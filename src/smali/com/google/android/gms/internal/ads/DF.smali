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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/GF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/GF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/HF;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/HF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/JF;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/ads/JF;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    return-void
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/DF;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    return-object v0
.end method

.method private final FH()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/DF;)Lcom/google/android/gms/internal/ads/JF;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/DF;Lcom/google/android/gms/internal/ads/JF;)Lcom/google/android/gms/internal/ads/JF;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->FH:Lcom/google/android/gms/internal/ads/JF;

    return-object v0
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
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztv;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->v5:Lcom/google/android/gms/internal/ads/NF;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/NF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztv;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final j6()V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->zg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DF;->j6:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DF;->j6:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->J1:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DF;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DF;->Hw:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->s0:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DF;->DW()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->hG:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/FF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/FF;-><init>(Lcom/google/android/gms/internal/ads/DF;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gn()Lcom/google/android/gms/internal/ads/fF;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/fF;->j6(Lcom/google/android/gms/internal/ads/iF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
