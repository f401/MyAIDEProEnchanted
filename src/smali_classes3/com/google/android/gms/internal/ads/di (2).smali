.class public abstract Lcom/google/android/gms/internal/ads/di;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ci;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 p4, 0x1

    if-eq p1, p4, :cond_82

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_59

    const/4 v0, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v0, :cond_35

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatb;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_20

    goto :goto_31

    :cond_20
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ii;

    if-eqz v1, :cond_2c

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/ii;

    goto :goto_31

    :cond_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/ji;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ji;-><init>(Landroid/os/IBinder;)V

    :goto_31
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ci;->j6(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V

    goto :goto_7e

    :cond_35
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatb;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_44

    goto :goto_55

    :cond_44
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ii;

    if-eqz v1, :cond_50

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/ii;

    goto :goto_55

    :cond_50
    new-instance v1, Lcom/google/android/gms/internal/ads/ji;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ji;-><init>(Landroid/os/IBinder;)V

    :goto_55
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ci;->DW(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/ii;)V

    goto :goto_7e

    :cond_59
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_68

    goto :goto_7b

    :cond_68
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/fi;

    if-eqz v1, :cond_76

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/fi;

    goto :goto_7b

    :cond_76
    new-instance v1, Lcom/google/android/gms/internal/ads/hi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/hi;-><init>(Landroid/os/IBinder;)V

    :goto_7b
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ci;->j6(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V

    :goto_7e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_94

    :cond_82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ci;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_94
    return p4
.end method
