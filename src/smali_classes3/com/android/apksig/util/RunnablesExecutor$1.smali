.class final Lcom/android/apksig/util/RunnablesExecutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/RunnablesExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/util/RunnablesExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private final PARALLELISM:I

.field private final QUEUE_SIZE:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->QUEUE_SIZE:I

    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V
    .registers 3

    invoke-interface {p0}, Lcom/android/apksig/util/RunnablesProvider;->createRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Ljava/util/concurrent/Phaser;->arriveAndDeregister()I

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/apksig/util/RunnablesProvider;)V
    .registers 11

    iget v2, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v2, Ljava/util/concurrent/Phaser;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/Phaser;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v2}, Lcom/android/apksig/util/RunnablesExecutor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V

    invoke-virtual {v2}, Ljava/util/concurrent/Phaser;->register()I

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
