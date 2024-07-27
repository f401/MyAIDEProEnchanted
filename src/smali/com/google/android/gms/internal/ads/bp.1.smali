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
    .registers 12

    sget-object v6, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/dp;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dp;-><init>(Lcom/google/android/gms/internal/ads/bp;IIZZ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/cp;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/cp;-><init>(Lcom/google/android/gms/internal/ads/bp;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public final BR()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DW(F)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 5

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzzw;->j6:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzzw;->DW:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzzw;->FH:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bp;->j6(ZZZ)V

    return-void
.end method

.method public final K3()V
    .registers 6

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2, v4, v0, v0}, Lcom/google/android/gms/internal/ads/bp;->DW(IIZZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final Nh()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bp;->iK()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->J0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->Hw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final PH()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Q6()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Za()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bp;->u7:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dW()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final iK()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->FH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->we:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(FFIZF)V
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/bp;->u7:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/bp;->tp:F

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bp;->gn:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/bp;->v5:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    iget v4, p0, Lcom/google/android/gms/internal/ads/bp;->EQ:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/sp;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2, p3, v0, p4}, Lcom/google/android/gms/internal/ads/bp;->DW(IIZZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic j6(IIZZ)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v7

    if-eq p1, p2, :cond_2

    move v2, v1

    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/bp;->VH:Z

    if-nez v3, :cond_3

    if-ne p2, v1, :cond_3

    move v6, v1

    :goto_1
    if-eqz v2, :cond_4

    if-ne p2, v1, :cond_4

    move v5, v1

    :goto_2
    if-eqz v2, :cond_5

    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    move v4, v1

    :goto_3
    if-eqz v2, :cond_6

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move v3, v1

    :goto_4
    if-eq p3, p4, :cond_7

    move v2, v1

    :goto_5
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/bp;->VH:Z

    if-nez v8, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bp;->VH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    if-nez v0, :cond_8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_2

    :cond_5
    move v4, v0

    goto :goto_3

    :cond_6
    move v3, v0

    goto :goto_4

    :cond_7
    move v2, v0

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->PT()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->TI()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_8
    if-eqz v4, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->fN()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->sM()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_a
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->ca()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    if-eqz v2, :cond_d

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/nI;->J8(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    :goto_b
    :try_start_7
    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_8
    const-string v1, "Unable to call onVideoStart()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v1, "Unable to call onVideoPlay()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v1, "Unable to call onVideoPause()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v1, "Unable to call onVideoMute()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/nI;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic j6(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->j6:Lcom/google/android/gms/internal/ads/Dn;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(ZZZ)V
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bp;->we:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bp;->J0:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    if-eqz p2, :cond_1

    const-string v3, "1"

    :goto_1
    if-eqz p3, :cond_2

    const-string v5, "1"

    :goto_2
    const-string v6, "initialState"

    const-string v0, "muteStart"

    const-string v2, "customControlsRequested"

    const-string v4, "clickToExpandRequested"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/util/f;->j6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    goto :goto_1

    :cond_2
    const-string v5, "0"

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .registers 4

    if-eqz p1, :cond_0

    const-string v0, "mute"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bp;->FH(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method

.method public final xg()Lcom/google/android/gms/internal/ads/nI;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->Zo:Lcom/google/android/gms/internal/ads/nI;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
