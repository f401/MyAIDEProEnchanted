.class abstract Landroidx/loader/content/ModernAsyncTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;,
        Landroidx/loader/content/ModernAsyncTask$InternalHandler;,
        Landroidx/loader/content/ModernAsyncTask$Status;,
        Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

.field final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/ModernAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$1;

    invoke-direct {v0}, Landroidx/loader/content/ModernAsyncTask$1;-><init>()V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroidx/loader/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroidx/loader/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$2;

    invoke-direct {v0, p0}, Landroidx/loader/content/ModernAsyncTask$2;-><init>(Landroidx/loader/content/ModernAsyncTask;)V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$3;

    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Landroidx/loader/content/ModernAsyncTask$3;-><init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 2

    const-class v0, Landroidx/loader/content/ModernAsyncTask;

    monitor-enter v0

    :try_start_3
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    if-nez v0, :cond_e

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    invoke-direct {v0}, Landroidx/loader/content/ModernAsyncTask$InternalHandler;-><init>()V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    :cond_e
    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sHandler:Landroidx/loader/content/ModernAsyncTask$InternalHandler;

    const-class v1, Landroidx/loader/content/ModernAsyncTask;

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    const-class v1, Landroidx/loader/content/ModernAsyncTask;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    throw v0
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    sput-object p0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroidx/loader/content/ModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroidx/loader/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroidx/loader/content/ModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    if-eq v0, v1, :cond_2e

    sget-object v0, Landroidx/loader/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroidx/loader/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->onPreExecute()V

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;

    iput-object p2, v0, Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->onCancelled(Ljava/lang/Object;)V

    :goto_9
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Landroidx/loader/content/ModernAsyncTask$Status;
    .registers 2

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mStatus:Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Landroidx/loader/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method
