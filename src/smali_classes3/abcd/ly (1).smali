.class final Labcd/ly;
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

.field private FH:Labcd/Wx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LWx<",
            "-TTResult;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/Wx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LWx<",
            "-TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/ly;->DW:Ljava/lang/Object;

    iput-object p1, p0, Labcd/ly;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/ly;->FH:Labcd/Wx;

    return-void
.end method

.method static synthetic DW(Labcd/ly;)Labcd/Wx;
    .registers 1

    iget-object p0, p0, Labcd/ly;->FH:Labcd/Wx;

    return-object p0
.end method

.method static synthetic j6(Labcd/ly;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/ly;->DW:Ljava/lang/Object;

    return-object p0
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

    invoke-virtual {p1}, Labcd/Yx;->v5()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Labcd/ly;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Labcd/ly;->FH:Labcd/Wx;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    iget-object v0, p0, Labcd/ly;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/my;

    invoke-direct {v1, p0, p1}, Labcd/my;-><init>(Labcd/ly;Labcd/Yx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    return-void
.end method
