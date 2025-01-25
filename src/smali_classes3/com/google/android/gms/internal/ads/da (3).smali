.class public final Lcom/google/android/gms/internal/ads/da;
.super Lcom/google/android/gms/internal/ads/Ab;

# interfaces
.implements Lcom/google/android/gms/internal/ads/la;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:Ljava/lang/String;

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Z

.field private J0:Lcom/google/android/gms/internal/ads/kI;

.field private J8:Landroid/view/View;

.field private QX:Ljava/lang/String;

.field private VH:Ljava/lang/String;

.field private Ws:Labcd/ox;

.field private XL:Landroid/os/Bundle;

.field private Zo:Lcom/google/android/gms/internal/ads/Ga;

.field private final aM:Ljava/lang/Object;

.field private gn:Ljava/lang/String;

.field private j3:Lcom/google/android/gms/internal/ads/ia;

.field private j6:Ljava/lang/String;

.field private tp:Ljava/lang/String;

.field private u7:D

.field private v5:Ljava/lang/String;

.field private we:Lcom/google/android/gms/internal/ads/P;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Ga;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/P;",
            "Lcom/google/android/gms/internal/ads/kI;",
            "Landroid/view/View;",
            "Labcd/ox;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ab;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->j6:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->DW:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->FH:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/da;->Hw:Z

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->v5:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->Zo:Lcom/google/android/gms/internal/ads/Ga;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->VH:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->gn:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/da;->u7:D

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->tp:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->EQ:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->we:Lcom/google/android/gms/internal/ads/P;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->J0:Lcom/google/android/gms/internal/ads/kI;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->J8:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->Ws:Labcd/ox;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->QX:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/da;->XL:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/ia;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/da;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    return-object p1
.end method


# virtual methods
.method public final BT()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->Ws:Labcd/ox;

    return-object v0
.end method

.method public final CU()Lcom/google/android/gms/internal/ads/Ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->Zo:Lcom/google/android/gms/internal/ads/Ga;

    return-object v0
.end method

.method public final DW(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_e

    const-string p1, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final DY()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->J8:Landroid/view/View;

    return-object v0
.end method

.method public final FH(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_e

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final Hw()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->DW:Ljava/util/List;

    return-object v0
.end method

.method public final Xa()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Xa()V

    return-void
.end method

.method public final a8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public final ba()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->QX:Ljava/lang/String;

    return-object v0
.end method

.method public final ce()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/fa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/fa;-><init>(Lcom/google/android/gms/internal/ads/da;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final et()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->XL:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->J0:Lcom/google/android/gms/internal/ads/kI;

    return-object v0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/dI;)V
    .registers 2

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/gI;)V
    .registers 2

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Lcom/google/android/gms/internal/ads/xb;)V

    return-void
.end method

.method public final j6(Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_f

    const-string p1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final jJ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->gn:Ljava/lang/String;

    return-object v0
.end method

.method public final kQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public final n5()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->n5()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final pn()Lcom/google/android/gms/internal/ads/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->we:Lcom/google/android/gms/internal/ads/P;

    return-object v0
.end method

.method public final qp()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->aM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->j3:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->qp()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final rN()Lcom/google/android/gms/internal/ads/Ba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->we:Lcom/google/android/gms/internal/ads/P;

    return-object v0
.end method

.method public final ro()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final vJ()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final wc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public final x6()Ljava/lang/String;
    .registers 2

    const-string v0, "6"

    return-object v0
.end method

.method public final yO()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->u7:D

    return-wide v0
.end method
