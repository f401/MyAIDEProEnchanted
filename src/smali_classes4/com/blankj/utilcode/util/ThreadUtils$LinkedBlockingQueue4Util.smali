.class final Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;
.super Ljava/util/concurrent/LinkedBlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedBlockingQueue4Util"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private volatile mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    iput p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    :cond_d
    return-void
.end method

.method static synthetic access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .registers 4

    iget v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->size()I

    move-result v1

    if-gt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b
.end method
