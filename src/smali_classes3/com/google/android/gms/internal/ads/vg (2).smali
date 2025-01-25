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

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

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
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AdRendererBackgroundTask started."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/lk;->v5:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_60

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/vg;->j6(J)V
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/yg; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_60

    goto :goto_50

    :catch_14
    move-exception v1

    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yg;->j6()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    goto :goto_28

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_2f

    :cond_28
    :goto_28
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    if-nez v1, :cond_3b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    :goto_38
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    goto :goto_45

    :cond_3b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    goto :goto_38

    :goto_45
    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/wg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/wg;-><init>(Lcom/google/android/gms/internal/ads/vg;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/vg;->DW(I)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/xg;-><init>(Lcom/google/android/gms/internal/ads/vg;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_15 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw v1

    :goto_64
    goto :goto_63
.end method

.method protected abstract j6(J)V
.end method
