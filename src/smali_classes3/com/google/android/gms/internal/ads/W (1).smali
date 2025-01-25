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
            "Ljava/util/List<",
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
    .registers 19
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

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ua;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->j6:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->DW:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->FH:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->Hw:Lcom/google/android/gms/internal/ads/Ga;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->v5:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/W;->Zo:D

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->VH:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->gn:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->tp:Landroid/os/Bundle;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->EQ:Lcom/google/android/gms/internal/ads/kI;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->J0:Labcd/ox;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/W;->J8:Ljava/lang/String;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/W;)Lcom/google/android/gms/internal/ads/ia;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/W;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

    return-object v0
.end method

.method public final FH(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/W;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->j6:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->DW:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->FH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Hw:Lcom/google/android/gms/internal/ads/Ga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->v5:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/W;->Zo:D

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->VH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->u7:Lcom/google/android/gms/internal/ads/P;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->tp:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->EQ:Lcom/google/android/gms/internal/ads/kI;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->we:Landroid/view/View;

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
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final j6(Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/W;->QX:Lcom/google/android/gms/internal/ads/ia;

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
