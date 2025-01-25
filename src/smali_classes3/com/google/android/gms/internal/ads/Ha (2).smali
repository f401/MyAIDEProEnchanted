.class public abstract Lcom/google/android/gms/internal/ads/Ha;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ga;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ga;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ga;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/Ga;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/Ia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ia;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_21

    const/4 p4, 0x2

    if-eq p1, p4, :cond_16

    const/4 p4, 0x3

    if-eq p1, p4, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ga;->qP()D

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_2b

    :cond_16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ga;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_2b

    :cond_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ga;->T6()Labcd/ox;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2b
    return p2
.end method
