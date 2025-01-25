.class public final Lcom/google/android/gms/internal/ads/dj;
.super Lcom/google/android/gms/internal/ads/ly;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/_i;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;->DW(ILandroid/os/Parcel;)V

    return-void
.end method
