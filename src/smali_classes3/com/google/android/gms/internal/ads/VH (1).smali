.class public final Lcom/google/android/gms/internal/ads/VH;
.super Lcom/google/android/gms/internal/ads/ly;

# interfaces
.implements Lcom/google/android/gms/internal/ads/TH;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createAdLoaderBuilder(Labcd/ox;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/DH;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1d

    const/4 p2, 0x0

    goto :goto_31

    :cond_1d
    const-string p3, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lcom/google/android/gms/internal/ads/DH;

    if-eqz p4, :cond_2b

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/DH;

    goto :goto_31

    :cond_2b
    new-instance p3, Lcom/google/android/gms/internal/ads/FH;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/FH;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_31
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final createAdOverlay(Labcd/ox;)Lcom/google/android/gms/internal/ads/eg;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fg;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eg;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final createBannerAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_20

    const/4 p2, 0x0

    goto :goto_34

    :cond_20
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lcom/google/android/gms/internal/ads/IH;

    if-eqz p4, :cond_2e

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/IH;

    goto :goto_34

    :cond_2e
    new-instance p3, Lcom/google/android/gms/internal/ads/KH;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/KH;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final createInterstitialAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_20

    const/4 p2, 0x0

    goto :goto_34

    :cond_20
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lcom/google/android/gms/internal/ads/IH;

    if-eqz p4, :cond_2e

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/IH;

    goto :goto_34

    :cond_2e
    new-instance p3, Lcom/google/android/gms/internal/ads/KH;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/KH;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final createNativeAdViewDelegate(Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/La;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ka;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final createSearchAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1e

    const/4 p2, 0x0

    goto :goto_32

    :cond_1e
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lcom/google/android/gms/internal/ads/IH;

    if-eqz p4, :cond_2c

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/IH;

    goto :goto_32

    :cond_2c
    new-instance p3, Lcom/google/android/gms/internal/ads/KH;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/KH;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_32
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
