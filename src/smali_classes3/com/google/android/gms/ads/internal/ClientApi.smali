.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/UH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/UH;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Labcd/ox;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/DH;
    .registers 11

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance p1, Lcom/google/android/gms/ads/internal/l;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v2

    const v3, 0xda3360

    invoke-direct {v4, v3, p4, v0, v2}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object p1
.end method

.method public createAdOverlay(Labcd/ox;)Lcom/google/android/gms/internal/ads/eg;
    .registers 5

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_16
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->EQ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_30

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_2a
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    :cond_30
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_36
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/w;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/w;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createBannerAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 13

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance p1, Lcom/google/android/gms/ads/internal/va;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v2

    const v3, 0xda3360

    invoke-direct {v5, v3, p5, v0, v2}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/va;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object p1
.end method

.method public createInAppPurchaseManager(Labcd/ox;)Lcom/google/android/gms/internal/ads/og;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public createInterstitialAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 13

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result p1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbbi;

    const v0, 0xda3360

    const/4 v2, 0x1

    invoke-direct {v5, v0, p5, v2, p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    const-string p1, "reward_mb"

    iget-object p5, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    sget-object p5, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_4c

    :cond_36
    if-eqz p1, :cond_4b

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->BR:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_5d

    new-instance p1, Lcom/google/android/gms/internal/ads/Pc;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object p2

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Pc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object p1

    :cond_5d
    new-instance p1, Lcom/google/android/gms/ads/internal/m;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object p1
.end method

.method public createNativeAdViewDelegate(Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/va;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/va;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public createNativeAdViewHolderDelegate(Labcd/ox;Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Pa;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/xa;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xa;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public createRewardedVideoAd(Labcd/ox;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/ej;
    .registers 8

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v2

    const v3, 0xda3360

    invoke-direct {v0, v3, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    new-instance p3, Lcom/google/android/gms/internal/ads/Wi;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v1

    invoke-direct {p3, p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/Wi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-object p3
.end method

.method public createRewardedVideoAdSku(Labcd/ox;I)Lcom/google/android/gms/internal/ads/ej;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSearchAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 10

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v0, Lcom/google/android/gms/ads/internal/Q;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v3

    const v4, 0xda3360

    invoke-direct {v1, v4, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/ads/internal/Q;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-object v0
.end method

.method public getMobileAdsSettingsManager(Labcd/ox;)Lcom/google/android/gms/internal/ads/_H;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Labcd/ox;I)Lcom/google/android/gms/internal/ads/_H;
    .registers 7

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v2

    const v3, 0xda3360

    invoke-direct {v0, v3, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/y;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/ads/internal/y;

    move-result-object p1

    return-object p1
.end method
