.class public abstract Lcom/google/android/gms/internal/ads/OH;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/NH;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/NH;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/NH;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/NH;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/PH;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/PH;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/NH;->eN()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
