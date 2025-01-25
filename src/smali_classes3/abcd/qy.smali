.class final Labcd/qy;
.super Labcd/Yx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "LYx<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/oy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loy<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private FH:Z

.field private volatile Hw:Z

.field private Zo:Ljava/lang/Exception;

.field private final j6:Ljava/lang/Object;

.field private v5:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/Yx;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    new-instance v0, Labcd/oy;

    invoke-direct {v0}, Labcd/oy;-><init>()V

    iput-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    return-void
.end method

.method private final VH()V
    .registers 3

    iget-boolean v0, p0, Labcd/qy;->FH:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    return-void
.end method

.method private final gn()V
    .registers 3

    iget-boolean v0, p0, Labcd/qy;->FH:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    return-void
.end method

.method private final tp()V
    .registers 3

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v0, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return-void

    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private final u7()V
    .registers 3

    iget-boolean v0, p0, Labcd/qy;->Hw:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "LSx<",
            "TTResult;",
            "LYx<",
            "TTContinuationResult;>;>;)",
            "LYx<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Labcd/qy;

    invoke-direct {v0}, Labcd/qy;-><init>()V

    iget-object v1, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v2, Labcd/dy;

    invoke-direct {v2, p1, p2, v0}, Labcd/dy;-><init>(Ljava/util/concurrent/Executor;Labcd/Sx;Labcd/qy;)V

    invoke-virtual {v1, v2}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object v0
.end method

.method public final DW()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Labcd/qy;->VH()V

    invoke-direct {p0}, Labcd/qy;->u7()V

    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez v1, :cond_11

    iget-object v1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_11
    new-instance v1, Labcd/Xx;

    iget-object v2, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Labcd/Xx;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final DW(Ljava/lang/Exception;)Z
    .registers 4

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    if-eqz v1, :cond_f

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1b

    iget-object p1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {p1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return v1

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final DW(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object p1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {p1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return v1

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/qy;->Hw:Z

    return v0
.end method

.method public final Hw()Z
    .registers 3

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Zo()Z
    .registers 3

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/qy;->FH:Z

    iput-boolean v1, p0, Labcd/qy;->Hw:Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v0, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return v1

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "LSx<",
            "TTResult;TTContinuationResult;>;)",
            "LYx<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Labcd/qy;

    invoke-direct {v0}, Labcd/qy;-><init>()V

    iget-object v1, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v2, Labcd/by;

    invoke-direct {v2, p1, p2, v0}, Labcd/by;-><init>(Ljava/util/concurrent/Executor;Labcd/Sx;Labcd/qy;)V

    invoke-virtual {v1, v2}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object v0
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Tx;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Labcd/Tx;",
            ")",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v1, Labcd/fy;

    invoke-direct {v1, p1, p2}, Labcd/fy;-><init>(Ljava/util/concurrent/Executor;Labcd/Tx;)V

    invoke-virtual {v0, v1}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object p0
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Ux;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LUx<",
            "TTResult;>;)",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v1, Labcd/hy;

    invoke-direct {v1, p1, p2}, Labcd/hy;-><init>(Ljava/util/concurrent/Executor;Labcd/Ux;)V

    invoke-virtual {v0, v1}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object p0
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Vx;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Labcd/Vx;",
            ")",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v1, Labcd/jy;

    invoke-direct {v1, p1, p2}, Labcd/jy;-><init>(Ljava/util/concurrent/Executor;Labcd/Vx;)V

    invoke-virtual {v0, v1}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object p0
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Wx;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LWx<",
            "-TTResult;>;)",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    new-instance v1, Labcd/ly;

    invoke-direct {v1, p1, p2}, Labcd/ly;-><init>(Ljava/util/concurrent/Executor;Labcd/Wx;)V

    invoke-virtual {v0, v1}, Labcd/oy;->j6(Labcd/ny;)V

    invoke-direct {p0}, Labcd/qy;->tp()V

    return-object p0
.end method

.method public final j6()Ljava/lang/Exception;
    .registers 3

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Labcd/qy;->VH()V

    invoke-direct {p0}, Labcd/qy;->u7()V

    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object p1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez p1, :cond_19

    iget-object p1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_19
    new-instance p1, Labcd/Xx;

    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Labcd/Xx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final j6(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-direct {p0}, Labcd/qy;->gn()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    iget-object p1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {p1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Labcd/qy;->gn()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object p1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {p1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final v5()Z
    .registers 3

    iget-object v0, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/qy;->FH:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Labcd/qy;->Hw:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
