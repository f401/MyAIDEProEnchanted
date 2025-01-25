.class public final Lcom/google/android/gms/internal/ads/Ux;
.super Lcom/google/android/gms/internal/ads/jy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V
    .registers 14

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    return-void
.end method

.method private final FH()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->J0()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hx;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_38

    :try_start_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/br;->jO:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/br;->ko:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->oY:Ljava/lang/Integer;

    monitor-exit v2

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    :cond_39
    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/Void;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->DW()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/jy;->DW()Ljava/lang/Void;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->VH()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ux;->FH()V

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ux;->DW()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->VH()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ux;->FH()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ax;->j6()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/br;->jO:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2a

    throw v1
.end method
