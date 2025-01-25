.class public final Lcom/google/android/gms/internal/ads/Ck;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cm;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->FH()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/android/gms/internal/ads/Dk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Dk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->FH()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Hm;

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    :cond_22
    return-void
.end method
