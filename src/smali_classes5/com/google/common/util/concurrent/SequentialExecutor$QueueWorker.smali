.class final Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final this$0:Lcom/google/common/util/concurrent/SequentialExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SequentialExecutor;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V
    .registers 3

    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .registers 9

    const/4 v1, 0x0

    .line 195
    move v0, v1

    move v2, v1

    .line 200
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v3

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_75

    .line 203
    if-nez v0, :cond_83

    .line 204
    :try_start_c
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v0}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$200(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, v1, :cond_21

    .line 206
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_80

    .line 236
    if-eqz v2, :cond_20

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_20
    :goto_20
    return-void

    .line 211
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v0}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$308(Lcom/google/common/util/concurrent/SequentialExecutor;)J

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    sget-object v1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 213
    const/4 v1, 0x1

    .line 216
    :goto_2e
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v0}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 217
    if-nez v0, :cond_4e

    .line 218
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    sget-object v1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 219
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_80

    .line 236
    if-eqz v2, :cond_20

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_20

    .line 221
    :cond_4e
    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_80

    .line 225
    :try_start_4f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_75

    move-result v3

    or-int/2addr v2, v3

    .line 227
    :try_start_54
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_57} :catch_59
    .catchall {:try_start_54 .. :try_end_57} :catchall_75

    :goto_57
    move v0, v1

    .line 231
    goto :goto_3

    .line 228
    :catch_59
    move-exception v3

    .line 229
    :try_start_5a
    invoke-static {}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_75

    goto :goto_57

    .line 236
    :catchall_75
    move-exception v0

    if-eqz v2, :cond_7f

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 239
    :cond_7f
    throw v0

    .line 221
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_75

    :cond_83
    move v1, v0

    goto :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->workOnQueue()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4

    .line 180
    return-void

    .line 172
    :catch_4
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v1

    monitor-enter v1

    .line 174
    :try_start_c
    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    sget-object v3, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 175
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 176
    throw v0

    .line 175
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
