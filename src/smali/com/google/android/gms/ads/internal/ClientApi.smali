.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/UH;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

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

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v0, Lcom/google/android/gms/ads/internal/l;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbbi;

    const v2, 0xda3360

    const/4 v3, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v5

    invoke-direct {v4, v2, p4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object v0
.end method

.method public createAdOverlay(Labcd/ox;)Lcom/google/android/gms/internal/ads/eg;
    .registers 6

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->EQ:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/w;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/w;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public createBannerAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 13

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v0, Lcom/google/android/gms/ads/internal/va;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbbi;

    const v2, 0xda3360

    const/4 v3, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v5, v2, p5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/va;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object v0
.end method

.method public createInAppPurchaseManager(Labcd/ox;)Lcom/google/android/gms/internal/ads/og;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public createInterstitialAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 19

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbbi;

    const v4, 0xda3360

    const/4 v6, 0x1

    move/from16 v0, p5

    invoke-direct {v5, v4, v0, v6, v1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    const-string v1, "reward_mb"

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz v4, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->BR:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/Pc;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Pc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/google/android/gms/ads/internal/m;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v12

    move-object v7, v2

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    move-object v1, v6

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public createNativeAdViewDelegate(Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 6

    new-instance v2, Lcom/google/android/gms/internal/ads/va;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/va;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v2
.end method

.method public createNativeAdViewHolderDelegate(Labcd/ox;Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Pa;
    .registers 8

    new-instance v3, Lcom/google/android/gms/internal/ads/xa;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/xa;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v3
.end method

.method public createRewardedVideoAd(Labcd/ox;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/ej;
    .registers 9

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbi;

    const v2, 0xda3360

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v1, v2, p3, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Wi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/ta;->j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;

    move-result-object v3

    invoke-direct {v2, v0, v3, p2, v1}, Lcom/google/android/gms/internal/ads/Wi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-object v2
.end method

.method public createRewardedVideoAdSku(Labcd/ox;I)Lcom/google/android/gms/internal/ads/ej;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSearchAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 11

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v1, Lcom/google/android/gms/ads/internal/Q;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbi;

    const v3, 0xda3360

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v5

    invoke-direct {v2, v3, p4, v4, v5}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/google/android/gms/ads/internal/Q;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-object v1
.end method

.method public getMobileAdsSettingsManager(Labcd/ox;)Lcom/google/android/gms/internal/ads/_H;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Labcd/ox;I)Lcom/google/android/gms/internal/ads/_H;
    .registers 8

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbi;

    const v2, 0xda3360

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZZ)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/y;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/ads/internal/y;

    move-result-object v0

    return-object v0
.end method
