.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/l;
.implements Lcom/google/android/gms/ads/mediation/o;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/ads/zzbiy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$a;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$b;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$c;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$d;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$e;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$f;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private zzhs:Lcom/google/android/gms/ads/AdView;

.field private zzht:Lcom/google/android/gms/ads/InterstitialAd;

.field private zzhu:Lcom/google/android/gms/ads/b;

.field private zzhv:Landroid/content/Context;

.field private zzhw:Lcom/google/android/gms/ads/InterstitialAd;

.field private zzhx:Lcom/google/android/gms/ads/reward/mediation/a;

.field private final zzhy:Labcd/hx;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/mediation/g;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/g;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhy:Labcd/hx;

    return-void
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->Hw()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c$a;->j6(Ljava/util/Date;)Lcom/google/android/gms/ads/c$a;

    :cond_e
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->gn()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c$a;->j6(I)Lcom/google/android/gms/ads/c$a;

    :cond_17
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->EQ()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/c$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    goto :goto_21

    :cond_31
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c$a;->j6(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;

    :cond_3a
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->v5()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c$a;->DW(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    :cond_4a
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->DW()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5d

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->DW()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c$a;->DW(Z)Lcom/google/android/gms/ads/c$a;

    :cond_5d
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->FH()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c$a;->j6(Z)Lcom/google/android/gms/ads/c$a;

    const-class p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/c$a;->j6(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c$a;->j6()Lcom/google/android/gms/ads/c;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/a;
    .registers 1

    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhx:Lcom/google/android/gms/ads/reward/mediation/a;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 1

    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/mediation/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/b$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/b$a;->j6(I)Lcom/google/android/gms/ads/mediation/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/b$a;->j6()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVideoController()Lcom/google/android/gms/ads/h;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/ads/h;->j6()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhv:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhx:Lcom/google/android/gms/ads/reward/mediation/a;

    invoke-interface {p4, p0}, Lcom/google/android/gms/ads/reward/mediation/a;->DW(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhx:Lcom/google/android/gms/ads/reward/mediation/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhv:Landroid/content/Context;

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhx:Lcom/google/android/gms/ads/reward/mediation/a;

    if-nez v1, :cond_9

    goto :goto_3a

    :cond_9
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->DW(Z)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhy:Labcd/hx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Labcd/hx;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/h;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/h;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Labcd/fx;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhv:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Lcom/google/android/gms/ads/c;)V

    return-void

    :cond_3a
    :goto_3a
    const-string p1, "AdMobAdapter.loadAd called before initialize."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->j6()V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    :cond_a
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_10

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    :cond_10
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhu:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_16

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhu:Lcom/google/android/gms/ads/b;

    :cond_16
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_1c

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    :cond_1c
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Z)V

    :cond_7
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Z)V

    :cond_e
    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->DW()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->FH()V

    :cond_7
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/c;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .registers 10

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->DW()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->j6()I

    move-result p4

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/c;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhs:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->j6(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Lcom/google/android/gms/ads/a;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->j6(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V
    .registers 10

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/e;)V

    new-instance p2, Lcom/google/android/gms/ads/b$a;

    const-string v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/b$a;->j6(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->Zo()Lcom/google/android/gms/ads/formats/b;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/b$a;->j6(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;

    :cond_1c
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->u7()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/b$a;->j6(Lcom/google/android/gms/ads/formats/g$a;)Lcom/google/android/gms/ads/b$a;

    :cond_25
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->tp()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/b$a;->j6(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;

    :cond_2e
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->we()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/b$a;->j6(Lcom/google/android/gms/ads/formats/e$a;)Lcom/google/android/gms/ads/b$a;

    :cond_37
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->VH()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->j6()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->j6()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_67

    move-object v3, v0

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    invoke-virtual {p2, v2, v0, v3}, Lcom/google/android/gms/ads/b$a;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/formats/f$b;Lcom/google/android/gms/ads/formats/f$a;)Lcom/google/android/gms/ads/b$a;

    goto :goto_49

    :cond_6c
    invoke-virtual {p2}, Lcom/google/android/gms/ads/b$a;->j6()Lcom/google/android/gms/ads/b;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhu:Lcom/google/android/gms/ads/b;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/b;->j6(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzht:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->DW()V

    return-void
.end method

.method public showVideo()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhw:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->DW()V

    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
