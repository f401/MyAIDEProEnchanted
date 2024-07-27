.class final Lcom/google/android/gms/internal/ads/sk;
.super Ljava/lang/Object;


# instance fields
.field private volatile DW:I

.field private volatile FH:J

.field private final j6:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->j6:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/tk;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/sk;->FH:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/rk;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    return-void
.end method

.method private final Hw()V
    .registers 9

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    sget v4, Lcom/google/android/gms/internal/ads/tk;->FH:I

    if-ne v0, v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/sk;->FH:J

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->dY:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/tk;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final j6(II)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sk;->Hw()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->j6:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    if-eq v3, p1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    sget v4, Lcom/google/android/gms/internal/ads/tk;->FH:I

    if-ne v3, v4, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/sk;->FH:J

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final DW()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sk;->Hw()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    sget v1, Lcom/google/android/gms/internal/ads/tk;->FH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/tk;->DW:I

    sget v1, Lcom/google/android/gms/internal/ads/tk;->FH:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/sk;->j6(II)V

    return-void
.end method

.method public final j6(Z)V
    .registers 4

    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/tk;->j6:I

    sget v1, Lcom/google/android/gms/internal/ads/tk;->DW:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/sk;->j6(II)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/tk;->DW:I

    sget v1, Lcom/google/android/gms/internal/ads/tk;->j6:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/sk;->j6(II)V

    goto :goto_0
.end method

.method public final j6()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sk;->Hw()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/sk;->DW:I

    sget v1, Lcom/google/android/gms/internal/ads/tk;->DW:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
