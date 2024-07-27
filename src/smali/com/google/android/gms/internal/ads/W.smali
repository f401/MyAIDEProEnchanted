.class public final Lcom/google/android/gms/internal/ads/W;
.super Lcom/google/android/gms/internal/ads/Ua;

# interfaces
.implements Lcom/google/android/gms/internal/ads/la;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:Lcom/google/android/gms/internal/ads/kI;

.field private FH:Ljava/lang/String;

.field private Hw:Lcom/google/android/gms/internal/ads/Ga;

.field private J0:Labcd/ox;

.field private J8:Ljava/lang/String;

.field private QX:Lcom/google/android/gms/internal/ads/ia;

.field private VH:Ljava/lang/String;

.field private Ws:Ljava/lang/Object;

.field private Zo:D

.field private gn:Ljava/lang/String;

.field private j6:Ljava/lang/String;

.field private tp:Landroid/os/Bundle;

.field private u7:Lcom/google/android/gms/internal/ads/P;

.field private v5:Ljava/lang/String;

.field private we:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Ga;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/P;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ads/kI;",
            "Landroid/view/View;",
            "Labcd/ox;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ua;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/W;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/W;->DW:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/W;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/W;->Hw:Lcom/google/android/gms/internal/ads/Ga;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/W;->v5:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/W;->Zo:D

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/W;->VH:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/W;->gn:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/W;->tp:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/W;->EQ:Lcom/google/android/gms/internal/ads/kI;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->J0:Labcd/ox;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->J8:Ljava/lang/String;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/W;)Lcom/google/android/gms/internal/ads/ia;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/W;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    return-object v0
.end method


# virtual methods
.method public final BT()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->J0:Labcd/ox;

    return-object v0
.end method

.method public final CU()Lcom/google/android/gms/internal/ads/Ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Hw:Lcom/google/android/gms/internal/ads/Ga;

    return-object v0
.end method

.method public final DW(Landroid/os/Bundle;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const-string v0, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DY()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

    return-object v0
.end method

.method public final FH(Landroid/os/Bundle;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const-string v0, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Hw()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->DW:Ljava/util/List;

    return-object v0
.end method

.method public final a8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->J8:Ljava/lang/String;

    return-object v0
.end method

.method public final destroy()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/W;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->j6:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->DW:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->FH:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->Hw:Lcom/google/android/gms/internal/ads/Ga;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->v5:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/W;->Zo:D

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->VH:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->gn:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->tp:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->EQ:Lcom/google/android/gms/internal/ads/kI;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

    return-void
.end method

.method public final et()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->tp:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->EQ:Lcom/google/android/gms/internal/ads/kI;

    return-object v0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/os/Bundle;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const-string v0, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/os/Bundle;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final kQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->gn:Ljava/lang/String;

    return-object v0
.end method

.method public final pn()Lcom/google/android/gms/internal/ads/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    return-object v0
.end method

.method public final rN()Lcom/google/android/gms/internal/ads/Ba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    return-object v0
.end method

.method public final ro()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public final vJ()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final wc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public final x6()Ljava/lang/String;
    .registers 2

    const-string v0, "2"

    return-object v0
.end method

.method public final yO()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/W;->Zo:D

    return-wide v0
.end method
