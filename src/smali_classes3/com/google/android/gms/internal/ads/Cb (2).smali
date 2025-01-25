.class public final Lcom/google/android/gms/internal/ads/Cb;
.super Lcom/google/android/gms/ads/formats/g;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/internal/ads/Ja;

.field private final Hw:Lcom/google/android/gms/ads/h;

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/zb;

.field private final v5:Lcom/google/android/gms/ads/formats/a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zb;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/g;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->DW:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/h;

    invoke-direct {v1}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->Hw:Lcom/google/android/gms/ads/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->Zo:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    const/4 v1, 0x0

    :try_start_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zb;->Hw()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4c

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_4c

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/Ga;

    if-eqz v4, :cond_46

    check-cast v3, Lcom/google/android/gms/internal/ads/Ga;

    goto :goto_4d

    :cond_46
    new-instance v3, Lcom/google/android/gms/internal/ads/Ia;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Ia;-><init>(Landroid/os/IBinder;)V

    goto :goto_4d

    :cond_4c
    move-object v3, v1

    :goto_4d
    if-eqz v3, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Cb;->DW:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/Ja;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Lcom/google/android/gms/internal/ads/Ga;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_59} :catch_5a

    goto :goto_27

    :catch_5a
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :try_start_5e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zb;->ba()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_91

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_7f

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hI;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gI;

    move-result-object v2

    goto :goto_80

    :cond_7f
    move-object v2, v1

    :goto_80
    if-eqz v2, :cond_6a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Cb;->Zo:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/jI;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/jI;-><init>(Lcom/google/android/gms/internal/ads/gI;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_8c} :catch_8d

    goto :goto_6a

    :catch_8d
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_91
    :try_start_91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zb;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    if-eqz p1, :cond_a3

    new-instance v2, Lcom/google/android/gms/internal/ads/Ja;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Lcom/google/android/gms/internal/ads/Ga;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9e} :catch_9f

    goto :goto_a4

    :catch_9f
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a3
    move-object v2, v1

    :goto_a4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Cb;->FH:Lcom/google/android/gms/internal/ads/Ja;

    :try_start_a6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zb;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    if-eqz p1, :cond_bf

    new-instance p1, Lcom/google/android/gms/internal/ads/Fa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zb;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/Fa;-><init>(Lcom/google/android/gms/internal/ads/Ba;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b9} :catch_bb

    move-object v1, p1

    goto :goto_bf

    :catch_bb
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bf
    :goto_bf
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->v5:Lcom/google/android/gms/ads/formats/a$a;

    return-void
.end method

.method private final J0()Labcd/ox;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->et()Labcd/ox;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->ro()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic EQ()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Cb;->J0()Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->gn()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->a8()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final VH()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->kQ()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->DW:Ljava/util/List;

    return-object v0
.end method

.method public final gn()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zb;->yO()D

    move-result-wide v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_13

    const-wide/high16 v3, -0x4010000000000000L  # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->jJ()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tp()Lcom/google/android/gms/ads/h;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->Hw:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zb;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/internal/ads/kI;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->Hw:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method public final u7()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->wc()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v5()Lcom/google/android/gms/ads/formats/a$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->FH:Lcom/google/android/gms/internal/ads/Ja;

    return-object v0
.end method

.method public final we()Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cb;->j6:Lcom/google/android/gms/internal/ads/zb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zb;->BT()Labcd/ox;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
