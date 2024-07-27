.class final Lcom/google/android/gms/internal/ads/zI;
.super Lcom/google/android/gms/internal/ads/BH;


# instance fields
.field final j6:Lcom/google/android/gms/internal/ads/xI;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/xI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zI;->j6:Lcom/google/android/gms/internal/ads/xI;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/BH;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xI;Lcom/google/android/gms/internal/ads/yI;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zI;-><init>(Lcom/google/android/gms/internal/ads/xI;)V

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zI;->j6(Lcom/google/android/gms/internal/ads/zzwb;I)V

    return-void
.end method

.method public final aX()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 5

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/AI;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/AI;-><init>(Lcom/google/android/gms/internal/ads/zI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final oy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
