.class final Lcom/google/android/gms/internal/ads/vz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nz;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/tz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/tz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vz;->j6:Lcom/google/android/gms/internal/ads/tz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/tz;Lcom/google/android/gms/internal/ads/uz;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vz;-><init>(Lcom/google/android/gms/internal/ads/tz;)V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/tz;->yS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->j6:Lcom/google/android/gms/internal/ads/tz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tz;->j6(Lcom/google/android/gms/internal/ads/tz;Z)Z

    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->j6:Lcom/google/android/gms/internal/ads/tz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tz;->j6(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/az;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/az;->j6(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tz;->j6(I)V

    return-void
.end method

.method public final j6(IJJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vz;->j6:Lcom/google/android/gms/internal/ads/tz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tz;->j6(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/az;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/az;->j6(IJJ)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/tz;->j6(IJJ)V

    return-void
.end method
