.class public final Lcom/google/android/gms/internal/ads/Eb;
.super Labcd/qx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx<",
        "Lcom/google/android/gms/internal/ads/Na;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Labcd/qx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Na;

    const v2, 0xda3360

    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/Na;->j6(Labcd/ox;Labcd/ox;Labcd/ox;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    return-object v0

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/ads/Ka;

    if-eqz p3, :cond_2a

    check-cast p2, Lcom/google/android/gms/internal/ads/Ka;

    return-object p2

    :cond_2a
    new-instance p2, Lcom/google/android/gms/internal/ads/Ma;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Ma;-><init>(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_32
    .catch Labcd/qx$a; {:try_start_1 .. :try_end_2f} :catch_30

    return-object p2

    :catch_30
    move-exception p1

    goto :goto_33

    :catch_32
    move-exception p1

    :goto_33
    const-string p2, "Could not create remote NativeAdViewDelegate."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Na;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/Na;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/Oa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Oa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
