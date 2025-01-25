.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zzzb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzb;->DW()V

    return-void
.end method

.method public final DW(Z)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzzb;->DW(Z)V

    return-void
.end method

.method public final j6()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzb;->j6()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/fx;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Labcd/fx;)V

    return-void
.end method

.method public final j6(Labcd/hx;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Labcd/hx;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Lcom/google/android/gms/ads/a;)V

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    check-cast p1, Lcom/google/android/gms/internal/ads/WG;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    return-void

    :cond_13
    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    :cond_1b
    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->j6()Lcom/google/android/gms/internal/ads/rI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Lcom/google/android/gms/internal/ads/rI;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->j6:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->j6(Z)V

    return-void
.end method
