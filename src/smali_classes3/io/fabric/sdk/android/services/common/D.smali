.class public Lio/fabric/sdk/android/services/common/D;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Z

.field private Hw:J

.field private final j6:Ljava/lang/String;

.field private v5:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/D;->j6:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/D;->DW:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/D;->FH:Z

    return-void
.end method

.method private FH()V
    .registers 5

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/D;->DW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/D;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/D;->v5:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/D;->FH:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-wide v0, p0, Lio/fabric/sdk/android/services/common/D;->v5:J
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1f

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/D;->Hw:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/D;->v5:J

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/D;->FH()V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/D;->FH:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/D;->Hw:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/D;->v5:J
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
