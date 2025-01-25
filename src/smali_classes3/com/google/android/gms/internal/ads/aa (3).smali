.class public final Lcom/google/android/gms/internal/ads/aa;
.super Lcom/google/android/gms/internal/ads/bb;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ka;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/lang/Object;

.field private Zo:Landroid/view/View;

.field private gn:Lcom/google/android/gms/internal/ads/ia;

.field private final j6:Lcom/google/android/gms/internal/ads/P;

.field private v5:Lcom/google/android/gms/internal/ads/kI;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/x;Labcd/x;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;",
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/P;",
            "Lcom/google/android/gms/internal/ads/kI;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa;->DW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aa;->j6:Lcom/google/android/gms/internal/ads/P;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aa;->v5:Lcom/google/android/gms/internal/ads/kI;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/ia;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/aa;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    return-object p1
.end method


# virtual methods
.method public final DY()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    return-object v0
.end method

.method public final EQ()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_e

    const-string v1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final U2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final cn(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_e

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final destroy()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ca;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ca;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->v5:Lcom/google/android/gms/internal/ads/kI;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    return-void
.end method

.method public final et()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->v5:Lcom/google/android/gms/internal/ads/kI;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final oa()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v1}, Labcd/x;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v4}, Labcd/x;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v4, v3}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v3}, Labcd/x;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v3, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final pn()Lcom/google/android/gms/internal/ads/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->j6:Lcom/google/android/gms/internal/ads/P;

    return-object v0
.end method

.method public final sv()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final vJ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final vy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ga;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Ga;

    return-object p1
.end method

.method public final x6()Ljava/lang/String;
    .registers 2

    const-string v0, "3"

    return-object v0
.end method

.method public final yS(Labcd/ox;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return v1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    if-nez v0, :cond_10

    return v1

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ba;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V

    const/4 p1, 0x1

    return p1
.end method
