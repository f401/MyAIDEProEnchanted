.class public abstract Lcom/google/android/gms/internal/ads/hI;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/gI;


# direct methods
.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gI;
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdReason"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/gI;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/gI;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/iI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/iI;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
