.class public final Lcom/google/android/gms/internal/ads/bp;
.super Lcom/google/android/gms/internal/ads/lI;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private EQ:F

.field private final FH:Z

.field private final Hw:Z

.field private J0:Z

.field private VH:Z

.field private Zo:Lcom/google/android/gms/internal/ads/nI;

.field private gn:Z

.field private final j6:Lcom/google/android/gms/internal/ads/Dn;

.field private tp:F

.field private u7:F

.field private v5:I

.field private we:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;FZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lI;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/bp;->u7:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bp;->FH:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bp;->Hw:Z

    return-void
.end method

.method private final DW(IIZZ)V
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/gms/internal/ads/dp;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/dp;-><init>(Lcom/google/android/gms/internal/ads/bp;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_e
    const-string v0, "action"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/cp;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/cp;-><init>(Lcom/google/android/gms/internal/ads/bp;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final BR()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final DW(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 4

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzzw;->j6:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzzw;->DW:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzzw;->FH:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/bp;->j6(ZZZ)V

    return-void
.end method

.method public final K3()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/bp;->DW(IIZZ)V

    return-void

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final Nh()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bp;->iK()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_15

    :try_start_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->J0:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->Hw:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :catchall_13
    move-exception v0

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit v1

    return v0

    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_13

    throw v0
.end method

.method public final PH()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Q6()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Za()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/bp;->u7:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final dW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final iK()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bp;->FH:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bp;->we:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final j6(FFIZF)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p2, p0, Lcom/google/android/gms/internal/ads/bp;->u7:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iget p2, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    sub-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v1, 0x38d1b717  # 1.0E-4f

    cmpl-float p5, p5, v1

    if-lez p5, :cond_28

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/sp;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/bp;->DW(IIZZ)V

    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method final synthetic j6(IIZZ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    :try_start_a
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/bp;->VH:Z

    if-nez v3, :cond_12

    if-ne p2, v1, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    if-eqz p1, :cond_19

    if-ne p2, v1, :cond_19

    const/4 v5, 0x1

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    if-eqz p1, :cond_21

    const/4 v6, 0x2

    if-ne p2, v6, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :goto_22
    if-eqz p1, :cond_29

    const/4 p1, 0x3

    if-ne p2, p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eq p3, p4, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    if-nez v3, :cond_35

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :cond_35
    :goto_35
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bp;->VH:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    if-nez p3, :cond_3d

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_88

    return-void

    :cond_3d
    if-eqz v4, :cond_49

    :try_start_3f
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/nI;->PT()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_88

    goto :goto_49

    :catch_43
    move-exception p3

    :try_start_44
    const-string v1, "Unable to call onVideoStart()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_88

    :cond_49
    :goto_49
    if-eqz v5, :cond_57

    :try_start_4b
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/nI;->TI()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_88

    goto :goto_57

    :catch_51
    move-exception p3

    :try_start_52
    const-string v1, "Unable to call onVideoPlay()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_88

    :cond_57
    :goto_57
    if-eqz v6, :cond_65

    :try_start_59
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/nI;->fN()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_88

    goto :goto_65

    :catch_5f
    move-exception p3

    :try_start_60
    const-string v1, "Unable to call onVideoPause()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_88

    :cond_65
    :goto_65
    if-eqz p1, :cond_78

    :try_start_67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nI;->sM()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d
    .catchall {:try_start_67 .. :try_end_6c} :catchall_88

    goto :goto_73

    :catch_6d
    move-exception p1

    :try_start_6e
    const-string p3, "Unable to call onVideoEnd()"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->ca()V
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_88

    :cond_78
    if-eqz p2, :cond_86

    :try_start_7a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/nI;->J8(Z)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7f} :catch_80
    .catchall {:try_start_7a .. :try_end_7f} :catchall_88

    goto :goto_86

    :catch_80
    move-exception p1

    :try_start_81
    const-string p2, "Unable to call onVideoMute()"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/nI;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method final synthetic j6(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(ZZZ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bp;->we:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bp;->J0:Z

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_30

    if-eqz p1, :cond_d

    const-string p1, "1"

    goto :goto_f

    :cond_d
    const-string p1, "0"

    :goto_f
    move-object v1, p1

    if-eqz p2, :cond_15

    const-string p1, "1"

    goto :goto_17

    :cond_15
    const-string p1, "0"

    :goto_17
    move-object v3, p1

    if-eqz p3, :cond_1d

    const-string p1, "1"

    goto :goto_1f

    :cond_1d
    const-string p1, "0"

    :goto_1f
    move-object v5, p1

    const-string p1, "initialState"

    const-string v0, "muteStart"

    const-string v2, "customControlsRequested"

    const-string v4, "clickToExpandRequested"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/util/f;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final k1()V
    .registers 3

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .registers 3

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final we(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const-string p1, "mute"

    goto :goto_7

    :cond_5
    const-string p1, "unmute"

    :goto_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final xg()Lcom/google/android/gms/internal/ads/nI;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
