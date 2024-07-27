.class public abstract Lcom/google/android/gms/internal/ads/eI;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dI;


# direct methods
.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dI;
    .registers 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dI;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/dI;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/fI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/fI;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
