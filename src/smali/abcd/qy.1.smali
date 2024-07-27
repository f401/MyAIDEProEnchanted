.class final Labcd/qy;
.super Labcd/Yx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "LYx",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/oy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loy",
            "<TTResult;>;"
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

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Labcd/qy;->FH:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v0, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final u7()V
    .registers 3

    iget-boolean v0, p0, Labcd/qy;->Hw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
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
            "LSx",
            "<TTResult;",
            "LYx",
            "<TTContinuationResult;>;>;)",
            "LYx",
            "<TTContinuationResult;>;"
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

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Labcd/qy;->VH()V

    invoke-direct {p0}, Labcd/qy;->u7()V

    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Labcd/Xx;

    iget-object v2, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Labcd/Xx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DW(Ljava/lang/Exception;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Labcd/qy;->FH:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final DW(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Labcd/qy;->FH:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/qy;->Hw:Z

    return v0
.end method

.method public final Hw()Z
    .registers 3

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Labcd/qy;->FH:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Zo()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Labcd/qy;->FH:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/qy;->FH:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/qy;->Hw:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v1, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "LSx",
            "<TTResult;TTContinuationResult;>;)",
            "LYx",
            "<TTContinuationResult;>;"
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
            "LYx",
            "<TTResult;>;"
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
            "LUx",
            "<TTResult;>;)",
            "LYx",
            "<TTResult;>;"
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
            "LYx",
            "<TTResult;>;"
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
            "LWx",
            "<-TTResult;>;)",
            "LYx",
            "<TTResult;>;"
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

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Labcd/qy;->VH()V

    invoke-direct {p0}, Labcd/qy;->u7()V

    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Labcd/Xx;

    iget-object v2, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Labcd/Xx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final j6(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Labcd/qy;->gn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v0, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Labcd/qy;->gn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/qy;->FH:Z

    iput-object p1, p0, Labcd/qy;->v5:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/qy;->DW:Labcd/oy;

    invoke-virtual {v0, p0}, Labcd/oy;->j6(Labcd/Yx;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v5()Z
    .registers 3

    iget-object v1, p0, Labcd/qy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Labcd/qy;->FH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Labcd/qy;->Hw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/qy;->Zo:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
