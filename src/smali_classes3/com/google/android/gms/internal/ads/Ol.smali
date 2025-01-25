.class public final Lcom/google/android/gms/internal/ads/Ol;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:J

.field private FH:Ljava/lang/Object;

.field private j6:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ol;->DW:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ol;->FH:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ol;->j6:J

    return-void
.end method


# virtual methods
.method public final j6()Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ol;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ol;->DW:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/Ol;->j6:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_17

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_17
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Ol;->DW:J

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
