.class public final Lcom/google/android/gms/internal/ads/aH;
.super Labcd/qx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx<",
        "Lcom/google/android/gms/internal/ads/LH;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Labcd/qx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/LH;

    const v6, 0xda3360

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/LH;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    return-object v0

    :cond_1a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/ads/IH;

    if-eqz p3, :cond_27

    check-cast p2, Lcom/google/android/gms/internal/ads/IH;

    return-object p2

    :cond_27
    new-instance p2, Lcom/google/android/gms/internal/ads/KH;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/KH;-><init>(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2f
    .catch Labcd/qx$a; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object p2

    :catch_2d
    move-exception p1

    goto :goto_30

    :catch_2f
    move-exception p1

    :goto_30
    const-string p2, "Could not create remote AdManager."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/LH;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/LH;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/MH;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/MH;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
