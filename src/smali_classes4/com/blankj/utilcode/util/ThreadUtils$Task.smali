.class public abstract Lcom/blankj/utilcode/util/ThreadUtils$Task;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x3

.field private static final EXCEPTIONAL:I = 0x2

.field private static final INTERRUPTED:I = 0x5

.field private static final NEW:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final TIMEOUT:I = 0x6


# instance fields
.field private deliver:Ljava/util/concurrent/Executor;

.field private volatile isSchedule:Z

.field private mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

.field private mTimeoutMillis:J

.field private mTimer:Ljava/util/Timer;

.field private volatile runner:Ljava/lang/Thread;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ThreadUtils$Task;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->setSchedule(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/ThreadUtils$Task;)Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 1

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->timeout()V

    return-void
.end method

.method private getDeliver()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$600()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private setSchedule(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    return-void
.end method

.method private timeout()V
    .registers 4

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    goto :goto_d

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .registers 5

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2d

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_20
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDone()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public abstract onCancel()V
.end method

.method protected onDone()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$700()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    :cond_13
    return-void
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    if-eqz v0, :cond_24

    const-string v0, "ThreadUtils"

    const-string v1, "Scheduled task doesn\'t support timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->isSchedule:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v4, :cond_12

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;

    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_40} :catch_41
    .catchall {:try_start_24 .. :try_end_40} :catchall_8e

    goto :goto_12

    :catch_41
    move-exception v0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto :goto_12

    :cond_4a
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v4, :cond_24

    goto :goto_12

    :cond_53
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->runner:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$Task$1;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$1;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    iget-wide v2, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_24

    :cond_77
    :try_start_77
    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;

    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$3;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_8d} :catch_41
    .catchall {:try_start_77 .. :try_end_8d} :catchall_8e

    goto :goto_12

    :catchall_8e
    move-exception v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;

    invoke-direct {v2, p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task$4;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_12
.end method

.method public setDeliver(Ljava/util/concurrent/Executor;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->deliver:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setTimeout(JLcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;)Lcom/blankj/utilcode/util/ThreadUtils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;",
            ")",
            "Lcom/blankj/utilcode/util/ThreadUtils$Task",
            "<TT;>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutMillis:J

    iput-object p3, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task;->mTimeoutListener:Lcom/blankj/utilcode/util/ThreadUtils$Task$OnTimeoutListener;

    return-object p0
.end method
