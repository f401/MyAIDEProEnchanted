.class public final Lcom/google/android/gms/internal/ads/Zx;
.super Lcom/google/android/gms/internal/ads/jy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V
    .registers 14

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    return-void
.end method


# virtual methods
.method protected final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ax;->j6()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/mx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/mx;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3a

    :try_start_20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/mx;->DW:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/br;->v5:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/mx;->FH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/br;->kQ:Ljava/lang/Long;

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_37

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3a

    return-void

    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v2

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3a

    throw v1
.end method
