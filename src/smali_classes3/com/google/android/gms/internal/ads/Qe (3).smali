.class public abstract Lcom/google/android/gms/internal/ads/Qe;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Pe;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_e

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return p2

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
