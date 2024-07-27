.class public Labcd/kz;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/kz$a;
    }
.end annotation


# static fields
.field private static final DW:I

.field private static final FH:I

.field private static final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Labcd/kz;->j6:I

    sget v0, Labcd/kz;->j6:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Labcd/kz;->DW:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Labcd/kz;->FH:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Labcd/az;Ljava/util/concurrent/ThreadFactory;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Labcd/_y;",
            ":",
            "Labcd/lz;",
            ":",
            "Labcd/hz;",
            ">(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Laz",
            "<TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-void
.end method

.method public static j6()Labcd/kz;
    .registers 2

    sget v0, Labcd/kz;->DW:I

    sget v1, Labcd/kz;->FH:I

    invoke-static {v0, v1}, Labcd/kz;->j6(II)Labcd/kz;

    move-result-object v0

    return-object v0
.end method

.method public static j6(II)Labcd/kz;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Labcd/_y;",
            ":",
            "Labcd/lz;",
            ":",
            "Labcd/hz;",
            ">(II)",
            "Labcd/kz;"
        }
    .end annotation

    new-instance v1, Labcd/kz;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Labcd/az;

    invoke-direct {v7}, Labcd/az;-><init>()V

    new-instance v8, Labcd/kz$a;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Labcd/kz$a;-><init>(I)V

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Labcd/kz;-><init>(IIJLjava/util/concurrent/TimeUnit;Labcd/az;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Labcd/lz;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Labcd/lz;->j6(Z)V

    invoke-interface {v0, p2}, Labcd/lz;->j6(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Labcd/kz;->getQueue()Labcd/az;

    move-result-object v0

    invoke-virtual {v0}, Labcd/az;->j6()V

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {p1}, Labcd/jz;->DW(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/kz;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getQueue()Labcd/az;
    .registers 2

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Labcd/az;

    return-object v0
.end method

.method public bridge synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2

    invoke-virtual {p0}, Labcd/kz;->getQueue()Labcd/az;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/gz;

    invoke-direct {v0, p1, p2}, Labcd/gz;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/gz;

    invoke-direct {v0, p1}, Labcd/gz;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
