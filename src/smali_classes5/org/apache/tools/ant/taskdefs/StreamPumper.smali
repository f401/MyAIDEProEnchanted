.class public Lorg/apache/tools/ant/taskdefs/StreamPumper;
.super Ljava/lang/Object;
.source "StreamPumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    }
.end annotation


# static fields
.field private static final POLL_INTERVAL:J = 0x64L

.field private static final SMALL_BUFFER_SIZE:I = 0x80


# instance fields
.field private volatile askedToStop:Z

.field private autoflush:Z

.field private bufferSize:I

.field private final closeWhenExhausted:Z

.field private exception:Ljava/lang/Exception;

.field private volatile finished:Z

.field private final is:Ljava/io/InputStream;

.field private final os:Ljava/io/OutputStream;

.field private postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

.field private started:Z

.field private final useAvailable:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 5

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V
    .registers 7

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    .line 44
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    .line 45
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    .line 87
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 88
    iput-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    .line 89
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->useAvailable:Z

    .line 90
    return-void
.end method

.method private doPostStop()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 252
    :try_start_1
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v0, v0, [B

    .line 258
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-eqz v1, :cond_1f

    .line 260
    :goto_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1f

    .line 261
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 262
    if-gtz v1, :cond_35

    .line 271
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3c

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v0, :cond_34

    .line 274
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v0, v5}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    .line 278
    :cond_34
    return-void

    .line 265
    :cond_35
    :try_start_35
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3c

    goto :goto_9

    .line 273
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v1, :cond_4d

    .line 274
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v1, v5}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    .line 277
    :cond_4d
    throw v0
.end method

.method private waitForInput(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->useAvailable:Z

    if-eqz v0, :cond_25

    .line 238
    :goto_4
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v0, :cond_25

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_25

    .line 239
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 243
    monitor-enter p0

    .line 244
    const-wide/16 v0, 0x64

    :try_start_17
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 245
    monitor-exit p0

    goto :goto_4

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 240
    :cond_1f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 248
    :cond_25
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_1
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFinished()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    return v0
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    monitor-enter p0

    .line 119
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 120
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a5

    .line 121
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 123
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v0, v0, [B

    .line 127
    :cond_d
    :goto_d
    :try_start_d
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v1, :cond_26

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_26

    .line 128
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitForInput(Ljava/io/InputStream;)V

    .line 130
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v1, :cond_26

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 147
    :cond_26
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->doPostStop()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_29} :catch_56
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_70
    .catchall {:try_start_d .. :try_end_29} :catchall_8e

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_32

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_32
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_6d

    .line 163
    :goto_3b
    return-void

    .line 134
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 135
    if-ltz v1, :cond_26

    .line 139
    if-lez v1, :cond_d

    .line 141
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    if-eqz v1, :cond_d

    .line 143
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_55} :catch_70
    .catchall {:try_start_3c .. :try_end_55} :catchall_8e

    goto :goto_d

    .line 148
    :catch_56
    move-exception v0

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_60

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_60
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_3b

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw v0

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    .line 150
    :catch_70
    move-exception v0

    .line 151
    :try_start_71
    monitor-enter p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_8e

    .line 152
    :try_start_72
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    .line 153
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_8b

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_7e

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_7e
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_83
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_3b

    :catchall_88
    move-exception v0

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_88

    throw v0

    .line 153
    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 155
    :catchall_8e
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v1, :cond_98

    .line 156
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_98
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_9d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a2

    .line 163
    throw v0

    .line 162
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0

    .line 120
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method setAutoflush(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    .line 109
    return-void
.end method

.method public setBufferSize(I)V
    .registers 4

    monitor-enter p0

    .line 191
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    if-nez v0, :cond_9

    .line 194
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 195
    monitor-exit p0

    return-void

    .line 192
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set buffer size on a running StreamPumper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 190
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stop()Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    .registers 2

    monitor-enter p0

    .line 227
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 228
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;-><init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 226
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitFor()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 180
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1

    .line 179
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_e
    monitor-exit p0

    return-void
.end method
