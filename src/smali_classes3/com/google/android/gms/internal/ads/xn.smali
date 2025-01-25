.class public final Lcom/google/android/gms/internal/ads/xn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:J

.field private FH:Z

.field private final j6:J


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->ro:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xn;->j6:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xn;->FH:Z

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xn;->FH:Z

    return-void
.end method

.method public final j6(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/nn;)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/xn;->FH:Z

    if-nez p1, :cond_19

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/xn;->DW:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/xn;->j6:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_28

    :cond_19
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xn;->FH:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/xn;->DW:J

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/yn;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/yn;-><init>(Lcom/google/android/gms/internal/ads/xn;Lcom/google/android/gms/internal/ads/nn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method
