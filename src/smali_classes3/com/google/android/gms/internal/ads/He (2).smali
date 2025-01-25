.class public abstract Lcom/google/android/gms/internal/ads/He;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ge;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ge;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ge;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/Ie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ie;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ge;->a8(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yf;

    move-result-object p1

    goto :goto_2b

    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ge;->er(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_31

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ge;->rN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object p1

    :goto_2b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_31
    return p4
.end method
