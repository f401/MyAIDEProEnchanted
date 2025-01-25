.class public Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;
.super Ljava/lang/Object;
.source "ExecuteWatchdog.java"

# interfaces
.implements Lorg/apache/tools/ant/util/TimeoutObserver;


# instance fields
.field private caught:Ljava/lang/Exception;

.field private volatile killedProcess:Z

.field private process:Ljava/lang/Process;

.field private volatile watch:Z

.field private watchdog:Lorg/apache/tools/ant/util/Watchdog;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    .line 80
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 54
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    .line 66
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    .line 67
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V

    .line 68
    return-void
.end method


# virtual methods
.method public checkException()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v0, :cond_7

    .line 159
    monitor-exit p0

    return-void

    .line 156
    :cond_7
    :try_start_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in ExecuteWatchdog.run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_26

    .line 154
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cleanUp()V
    .registers 2

    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 144
    monitor-exit p0

    return-void

    .line 141
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWatching()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    return v0
.end method

.method public killedProcess()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    return v0
.end method

.method public start(Ljava/lang/Process;)V
    .registers 4

    monitor-enter p0

    .line 89
    if-eqz p1, :cond_24

    .line 92
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    if-nez v0, :cond_19

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    .line 100
    monitor-exit p0

    return-void

    .line 93
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 88
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "process is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_21
.end method

.method public stop()V
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 109
    monitor-exit p0

    return-void

    .line 106
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .registers 3

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_6
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_19
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 134
    :cond_6
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_20

    .line 135
    :goto_9
    monitor-exit p0

    return-void

    .line 123
    :catch_b
    move-exception v0

    .line 126
    :try_start_c
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_28
    .catchall {:try_start_c .. :try_end_e} :catchall_23

    if-eqz v0, :cond_6

    .line 127
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_19
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    goto :goto_6

    .line 131
    :catch_19
    move-exception v0

    .line 132
    :goto_1a
    :try_start_1a
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_23

    .line 134
    :try_start_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_9

    .line 121
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :catchall_23
    move-exception v0

    :goto_24
    :try_start_24
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V

    .line 135
    throw v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_20

    .line 131
    :catch_28
    move-exception v0

    goto :goto_1a

    .line 134
    :catchall_2a
    move-exception v0

    goto :goto_24
.end method
