.class public final Lcom/google/android/gms/internal/ads/_G;
.super Labcd/qx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx<",
        "Lcom/google/android/gms/internal/ads/GH;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Labcd/qx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)Lcom/google/android/gms/internal/ads/DH;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/GH;

    const v2, 0xda3360

    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/GH;->j6(Labcd/ox;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v0

    :cond_15
    const-string p2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/ads/DH;

    if-eqz p3, :cond_22

    check-cast p2, Lcom/google/android/gms/internal/ads/DH;

    return-object p2

    :cond_22
    new-instance p2, Lcom/google/android/gms/internal/ads/FH;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/FH;-><init>(Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Labcd/qx$a; {:try_start_1 .. :try_end_27} :catch_28

    return-object p2

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string p2, "Could not create remote builder for AdLoader."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/GH;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/GH;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/HH;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/HH;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
