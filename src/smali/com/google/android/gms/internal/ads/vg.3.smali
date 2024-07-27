.class public abstract Lcom/google/android/gms/internal/ads/vg;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field protected final Hw:Lcom/google/android/gms/internal/ads/Ag;

.field protected final VH:Ljava/lang/Object;

.field protected final Zo:Ljava/lang/Object;

.field protected final gn:Lcom/google/android/gms/internal/ads/lk;

.field protected u7:Lcom/google/android/gms/internal/ads/zzasm;

.field protected final v5:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ak;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->Zo:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vg;->v5:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    return-void
.end method


# virtual methods
.method protected abstract DW(I)Lcom/google/android/gms/internal/ads/kk;
.end method

.method public DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vg;->Zo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/lk;->v5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/ads/vg;->j6(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/yg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vg;->DW(I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/xg;-><init>(Lcom/google/android/gms/internal/ads/vg;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yg;->j6()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/wg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/wg;-><init>(Lcom/google/android/gms/internal/ads/vg;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract j6(J)V
.end method
