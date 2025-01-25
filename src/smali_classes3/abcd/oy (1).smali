.class final Labcd/oy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lny<",
            "TTResult;>;>;"
        }
    .end annotation
.end field

.field private FH:Z

.field private final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/oy;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final j6(Labcd/Yx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/oy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Labcd/oy;->DW:Ljava/util/Queue;

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Labcd/oy;->FH:Z

    if-eqz v1, :cond_c

    goto :goto_2a

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/oy;->FH:Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    :goto_10
    iget-object v1, p0, Labcd/oy;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Labcd/oy;->DW:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ny;

    if-nez v0, :cond_22

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/oy;->FH:Z

    monitor-exit v1

    return-void

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_27

    invoke-interface {v0, p1}, Labcd/ny;->j6(Labcd/Yx;)V

    goto :goto_10

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method public final j6(Labcd/ny;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lny<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/oy;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Labcd/oy;->DW:Ljava/util/Queue;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Labcd/oy;->DW:Ljava/util/Queue;

    :cond_e
    iget-object v1, p0, Labcd/oy;->DW:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method
