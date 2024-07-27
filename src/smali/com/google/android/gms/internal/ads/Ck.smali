.class public final Lcom/google/android/gms/internal/ads/Ck;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cm;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->FH()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/Dk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Dk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    const-string v1, "Updating ad debug logging enablement."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    const-string v1, "AdDebugLogUpdater.updateEnablement"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    goto :goto_0
.end method
