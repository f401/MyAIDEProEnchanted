.class public final Lcom/google/android/gms/internal/ads/vH;
.super Lcom/google/android/gms/internal/ads/ly;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tH;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ly;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final J0()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ly;->v5()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ly;->DW(ILandroid/os/Parcel;)V

    return-void
.end method
