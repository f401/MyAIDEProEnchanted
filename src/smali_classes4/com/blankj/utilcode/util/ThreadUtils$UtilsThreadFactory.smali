.class final Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UtilsThreadFactory"
.end annotation


# static fields
.field private static final POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = -0x7fcda7124588b1d6L


# instance fields
.field private final isDaemon:Z

.field private final namePrefix:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-pool-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->namePrefix:Ljava/lang/String;

    iput p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->priority:I

    iput-boolean p3, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->isDaemon:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$1;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$1;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->isDaemon:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$2;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$2;-><init>(Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->priority:I

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v1
.end method
