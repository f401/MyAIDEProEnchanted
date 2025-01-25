.class final Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;,
        Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

.field private workerRunCount:J

.field private workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 69
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 82
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p1
.end method

.method static synthetic access$308(Lcom/google/common/util/concurrent/SequentialExecutor;)J
    .registers 5

    .line 49
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    return-wide v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v3

    .line 103
    :try_start_8
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v0, v4, :cond_14

    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, v4, :cond_1b

    .line 104
    :cond_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v3

    .line 163
    :cond_1a
    :goto_1a
    return-void

    .line 108
    :cond_1b
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 116
    new-instance v6, Lcom/google/common/util/concurrent/SequentialExecutor$1;

    invoke-direct {v6, p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$1;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v0, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 125
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_7a

    .line 128
    :try_start_2c
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_33} :catch_55
    .catch Ljava/lang/Error; {:try_start_2c .. :try_end_33} :catch_7d

    .line 141
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v3, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v0, v3, :cond_53

    .line 155
    :goto_39
    if-nez v2, :cond_1a

    .line 158
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v1

    .line 159
    :try_start_3e
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, v2, :cond_4e

    .line 160
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 162
    :cond_4e
    monitor-exit v1

    goto :goto_1a

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    move v2, v1

    .line 141
    goto :goto_39

    .line 129
    :catch_55
    move-exception v0

    .line 130
    :goto_56
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v3

    .line 131
    :try_start_59
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v5, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v4, v5, :cond_65

    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v5, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v4, v5, :cond_6e

    :cond_65
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 133
    invoke-interface {v4, v6}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    move v1, v2

    .line 136
    :cond_6e
    instance-of v2, v0, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v2, :cond_79

    if-nez v1, :cond_79

    .line 139
    monitor-exit v3

    goto :goto_1a

    :catchall_76
    move-exception v0

    monitor-exit v3
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_76

    throw v0

    .line 137
    :cond_79
    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    .line 125
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    .line 129
    :catch_7d
    move-exception v0

    goto :goto_56
.end method
