.class public abstract Lcom/google/android/gms/internal/ads/sb;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rb;


# direct methods
.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rb;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/rb;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/tb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/tb;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
