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
            "Lcom/google/android/gms/internal/ads/Rm<",
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

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->XL:Lcom/google/android/gms/internal/ads/Rm;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/ads/internal/C;->U2:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->lg:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/C;->QX:Z

    return-void
.end method

.method private final BJ()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;
    .registers 21

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Y;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    check-cast v0, Lcom/google/android/gms/internal/ads/Y;

    new-instance v1, Lcom/google/android/gms/internal/ads/da;

    move-object v3, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->gn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->jJ()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L  # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->DY()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->BT()Labcd/ox;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->cb()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v3

    if-eqz v3, :cond_a7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v0

    :goto_4d
    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    goto :goto_a3

    :cond_53
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/W;

    if-eqz v1, :cond_a6

    check-cast v0, Lcom/google/android/gms/internal/ads/W;

    new-instance v1, Lcom/google/android/gms/internal/ads/da;

    move-object v3, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->a8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->Hw()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->gn()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->yO()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->wc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->kQ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->DY()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->BT()Labcd/ox;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->cb()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v3

    if-eqz v3, :cond_a7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v0

    goto :goto_4d

    :goto_a3
    move-object v1, v2

    move-object v2, v0

    goto :goto_a7

    :cond_a6
    move-object v1, v2

    :cond_a7
    :goto_a7
    instance-of v0, v2, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v0, :cond_b0

    check-cast v2, Lcom/google/android/gms/internal/ads/ma;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :cond_b0
    return-object v1
.end method

.method private final Sc()Lcom/google/android/gms/internal/ads/qe;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V

    return-void
.end method

.method private static j6(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    :cond_18
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    :cond_20
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    :cond_28
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    :cond_30
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->ro:Ljava/util/List;

    :cond_38
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    :cond_40
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    :cond_48
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    :cond_50
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    :cond_58
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_60
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    :cond_68
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    if-nez v0, :cond_70

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iput-object p0, p1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    :cond_70
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
    .registers 11

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    const/4 v1, 0x0

    if-eqz v2, :cond_1d

    move-object v6, v1

    goto :goto_26

    :cond_1d
    if-eqz v0, :cond_24

    const-string v1, "javascript"

    move-object v6, v1

    move-object p2, v3

    goto :goto_26

    :cond_24
    move-object p2, v1

    move-object v6, p2

    :goto_26
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_2d

    return-void

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/bg;->DW(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, ""

    const-string v5, "javascript"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bg;->j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-nez p1, :cond_71

    return-void

    :cond_71
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Labcd/ox;)V

    if-eqz v0, :cond_87

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_87

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_87
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;)V

    :cond_90
    return-void
.end method

.method private final jD()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->J1()Lcom/google/android/gms/internal/ads/dh;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dh;->j6()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final BN()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    :cond_a
    return-void
.end method

.method protected final BT(Labcd/ox;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/ga;)V

    :cond_7
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->yS:Lcom/google/android/gms/internal/ads/zzafz;

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v3, Lcom/google/android/gms/internal/ads/uE;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/uE;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/cF;Lcom/google/android/gms/internal/ads/Mo;)V

    return-void
.end method

.method public final F3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_14

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Vq()V

    return-void

    :cond_14
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->F3()V

    return-void
.end method

.method public final HO()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->BJ()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_23

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method public final IM()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_e

    goto :goto_1e

    :cond_e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void

    :cond_1e
    :goto_1e
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method protected final J0(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/C;->j6(IZ)V

    return-void
.end method

.method public final J1()Lcom/google/android/gms/internal/ads/dh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/C;->a8:Lcom/google/android/gms/internal/ads/dh;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
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
            "Ljava/util/concurrent/Future<",
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

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_b

    goto :goto_28

    :cond_b
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

    return-void

    :cond_28
    :goto_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method protected final XL(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->XL(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/C;->Mr:Z

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->pn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->NZ()V

    :cond_1c
    return-void
.end method

.method public final Zo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    if-nez v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/lb;

    return-object p1
.end method

.method public final eQ()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bp;->DW(Lcom/google/android/gms/internal/ads/zzzw;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/bp;->j6(ZZZ)V

    :cond_3f
    return-void
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
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-nez v0, :cond_c

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->gM()V

    return-void

    :cond_c
    :try_start_c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    goto :goto_2e

    :cond_17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    goto :goto_2e

    :cond_22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ab;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-nez v0, :cond_31

    return-void

    :cond_31
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kI;->xg()Lcom/google/android/gms/internal/ads/nI;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nI;->sM()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3a} :catch_3b

    :cond_3a
    return-void

    :catch_3b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ir()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
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

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->BJ()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/C;->aM:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lg;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 15

    const-string v0, ""

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_a
    iget v1, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1a

    sget-object p2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/D;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/D;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1a
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->aj:I

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-ne v1, v2, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v8, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "AdRenderer: "

    if-eqz p2, :cond_59

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5e

    :cond_59
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_62
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :try_start_67
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "slots"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_77
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9d

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ads"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_88
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9a

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_97} :catch_104

    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    :cond_9d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->jD()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_a6
    if-ge v10, v1, :cond_bd

    new-instance v11, Lcom/google/android/gms/ads/internal/F;

    move-object v2, v11

    move-object v3, p0

    move v4, v10

    move-object v5, p2

    move v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/ads/internal/F;-><init>(Lcom/google/android/gms/ads/internal/C;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/lk;)V

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_a6

    :cond_bd
    :goto_bd
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_103

    :try_start_c3
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Hm;

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ka;

    sget-object p2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/G;

    invoke-direct {v1, p0, p1, v8, v9}, Lcom/google/android/gms/ads/internal/G;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ka;ILjava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_c3 .. :try_end_eb} :catch_f5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c3 .. :try_end_eb} :catch_f0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c3 .. :try_end_eb} :catch_ee
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c3 .. :try_end_eb} :catch_ec

    goto :goto_100

    :catch_ec
    move-exception p1

    goto :goto_f1

    :catch_ee
    move-exception p1

    goto :goto_f1

    :catch_f0
    move-exception p1

    :goto_f1
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_100

    :catch_f5
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_100
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    :cond_103
    return-void

    :catch_104
    move-exception p1

    const-string p2, "Malformed native ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/ads/internal/C;->J0(I)V

    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 30

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/C;->Zo(Ljava/util/List;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v1

    if-eqz v1, :cond_35f

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2b5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/C;->jD()V

    :try_start_18
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_24

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->fP()Lcom/google/android/gms/internal/ads/Ye;

    move-result-object v1

    move-object v5, v1

    goto :goto_25

    :cond_24
    move-object v5, v0

    :goto_25
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_31

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v1

    move-object v6, v1

    goto :goto_32

    :cond_31
    move-object v6, v0

    :goto_32
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_3e

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object v1

    move-object v9, v1

    goto :goto_3f

    :cond_3e
    move-object v9, v0

    :goto_3f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v1, :cond_4a

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->pl()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v1

    goto :goto_4b

    :cond_4a
    move-object v1, v0

    :goto_4b
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/aa;->FH(Lcom/google/android/gms/internal/ads/kk;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_c5

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_c5

    new-instance v9, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    move-object v14, v1

    goto :goto_72

    :cond_71
    move-object v14, v0

    :goto_72
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->yO()D

    move-result-wide v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->wc()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->kQ()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_9a
    move-object/from16 v23, v0

    const/16 v21, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ye;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ye;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :goto_c0
    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_351

    :cond_c5
    if-eqz v6, :cond_136

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_136

    new-instance v9, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    if-eqz v1, :cond_e7

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    move-object v14, v1

    goto :goto_e8

    :cond_e7
    move-object v14, v0

    :goto_e8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v1

    if-eqz v1, :cond_10c

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_10c
    move-object/from16 v23, v0

    const/16 v16, 0x0

    const/16 v21, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_c0

    :cond_136
    if-eqz v6, :cond_1a9

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v4, :cond_1a9

    new-instance v9, Lcom/google/android/gms/internal/ads/W;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    if-eqz v1, :cond_158

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    move-object v14, v1

    goto :goto_159

    :cond_158
    move-object v14, v0

    :goto_159
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->yO()D

    move-result-wide v16

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->wc()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->kQ()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v1

    if-eqz v1, :cond_181

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->aq()Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_181
    move-object/from16 v23, v0

    const/16 v20, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Se;->BT()Labcd/ox;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/W;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/W;)V

    goto/16 :goto_351

    :cond_1a9
    if-eqz v9, :cond_217

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_217

    new-instance v6, Lcom/google/android/gms/internal/ads/da;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    if-eqz v1, :cond_1cb

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    move-object v14, v1

    goto :goto_1cc

    :cond_1cb
    move-object v14, v0

    :goto_1cc
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v22

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v1

    if-eqz v1, :cond_1e8

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_1e8
    move-object/from16 v23, v0

    const-wide/high16 v17, -0x4010000000000000L  # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v24

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/da;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto/16 :goto_c0

    :cond_217
    if-eqz v9, :cond_282

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v4, :cond_282

    new-instance v6, Lcom/google/android/gms/internal/ads/Y;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    if-eqz v1, :cond_239

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v1

    move-object v14, v1

    goto :goto_23a

    :cond_239
    move-object v14, v0

    :goto_23a
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v19

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v1

    if-eqz v1, :cond_25a

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_25a
    move-object/from16 v20, v0

    const/16 v17, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v3

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ha;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Y;)V

    goto/16 :goto_351

    :cond_282
    if-eqz v1, :cond_2a4

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v0, :cond_2a4

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a4

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/L;

    invoke-direct {v2, v7, v1}, Lcom/google/android/gms/ads/internal/L;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ab;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_351

    :cond_2a4
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/C;->J0(I)V
    :try_end_2ac
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2ac} :catch_2ad

    return v2

    :catch_2ad
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_351

    :cond_2b5
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    iget-boolean v1, v7, Lcom/google/android/gms/ads/internal/C;->QX:Z

    const-string v3, "Google"

    if-eqz v1, :cond_2c9

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    invoke-direct {v7, v3, v1}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/C;->XL:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    goto/16 :goto_351

    :cond_2c9
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Y;

    if-eqz v1, :cond_2e3

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_2e3

    :goto_2d3
    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    invoke-direct {v7, v3, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/C;->DW(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/da;)V

    goto/16 :goto_351

    :cond_2e3
    if-eqz v1, :cond_2f8

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v1, :cond_2f8

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    invoke-direct {v7, v3, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    check-cast v0, Lcom/google/android/gms/internal/ads/Y;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Y;)V

    goto :goto_351

    :cond_2f8
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/W;

    if-eqz v1, :cond_303

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v4, :cond_303

    goto :goto_2d3

    :cond_303
    if-eqz v1, :cond_318

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v1, :cond_318

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/kk;->vJ:Z

    invoke-direct {v7, v3, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    check-cast v0, Lcom/google/android/gms/internal/ads/W;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/W;)V

    goto :goto_351

    :cond_318
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/aa;

    if-eqz v1, :cond_33b

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    if-eqz v1, :cond_33b

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/aa;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aa;->vJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aa;->vJ()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/K;

    invoke-direct {v2, v7, v0, v8}, Lcom/google/android/gms/ads/internal/K;-><init>(Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;)V

    goto :goto_34e

    :cond_33b
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/U;

    if-eqz v1, :cond_356

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v1, :cond_356

    check-cast v0, Lcom/google/android/gms/internal/ads/U;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/E;

    invoke-direct {v2, v7, v0}, Lcom/google/android/gms/ads/internal/E;-><init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/U;)V

    :goto_34e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_351
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    return v0

    :cond_356
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/C;->J0(I)V

    return v2

    :cond_35f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_368

    :goto_367
    throw v0

    :goto_368
    goto :goto_367
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/C;->zg()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_a

    iget v0, p0, Lcom/google/android/gms/ads/internal/C;->U2:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;I)Z

    move-result p1

    return p1

    :catch_a
    move-exception p1

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p2, "Ads"

    const-string v0, "Error initializing webview."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/M;->v5()Z

    move-result p1

    return p1
.end method

.method public final jg()Labcd/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx<",
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

    if-eqz v0, :cond_14

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->ya()V

    return-void

    :cond_14
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->ji()V

    return-void
.end method

.method public final jn()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/C;->Sc()Lcom/google/android/gms/internal/ads/qe;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/C;->j3:Lcom/google/android/gms/internal/ads/Mo;

    :cond_c
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
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/C;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Initializing webview native ads utills"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/C;->lg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/hh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/C;->a8:Lcom/google/android/gms/internal/ads/dh;

    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
