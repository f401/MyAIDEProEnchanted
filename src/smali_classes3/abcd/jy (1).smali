.class final Labcd/jy;
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

.field private FH:Labcd/Vx;

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/Vx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/jy;->DW:Ljava/lang/Object;

    iput-object p1, p0, Labcd/jy;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/jy;->FH:Labcd/Vx;

    return-void
.end method

.method static synthetic DW(Labcd/jy;)Labcd/Vx;
    .registers 1

    iget-object p0, p0, Labcd/jy;->FH:Labcd/Vx;

    return-object p0
.end method

.method static synthetic j6(Labcd/jy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/jy;->DW:Ljava/lang/Object;

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

    if-nez v0, :cond_24

    invoke-virtual {p1}, Labcd/Yx;->FH()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Labcd/jy;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Labcd/jy;->FH:Labcd/Vx;

    if-nez v1, :cond_15

    monitor-exit v0

    return-void

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_21

    iget-object v0, p0, Labcd/jy;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/ky;

    invoke-direct {v1, p0, p1}, Labcd/ky;-><init>(Labcd/jy;Labcd/Yx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_24

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    :goto_24
    return-void
.end method
