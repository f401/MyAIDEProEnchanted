.class public final Lcom/google/android/gms/internal/ads/wI;
.super Labcd/qx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx<",
        "Lcom/google/android/gms/internal/ads/bI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    invoke-direct {p0, v0}, Labcd/qx;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/bI;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/bI;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/cI;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/cI;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
