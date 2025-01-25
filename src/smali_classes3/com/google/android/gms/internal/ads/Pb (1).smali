.class public abstract Lcom/google/android/gms/internal/ads/Pb;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ob;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ob;->j6(Landroid/os/ParcelFileDescriptor;)V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
