.class public Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.super Ljava/lang/Object;
.source "PumpStreamHandler.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;


# static fields
.field private static final JOIN_TIMEOUT:J = 0xc8L


# instance fields
.field private err:Ljava/io/OutputStream;

.field private errorThread:Ljava/lang/Thread;

.field private input:Ljava/io/InputStream;

.field private inputThread:Ljava/lang/Thread;

.field private final nonBlockingRead:Z

.field private out:Ljava/io/OutputStream;

.field private outputThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1, p1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .registers 5

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V
    .registers 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_1

    .line 58
    if-eqz p2, :cond_0

    .line 61
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    .line 62
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    .line 63
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->input:Ljava/io/InputStream;

    .line 64
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->nonBlockingRead:Z

    .line 65
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "err must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private start(Ljava/lang/Thread;)V
    .registers 2

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method protected createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    .line 250
    return-void
.end method

.method protected createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 240
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    .line 241
    return-void
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .registers 4

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;
    .registers 5

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;
    .registers 8

    const/4 v2, 0x1

    .line 293
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V

    .line 294
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->setAutoflush(Z)V

    .line 295
    new-instance v1, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;-><init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 297
    return-object v1
.end method

.method protected final finish(Ljava/lang/Thread;)V
    .registers 10

    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    :try_start_0
    instance-of v2, p1, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    if-eqz v2, :cond_6

    .line 187
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;->getPumper()Lorg/apache/tools/ant/taskdefs/StreamPumper;

    move-result-object v2

    move-object v4, v2

    .line 189
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 197
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->stop()Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    move-result-object v2

    .line 199
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->isInPostStopTasks()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    const-wide/16 v6, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->awaitPostStopCompletion(JLjava/util/concurrent/TimeUnit;)Z

    .line 207
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 211
    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 213
    :catch_0
    move-exception v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    move-object v4, v3

    goto :goto_1
.end method

.method protected getErr()Ljava/io/OutputStream;
    .registers 2

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getOut()Ljava/io/OutputStream;
    .registers 2

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 118
    return-void
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .registers 5

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->nonBlockingRead:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method

.method public start()V
    .registers 2

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    .line 140
    return-void
.end method

.method public stop()V
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    goto :goto_0
.end method
