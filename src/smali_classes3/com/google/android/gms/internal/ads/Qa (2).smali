.class public abstract Lcom/google/android/gms/internal/ads/Qa;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Pa;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pa;->v5(Labcd/ox;)V

    goto :goto_26

    :cond_17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pa;->Fd()V

    goto :goto_26

    :cond_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pa;->Hw(Labcd/ox;)V

    :goto_26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
