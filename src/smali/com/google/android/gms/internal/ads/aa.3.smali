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
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx",
            "<",
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
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;",
            "Lx",
            "<",
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
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/aa;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    return-object v0
.end method


# virtual methods
.method public final DY()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    return-object v0
.end method

.method public final EQ()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const-string v0, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final U2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final cn(Ljava/lang/String;)V
    .registers 10

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const-string v0, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final destroy()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ca;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ca;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aa;->v5:Lcom/google/android/gms/internal/ads/kI;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

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
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final oa()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v1}, Labcd/x;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->FH:Labcd/x;

    invoke-virtual {v0, v1}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa;->Hw:Labcd/x;

    invoke-virtual {v0, v2}, Labcd/x;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ga;

    return-object v0
.end method

.method public final x6()Ljava/lang/String;
    .registers 2

    const-string v0, "3"

    return-object v0
.end method

.method public final yS(Labcd/ox;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_1

    const-string v1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aa;->Zo:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/ba;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ba;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aa;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
