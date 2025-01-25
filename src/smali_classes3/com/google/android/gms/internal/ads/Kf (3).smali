.class final Lcom/google/android/gms/internal/ads/Kf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zzanu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kf;->j6:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ep()V
    .registers 3

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kf;->j6:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->j6(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kf;->j6:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->v5(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final uC()V
    .registers 3

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kf;->j6:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->j6(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Kf;->j6:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->Hw(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
