.class public final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;,
        Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;,
        Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c;
    }
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

.field private FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

.field private Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

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
.method public final getBannerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->j6:Landroid/view/View;

    return-object v0
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onDestroy()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onDestroy()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onDestroy()V

    :cond_15
    return-void
.end method

.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onPause()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onPause()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onPause()V

    :cond_15
    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onResume()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onResume()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/a;->onResume()V

    :cond_15
    return-void
.end method

.method public final requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/c;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .registers 14

    const-string v0, "class_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    iput-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    if-nez v1, :cond_15

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/c;->j6(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    :cond_15
    if-nez p6, :cond_19

    const/4 p6, 0x0

    goto :goto_21

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p6

    :goto_21
    move-object v6, p6

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->DW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/c;)V

    const-string p2, "parameter"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/b;Ljava/lang/String;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "class_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    iput-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    if-nez v1, :cond_15

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/d;->j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_15
    if-nez p5, :cond_19

    const/4 p5, 0x0

    goto :goto_21

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    :goto_21
    move-object v5, p5

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;

    invoke-direct {v2, p0, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/d;)V

    const-string p2, "parameter"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/d;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V

    return-void
.end method

.method public final requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "class_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    iput-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    if-nez v1, :cond_15

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/e;->j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    :cond_15
    if-nez p5, :cond_19

    const/4 p5, 0x0

    goto :goto_21

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    :goto_21
    move-object v5, p5

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->Hw:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;

    new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/e;)V

    const-string p2, "parameter"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNative;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/f;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    return-void
.end method
