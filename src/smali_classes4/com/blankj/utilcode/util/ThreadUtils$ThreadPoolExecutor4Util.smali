.class final Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadPoolExecutor4Util"
.end annotation


# instance fields
.field private final mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p6, p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    iput-object p6, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    return-void
.end method

.method static synthetic access$100(II)Ljava/util/concurrent/ExecutorService;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->createPool(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static createPool(II)Ljava/util/concurrent/ExecutorService;
    .registers 14

    const-wide/16 v10, 0x1e

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_8f

    const/4 v0, -0x4

    if-eq p0, v0, :cond_6a

    const/4 v0, -0x2

    if-eq p0, v0, :cond_50

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3b

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v7}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    :goto_3a
    return-object v1

    :cond_3b
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v7}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v0, "single"

    invoke-direct {v8, v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_3a

    :cond_50
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    const/4 v0, 0x0

    const/16 v3, 0x80

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v7, v2}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v2, "cached"

    invoke-direct {v8, v2, p1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_3a

    :cond_6a
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v7}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v0, "io"

    invoke-direct {v8, v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-wide v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_3a

    :cond_8f
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->access$200()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v7, v2}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v2, "cpu"

    invoke-direct {v8, v2, p1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, v0

    move-wide v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_3a
.end method

.method private getSubmittedCount()I
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_1e

    goto :goto_6

    :catch_10
    move-exception v0

    const-string v0, "ThreadUtils"

    const-string v1, "This will not happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    goto :goto_6

    :catchall_1e
    move-exception v0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_6
.end method
