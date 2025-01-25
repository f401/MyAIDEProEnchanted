.class final synthetic Lcom/google/android/gms/internal/ads/kd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/p;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/gmsg/B;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kd;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kd;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    check-cast p1, Lcom/google/android/gms/ads/internal/gmsg/B;

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/pd;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/google/android/gms/internal/ads/pd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pd;->j6(Lcom/google/android/gms/internal/ads/pd;)Lcom/google/android/gms/ads/internal/gmsg/B;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
