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

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    sget v0, Lcom/google/android/gms/ads/j;->Hw:I

    :goto_1
    return v0

    :sswitch_0
    const-string v0, "interstitial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "rewarded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "banner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget v0, Lcom/google/android/gms/ads/j;->FH:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/google/android/gms/ads/j;->DW:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/google/android/gms/ads/j;->j6:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch
.end method

.method private static sG(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Server parameters: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Server parameters: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    instance-of v2, v0, Lcom/google/android/gms/ads/mediation/o;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/o;->getVideoController()Lcom/google/android/gms/internal/ads/kI;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final gn(Labcd/ox;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yp;->j6(Landroid/content/Context;)V

    return-void
.end method

.method public final j6(Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/Af;)V
    .registers 15

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/If;

    invoke-direct {v1, p0, p6}, Lcom/google/android/gms/internal/ads/If;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/Af;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v3, Lcom/google/android/gms/ads/mediation/n;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->dx(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v0, p4}, Lcom/google/android/gms/ads/mediation/n;-><init>(ILandroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/Zp;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v5, p5, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v6, p5, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v5

    invoke-direct {v4, v0, v3, p3, v5}, Lcom/google/android/gms/internal/ads/Zp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/n;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/Yp;->j6(Lcom/google/android/gms/internal/ads/Zp;Lcom/google/android/gms/internal/ads/_p;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error generating signals for RTB"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 13

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Ef;

    invoke-direct {v1, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Ef;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v3, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget v0, p7, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v3, p7, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object v4, p7, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " does not support banner ads."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Adapter failed to render banner ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 12

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Ff;

    invoke-direct {v1, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Ff;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v3, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " does not support interstitial ads."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Adapter failed to render interstitial ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/uf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 12

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Hf;

    invoke-direct {v1, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Hf;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/uf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v3, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " does not support native ads."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Adapter failed to render rewarded ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 12

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Gf;

    invoke-direct {v1, p0, p5, p6}, Lcom/google/android/gms/internal/ads/Gf;-><init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Df;->j6:Lcom/google/android/gms/internal/ads/Yp;

    new-instance v3, Lcom/google/android/gms/internal/ads/Xp;

    invoke-static {p4}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Df;->sG(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4, p3}, Lcom/google/android/gms/internal/ads/Xp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " does not support rewarded ads."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Up;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Adapter failed to render rewarded ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6([Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/ads/mediation/n;

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Df;->dx(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/mediation/n;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final om()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
