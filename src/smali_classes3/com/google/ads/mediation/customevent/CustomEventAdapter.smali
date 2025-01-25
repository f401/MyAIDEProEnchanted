.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;,
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/e;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/e;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Lcom/google/ads/mediation/customevent/CustomEventBanner;

.field private FH:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

.field private j6:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not instantiate custom event adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/a;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/a;->destroy()V

    :cond_e
    return-void
.end method

.method public final getAdditionalParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/ads/mediation/customevent/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/ads/mediation/customevent/c;

    return-object v0
.end method

.method public final getBannerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->j6:Landroid/view/View;

    return-object v0
.end method

.method public final getServerParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/ads/mediation/customevent/e;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/customevent/e;

    return-object v0
.end method

.method public final requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/e;Labcd/cx;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V
    .registers 15

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/e;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventBanner;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    if-nez v0, :cond_12

    sget-object p2, Labcd/ax;->Hw:Labcd/ax;

    invoke-interface {p1, p0, p2}, Lcom/google/ads/mediation/c;->j6(Lcom/google/ads/mediation/MediationBannerAdapter;Labcd/ax;)V

    return-void

    :cond_12
    if-nez p6, :cond_16

    const/4 p6, 0x0

    goto :goto_1c

    :cond_16
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/e;->j6:Ljava/lang/String;

    invoke-virtual {p6, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    :goto_1c
    move-object v7, p6

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/c;)V

    iget-object v3, p3, Lcom/google/ads/mediation/customevent/e;->j6:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/ads/mediation/customevent/e;->FH:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Lcom/google/ads/mediation/customevent/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Labcd/cx;Lcom/google/ads/mediation/a;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/e;Labcd/cx;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    .registers 7

    check-cast p3, Lcom/google/ads/mediation/customevent/e;

    check-cast p6, Lcom/google/android/gms/ads/mediation/customevent/c;

    invoke-virtual/range {p0 .. p6}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/e;Labcd/cx;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V

    return-void
.end method

.method public final requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/e;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V
    .registers 13

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/e;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    if-nez v0, :cond_12

    sget-object p2, Labcd/ax;->Hw:Labcd/ax;

    invoke-interface {p1, p0, p2}, Lcom/google/ads/mediation/d;->j6(Lcom/google/ads/mediation/MediationInterstitialAdapter;Labcd/ax;)V

    return-void

    :cond_12
    if-nez p5, :cond_16

    const/4 p5, 0x0

    goto :goto_1c

    :cond_16
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/e;->j6:Ljava/lang/String;

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    :goto_1c
    move-object v6, p5

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;

    invoke-direct {v1, p0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/d;)V

    iget-object v3, p3, Lcom/google/ads/mediation/customevent/e;->j6:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/ads/mediation/customevent/e;->FH:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/c;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/a;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    .registers 6

    check-cast p3, Lcom/google/ads/mediation/customevent/e;

    check-cast p5, Lcom/google/android/gms/ads/mediation/customevent/c;

    invoke-virtual/range {p0 .. p5}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/e;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    return-void
.end method
