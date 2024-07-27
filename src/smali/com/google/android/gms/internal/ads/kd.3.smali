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

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/pd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pd;->j6(Lcom/google/android/gms/internal/ads/pd;)Lcom/google/android/gms/ads/internal/gmsg/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
