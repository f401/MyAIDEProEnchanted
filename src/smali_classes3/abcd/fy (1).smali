.class final Labcd/fy;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lny<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private FH:Labcd/Tx;

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/Tx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/fy;->DW:Ljava/lang/Object;

    iput-object p1, p0, Labcd/fy;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/fy;->FH:Labcd/Tx;

    return-void
.end method

.method static synthetic DW(Labcd/fy;)Labcd/Tx;
    .registers 1

    iget-object p0, p0, Labcd/fy;->FH:Labcd/Tx;

    return-object p0
.end method

.method static synthetic j6(Labcd/fy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/fy;->DW:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final j6(Labcd/Yx;)V
    .registers 3

    invoke-virtual {p1}, Labcd/Yx;->FH()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Labcd/fy;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Labcd/fy;->FH:Labcd/Tx;

    if-nez v0, :cond_f

    monitor-exit p1

    return-void

    :cond_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    iget-object p1, p0, Labcd/fy;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Labcd/gy;

    invoke-direct {v0, p0}, Labcd/gy;-><init>(Labcd/fy;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method
