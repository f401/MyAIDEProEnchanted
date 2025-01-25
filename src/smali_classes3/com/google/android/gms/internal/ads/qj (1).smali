.class public final Lcom/google/android/gms/internal/ads/qj;
.super Lcom/google/android/gms/internal/ads/Ak;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wj;
.implements Lcom/google/android/gms/internal/ads/zj;
.implements Lcom/google/android/gms/internal/ads/Dj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final EQ:Lcom/google/android/gms/internal/ads/pe;

.field public final Hw:Ljava/lang/String;

.field private J0:I

.field private J8:I

.field private QX:Ljava/util/concurrent/Future;

.field private final VH:Lcom/google/android/gms/internal/ads/Ej;

.field private Ws:Lcom/google/android/gms/internal/ads/tj;

.field private volatile XL:Lcom/google/android/gms/ads/internal/gmsg/i;

.field private final Zo:Landroid/content/Context;

.field private final gn:Lcom/google/android/gms/internal/ads/zj;

.field private final tp:Ljava/lang/String;

.field private final u7:Ljava/lang/Object;

.field private final v5:Lcom/google/android/gms/internal/ads/lk;

.field private final we:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ej;Lcom/google/android/gms/internal/ads/zj;J)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->Zo:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qj;->tp:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qj;->EQ:Lcom/google/android/gms/internal/ads/pe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qj;->v5:Lcom/google/android/gms/internal/ads/lk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qj;->gn:Lcom/google/android/gms/internal/ads/zj;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/qj;->we:J

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/qj;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qj;->tp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/qj;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qj;->Zo:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/zj;)V

    :try_start_9
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->tp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->EQ:Lcom/google/android/gms/internal/ads/pe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->j6:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Je;->j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->tp:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/Je;->j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/qj;->j6(Ljava/lang/String;I)V

    return-void
.end method

.method private final j6(J)Z
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/qj;->we:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 p1, 0x0

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-gtz v3, :cond_17

    const/4 p1, 0x4

    :goto_14
    iput p1, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    return v2

    :cond_17
    :try_start_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1e

    const/4 p1, 0x1

    return p1

    :catch_1e
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x5

    goto :goto_14
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_e6

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/zj;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/wj;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/Dj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->v5:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v3

    :try_start_30
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/ads/rj;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/ads/rj;-><init>(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V

    :goto_3d
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    :cond_41
    sget-object v4, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/ads/sj;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/sj;-><init>(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/Je;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/yj;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_48} :catch_49

    goto :goto_3d

    :catch_49
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/qj;->j6(Ljava/lang/String;I)V

    :goto_55
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    :goto_5d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    monitor-enter v4

    :try_start_60
    iget v5, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    const/4 v6, 0x1

    if-eqz v5, :cond_95

    new-instance v5, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/vj;->j6(J)Lcom/google/android/gms/internal/ads/vj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    if-ne v6, v2, :cond_7c

    const/4 v2, 0x6

    goto :goto_7e

    :cond_7c
    iget v2, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    :goto_7e
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(I)Lcom/google/android/gms/internal/ads/vj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->EQ:Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vj;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vj;->j6()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->Ws:Lcom/google/android/gms/internal/ads/tj;

    :goto_93
    monitor-exit v4

    goto :goto_c4

    :cond_95
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/qj;->j6(J)Z

    move-result v5

    if-nez v5, :cond_e0

    new-instance v5, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    iget v7, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/vj;->j6(I)Lcom/google/android/gms/internal/ads/vj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/vj;->j6(J)Lcom/google/android/gms/internal/ads/vj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->EQ:Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/vj;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/vj;->j6()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/qj;->Ws:Lcom/google/android/gms/internal/ads/tj;
    :try_end_c3
    .catchall {:try_start_60 .. :try_end_c3} :catchall_e3

    goto :goto_93

    :goto_c4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/zj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yj;->j6(Lcom/google/android/gms/internal/ads/wj;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    if-ne v0, v6, :cond_d6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->gn:Lcom/google/android/gms/internal/ads/zj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zj;->j6(Ljava/lang/String;)V

    return-void

    :cond_d6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->gn:Lcom/google/android/gms/internal/ads/zj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zj;->j6(Ljava/lang/String;I)V

    return-void

    :cond_e0
    :try_start_e0
    monitor-exit v4

    goto/16 :goto_5d

    :catchall_e3
    move-exception v0

    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_e3

    throw v0

    :cond_e6
    :goto_e6
    return-void
.end method

.method public final Hw(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->XL:Lcom/google/android/gms/ads/internal/gmsg/i;

    if-eqz v0, :cond_9

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/i;->v5(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public final VH()Lcom/google/android/gms/internal/ads/tj;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->Ws:Lcom/google/android/gms/internal/ads/tj;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Zo()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->QX:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ak;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->QX:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final gn()Lcom/google/android/gms/internal/ads/pe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->EQ:Lcom/google/android/gms/internal/ads/pe;

    return-object v0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->v5:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->VH:Lcom/google/android/gms/internal/ads/Ej;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Je;)V

    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/qj;->j6(Ljava/lang/String;I)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/gmsg/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->XL:Lcom/google/android/gms/ads/internal/gmsg/i;

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final j6(Ljava/lang/String;I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/qj;->J0:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/qj;->J8:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qj;->u7:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_f
    move-exception p2

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p2
.end method
