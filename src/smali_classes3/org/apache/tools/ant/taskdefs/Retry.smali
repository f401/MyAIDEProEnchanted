.class public Lorg/apache/tools/ant/taskdefs/Retry;
.super Lorg/apache/tools/ant/Task;
.source "Retry.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# instance fields
.field private nestedTask:Lorg/apache/tools/ant/Task;

.field private retryCount:I

.field private retryDelay:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    return-void
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .registers 4

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The retry task container accepts a single nested task (which may be a sequential task container)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 86
    :goto_0
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    if-gt v0, v2, :cond_0

    .line 88
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->perform()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 91
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    if-ge v0, v2, :cond_3

    .line 98
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    if-lez v2, :cond_2

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: error occurred; retrying after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ms..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    :goto_1
    invoke-virtual {p0, v2, v3, v6}, Lorg/apache/tools/ant/taskdefs/Retry;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 104
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    if-lez v2, :cond_1

    .line 107
    int-to-long v2, v2

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: error occurred; retrying..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    .line 95
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    .line 93
    const-string v3, "Task [%s] failed after [%d] attempts; giving up.%nError messages:%n%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Retry;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 108
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public setRetryCount(I)V
    .registers 2

    .line 64
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    .line 65
    return-void
.end method

.method public setRetryDelay(I)V
    .registers 4

    .line 73
    if-ltz p1, :cond_0

    .line 76
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    .line 77
    return-void

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "retryDelay must be a non-negative number"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
