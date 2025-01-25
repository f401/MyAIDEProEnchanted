.class public final Lcom/google/android/gms/internal/ads/zzanu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/ads/mediation/d;

.field private FH:Landroid/net/Uri;

.field private j6:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/zzanu;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanu;->j6:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/ads/mediation/d;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .registers 2

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    if-nez p2, :cond_a

    const-string p1, "Listener not set for mediation. Returning."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_a
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1a

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/d;->j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/common/util/o;->DW()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/N;->j6(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_28

    const/4 p2, 0x1

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    if-nez p2, :cond_36

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/d;->j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_36
    const-string p2, "tab_url"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4d

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/d;->j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_4d
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->j6:Landroid/app/Activity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->FH:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->DW:Lcom/google/android/gms/ads/mediation/d;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/d;->FH(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 10

    new-instance v0, Landroid/support/customtabs/i$a;

    invoke-direct {v0}, Landroid/support/customtabs/i$a;-><init>()V

    invoke-virtual {v0}, Landroid/support/customtabs/i$a;->j6()Landroid/support/customtabs/i;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/i;->j6:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanu;->FH:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Landroid/support/customtabs/i;->j6:Landroid/content/Intent;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/Kf;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/Kf;-><init>(Lcom/google/android/gms/internal/ads/zzanu;)V

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v0, 0x0

    invoke-direct {v8, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZ)V

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/zzbbi;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Lf;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/Lf;-><init>(Lcom/google/android/gms/internal/ads/zzanu;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->VH()V

    return-void
.end method
