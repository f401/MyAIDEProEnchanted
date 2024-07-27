.class final Labcd/hy;
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
        "Lny",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private FH:Labcd/Ux;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LUx",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/Ux;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LUx",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/hy;->DW:Ljava/lang/Object;

    iput-object p1, p0, Labcd/hy;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/hy;->FH:Labcd/Ux;

    return-void
.end method

.method static synthetic DW(Labcd/hy;)Labcd/Ux;
    .registers 2

    iget-object v0, p0, Labcd/hy;->FH:Labcd/Ux;

    return-object v0
.end method

.method static synthetic j6(Labcd/hy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/hy;->DW:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final j6(Labcd/Yx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v1, p0, Labcd/hy;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/hy;->FH:Labcd/Ux;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/hy;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/iy;

    invoke-direct {v1, p0, p1}, Labcd/iy;-><init>(Labcd/hy;Labcd/Yx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
