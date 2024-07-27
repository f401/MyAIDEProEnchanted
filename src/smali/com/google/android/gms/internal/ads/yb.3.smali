.class public final Lcom/google/android/gms/internal/ads/yb;
.super Lcom/google/android/gms/internal/ads/ly;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xb;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final oT()V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ly;->DW(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final yS(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ly;->DW(ILandroid/os/Parcel;)V

    return-void
.end method
