.class public Lorg/apache/tools/ant/util/WorkerAnt;
.super Ljava/lang/Thread;
.source "WorkerAnt.java"


# static fields
.field public static final ERROR_NO_TASK:Ljava/lang/String; = "No task defined"


# instance fields
.field private volatile buildException:Lorg/apache/tools/ant/BuildException;

.field private volatile exception:Ljava/lang/Throwable;

.field private volatile finished:Z

.field private notify:Ljava/lang/Object;

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/WorkerAnt;-><init>(Lorg/apache/tools/ant/Task;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;Ljava/lang/Object;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 58
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    .line 59
    if-eqz p2, :cond_d

    :goto_a
    iput-object p2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    .line 60
    return-void

    :cond_d
    move-object p2, p0

    .line 59
    goto :goto_a
.end method

.method private caught(Ljava/lang/Throwable;)V
    .registers 3

    monitor-enter p0

    .line 150
    :try_start_1
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->exception:Ljava/lang/Throwable;

    .line 151
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_d

    .line 152
    check-cast p1, Lorg/apache/tools/ant/BuildException;

    .line 153
    :goto_9
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->buildException:Lorg/apache/tools/ant/BuildException;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :cond_d
    :try_start_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    move-object p1, v0

    goto :goto_9

    .line 149
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBuildException()Lorg/apache/tools/ant/BuildException;
    .registers 2

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->buildException:Lorg/apache/tools/ant/BuildException;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->exception:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTask()Lorg/apache/tools/ant/Task;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rethrowAnyBuildException()V
    .registers 2

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/WorkerAnt;->getBuildException()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    .line 138
    if-nez v0, :cond_7

    .line 141
    return-void

    .line 139
    :cond_7
    throw v0
.end method

.method public run()V
    .registers 4

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->execute()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_17

    .line 168
    :cond_7
    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1

    .line 175
    :goto_13
    return-void

    .line 173
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0

    .line 165
    :catchall_17
    move-exception v0

    .line 166
    :try_start_18
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/WorkerAnt;->caught(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2b

    .line 168
    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1

    goto :goto_13

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v0

    .line 168
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    const/4 v2, 0x1

    :try_start_30
    iput-boolean v2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    .line 174
    throw v0

    .line 173
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public waitUntilFinished(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    add-long v2, v0, p1

    .line 122
    iget-object v4, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    :goto_d
    iget-boolean v5, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    if-nez v5, :cond_21

    cmp-long v5, v0, v2

    if-gez v5, :cond_21

    .line 125
    iget-object v5, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_d

    .line 128
    :cond_21
    monitor-exit v4

    .line 129
    return-void

    .line 128
    :catchall_23
    move-exception v0

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v0
.end method
