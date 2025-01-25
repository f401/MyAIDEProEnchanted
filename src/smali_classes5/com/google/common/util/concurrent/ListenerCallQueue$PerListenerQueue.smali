.class final Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerListenerQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field isThreadScheduled:Z

.field final labelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    .line 138
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    .line 146
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    .line 147
    return-void
.end method


# virtual methods
.method add(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 153
    monitor-exit p0

    return-void

    .line 150
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dispatch()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    .line 161
    monitor-enter p0

    .line 162
    :try_start_3
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    if-nez v2, :cond_46

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 166
    :goto_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_43

    .line 167
    if-eqz v0, :cond_12

    .line 169
    :try_start_d
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_12} :catch_13

    .line 183
    :cond_12
    return-void

    .line 170
    :catch_13
    move-exception v0

    .line 172
    monitor-enter p0

    .line 173
    const/4 v1, 0x0

    :try_start_16
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 174
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_40

    .line 176
    invoke-static {}, Lcom/google/common/util/concurrent/ListenerCallQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while running callbacks for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    throw v0

    .line 174
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 166
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    move v0, v1

    goto :goto_a
.end method

.method public run()V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    .line 192
    :goto_2
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_4a

    .line 193
    :try_start_3
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 194
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 195
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 196
    if-nez v0, :cond_1d

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_53

    .line 199
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_5d

    .line 223
    return-void

    .line 201
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_53

    .line 205
    :try_start_1e
    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;->call(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_4a

    goto :goto_2

    .line 206
    :catch_24
    move-exception v0

    .line 208
    :try_start_25
    invoke-static {}, Lcom/google/common/util/concurrent/ListenerCallQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_4a

    goto :goto_2

    .line 215
    :catchall_4a
    move-exception v0

    :goto_4b
    if-eqz v2, :cond_52

    .line 218
    monitor-enter p0

    .line 219
    const/4 v1, 0x0

    :try_start_4f
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 220
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 222
    :cond_52
    throw v0

    .line 201
    :catchall_53
    move-exception v0

    move v1, v2

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_5d

    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 215
    :catchall_57
    move-exception v0

    move v2, v1

    goto :goto_4b

    .line 220
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    .line 201
    :catchall_5d
    move-exception v0

    goto :goto_55
.end method
