.class public final Lcom/google/android/gms/ads/internal/C;
.super Lcom/google/android/gms/ads/internal/aa;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ja;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Mr:Z

.field private QX:Z

.field private U2:I

.field private final Ws:Ljava/lang/Object;

.field private XL:Lcom/google/android/gms/internal/ads/Rm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Rm",
            "<",
            "Lcom/google/android/gms/internal/ads/ka;",
            ">;"
        }
    .end annotation
.end field

.field private a8:Lcom/google/android/gms/internal/ads/dh;

.field private aM:Lcom/google/android/gms/internal/ads/Mo;

.field private j3:Lcom/google/android/gms/internal/ads/Mo;

.field private final lg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/C;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Z)V
    .registers 15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->XL:Lcom/google/android/gms/internal/ads/Rm;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/C;->U2:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->lg:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/C;->QX:Z

    return-void
.end method

.method private final BJ()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;
    .registers 21

    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/Y;

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/ads/Y;

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->jJ()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->DY()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->BT()Labcd/ox;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->cb()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    :goto_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/ads/ma;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :cond_1
    return-object v3

    :cond_2
    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/W;

    if-eqz v3, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/ads/W;

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->gn()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->yO()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->DY()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->BT()Labcd/ox;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->cb()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final Sc()Lcom/google/android/gms/internal/ads/qe;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V

    return-void
.end method

.method private static j6(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    :cond_d
    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/W;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/H;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/H;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/W;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Y;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/J;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/J;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/Y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/da;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/I;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/I;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/da;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final j6(Ljava/lang/String;Z)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v4, :cond_5

    move v8, v1

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    move-object v5, v3

    move-object v7, v0

    :goto_3
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bg;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, ""

    const-string v4, "javascript"

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bg;->j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v0, :cond_0

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Labcd/ox;)V

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v8, v2

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    const-string v5, "javascript"

    move-object v7, v3

    goto :goto_3

    :cond_7
    move-object v5, v3

    move-object v7, v3

    goto :goto_3
.end method

.method private final jD()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->J1()Lcom/google/android/gms/internal/ads/dh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dh;->j6()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final BN()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    :cond_0
    return-void
.end method

.method protected final BT(Labcd/ox;)V
    .registers 4

    if-eqz p1, :cond_1

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/ga;)V

    :cond_0
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->yS:Lcom/google/android/gms/internal/ads/zzafz;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v3, Lcom/google/android/gms/internal/ads/uE;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/uE;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/cF;Lcom/google/android/gms/internal/ads/Mo;)V

    goto :goto_0
.end method

.method public final F3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Vq()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->F3()V

    goto :goto_0
.end method

.method public final HO()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->BJ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const-string v1, "onSdkImpression"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final IM()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    goto :goto_0
.end method

.method protected final J0(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/C;->j6(IZ)V

    return-void
.end method

.method public final J1()Lcom/google/android/gms/internal/ads/dh;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->a8:Lcom/google/android/gms/internal/ads/dh;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final J8(I)V
    .registers 3

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/ads/internal/C;->U2:I

    return-void
.end method

.method protected final N2()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ads/ka;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->XL:Lcom/google/android/gms/internal/ads/Rm;

    return-object v0
.end method

.method public final NZ()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;Lcom/google/android/gms/internal/ads/Mo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    goto :goto_0
.end method

.method protected final XL(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->XL(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->pn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->NZ()V

    :cond_0
    return-void
.end method

.method public final Zo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    return-void
.end method

.method public final cX()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lb;

    goto :goto_0
.end method

.method public final eQ()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bp;->DW(Lcom/google/android/gms/internal/ads/zzzw;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/bp;->j6(ZZZ)V

    goto :goto_0
.end method

.method public final er()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final g0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/C;->XL(Z)V

    return-void
.end method

.method public final gM()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->gM()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kI;->xg()Lcom/google/android/gms/internal/ads/nI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->sM()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ab;->getVideoController()Lcom/google/android/gms/internal/ads/kI;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public final ir()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j6(IZ)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->jD()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/a;->j6(IZ)V

    return-void
.end method

.method public final j6(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->BJ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lg;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 12

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/D;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/D;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzasi;->aj:I

    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v6, v8, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AdRenderer: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "AdRenderer: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "slots"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v6

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ads"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v6

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->jD()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    :goto_4
    if-ge v2, v4, :cond_7

    new-instance v0, Lcom/google/android/gms/ads/internal/F;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/F;-><init>(Lcom/google/android/gms/ads/internal/C;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/lk;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ka;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/G;

    invoke-direct {v3, p0, v0, v2, v7}, Lcom/google/android/gms/ads/internal/G;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ka;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_7
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v1, "Malformed native ad response"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/ads/internal/C;->J0(I)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_7
    move v2, v6

    goto :goto_5
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 26

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/C;->Zo(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v3, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/C;->jD()V

    :try_start_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->fP()Lcom/google/android/gms/internal/ads/Ye;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v3

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v18

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_5

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_4
    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->jJ()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->yO()D

    move-result-wide v10

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_5
    const/4 v14, 0x0

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/Ye;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v22

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ye;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    :goto_7
    return v2

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v22, v3

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v21, v3

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v20, v3

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    if-eqz v21, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_8
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v10

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_9
    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_6
    const/4 v7, 0x0

    goto :goto_8

    :cond_7
    if-eqz v21, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v4, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/ads/W;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_a
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v9

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_b
    const/4 v13, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v17

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/W;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/W;)V

    goto/16 :goto_6

    :cond_8
    const/4 v7, 0x0

    goto :goto_a

    :cond_9
    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_b

    new-instance v3, Lcom/google/android/gms/internal/ads/da;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    :goto_c
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_d
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v17

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v6, p0

    move-object/from16 v8, v20

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_6

    :cond_a
    const/4 v7, 0x0

    goto :goto_c

    :cond_b
    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v2, :cond_e

    new-instance v6, Lcom/google/android/gms/internal/ads/Y;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v10

    :goto_e
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v2

    invoke-static {v2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :cond_c
    const/4 v13, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v17

    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/ha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object/from16 v9, p0

    move-object/from16 v11, v20

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Y;)V

    goto/16 :goto_6

    :cond_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_e
    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/L;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/ads/internal/L;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ab;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_f
    const-string v2, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/C;->J0(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/C;->QX:Z

    if-eqz v2, :cond_11

    const-string v2, "Google"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/C;->XL:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_11
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/Y;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_12

    const-string v2, "Google"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_6

    :cond_12
    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v2, :cond_13

    const-string v2, "Google"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    check-cast v2, Lcom/google/android/gms/internal/ads/Y;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Y;)V

    goto/16 :goto_6

    :cond_13
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/W;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_14

    const-string v2, "Google"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_6

    :cond_14
    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v2, :cond_15

    const-string v2, "Google"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    check-cast v2, Lcom/google/android/gms/internal/ads/W;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/W;)V

    goto/16 :goto_6

    :cond_15
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/aa;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v4, :cond_16

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/aa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aa;->vJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aa;->vJ()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/K;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/gms/ads/internal/K;-><init>(Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_16
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/U;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v2, :cond_17

    check-cast v3, Lcom/google/android/gms/internal/ads/U;

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/E;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/ads/internal/E;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/U;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_17
    const-string v2, "No matching listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/C;->J0(I)V

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    move-object/from16 v16, v2

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v16, v13

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v16, v9

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v16, v14

    goto/16 :goto_5
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->zg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/C;->U2:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ads"

    const-string v2, "Error initializing webview."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->v5()Z

    move-result v0

    return v0
.end method

.method public final jg()Labcd/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    return-object v0
.end method

.method public final ji()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->ya()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->ji()V

    goto :goto_0
.end method

.method public final jn()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final qI()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    :cond_0
    return-void
.end method

.method public final s0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->lg:Ljava/lang/String;

    return-object v0
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ys()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    return-object v0
.end method

.method final zg()V
    .registers 8

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v0, "Initializing webview native ads utills"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/C;->lg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->a8:Lcom/google/android/gms/internal/ads/dh;

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
