.class public final Lcom/google/android/gms/internal/ads/Df;
.super Lcom/google/android/gms/internal/ads/zf;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Yp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yp;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    return-void
.end method

.method private static dx(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    sparse-switch v0, :sswitch_data_50

    goto :goto_33

    :sswitch_b
    const-string v0, "interstitial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :sswitch_15
    const-string v0, "rewarded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x2

    goto :goto_34

    :sswitch_1f
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x3

    goto :goto_34

    :sswitch_29
    const-string v0, "banner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, -0x1

    :goto_34
    if-eqz p0, :cond_4d

    if-eq p0, v1, :cond_4a

    if-eq p0, v2, :cond_47

    if-ne p0, v3, :cond_3f

    sget p0, Lcom/google/android/gms/ads/j;->Hw:I

    return p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Internal Error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    sget p0, Lcom/google/android/gms/ads/j;->FH:I

    return p0

    :cond_4a
    sget p0, Lcom/google/android/gms/ads/j;->DW:I

    return p0

    :cond_4d
    sget p0, Lcom/google/android/gms/ads/j;->j6:I

    return p0

    :sswitch_data_50
    .sparse-switch
        -0x533a80d4 -> :sswitch_29
        -0x3ebdafe9 -> :sswitch_1f
        -0xe47b3f2 -> :sswitch_15
        0x240b672c -> :sswitch_b
    .end sparse-switch
.end method

.method private static sG(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :try_start_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_43

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_41} :catch_44

    goto :goto_2e

    :cond_42
    move-object v0, p0

    :cond_43
    return-object v0

    :catch_44
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    goto :goto_51

    :goto_50
    throw p0

    :goto_51
    goto :goto_50
.end method


# virtual methods
.method public final Ev()Lcom/google/android/gms/internal/ads/zzans;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yp;->DW()Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzans;->j6(Lcom/google/android/gms/internal/ads/aq;)Lcom/google/android/gms/internal/ads/zzans;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b1()Lcom/google/android/gms/internal/ads/zzans;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yp;->j6()Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzans;->j6(Lcom/google/android/gms/internal/ads/aq;)Lcom/google/android/gms/internal/ads/zzans;

    const/4 v0, 0x0

    throw v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/o;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/o;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final gn(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yp;->j6(Landroid/content/Context;)V

    return-void
.end method

.method public final j6(Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/Af;)V
    .registers 10

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/If;

    invoke-direct {v0, p0, p6}, Lcom/google/android/gms/internal/ads/If;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/Af;)V

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v1, Lcom/google/android/gms/ads/mediation/n;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->dx(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v1, p2, p4}, Lcom/google/android/gms/ads/mediation/n;-><init>(ILandroid/os/Bundle;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/Zp;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget p4, p5, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {p4, v2, p5}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object p4

    invoke-direct {p2, p1, v1, p3, p4}, Lcom/google/android/gms/internal/ads/Zp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/n;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {p6, p2, v0}, Lcom/google/android/gms/internal/ads/Yp;->j6(Lcom/google/android/gms/internal/ads/Zp;Lcom/google/android/gms/internal/ads/_p;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 9

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Ef;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Ef;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance p6, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget p1, p7, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget p2, p7, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object p3, p7, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support banner ads."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception p1

    const-string p2, "Adapter failed to render banner ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Ff;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Ff;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance p6, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support interstitial ads."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    const-string p2, "Adapter failed to render interstitial ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/uf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Hf;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Hf;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/uf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance p6, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support native ads."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    const-string p2, "Adapter failed to render rewarded ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Gf;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Gf;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance p6, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support rewarded ads."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    const-string p2, "Adapter failed to render rewarded ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6([Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/ads/mediation/n;

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Df;->dx(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/mediation/n;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_19} :catch_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-void

    :catch_1d
    move-exception p1

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public final om()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showInterstitial()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
