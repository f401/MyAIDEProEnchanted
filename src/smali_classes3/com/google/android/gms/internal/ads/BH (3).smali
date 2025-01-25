.class public abstract Lcom/google/android/gms/internal/ads/BH;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AH;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoader"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/AH;->j6(Lcom/google/android/gms/internal/ads/zzwb;I)V

    goto :goto_47

    :cond_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/AH;->aX()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    :cond_26
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/AH;->oy()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_4a

    :cond_31
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/AH;->cb()Ljava/lang/String;

    move-result-object p1

    :goto_35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    :cond_3c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/AH;->DW(Lcom/google/android/gms/internal/ads/zzwb;)V

    :goto_47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4a
    return p4
.end method
