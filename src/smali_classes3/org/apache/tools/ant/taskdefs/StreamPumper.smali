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
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v0, v0, [B

    .line 258
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 262
    if-gtz v1, :cond_2

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v0, :cond_1

    .line 274
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v0, v5}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    .line 278
    :cond_1
    return-void

    .line 265
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v1, :cond_3

    .line 274
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v1, v5}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    .line 277
    :cond_3
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

    if-eqz v0, :cond_1

    .line 238
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    monitor-enter p0

    .line 244
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 245
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 248
    :cond_1
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
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

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 121
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 123
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v0, v0, [B

    .line 127
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitForInput(Ljava/io/InputStream;)V

    .line 130
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->doPostStop()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_2
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :goto_1
    return-void

    .line 134
    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 135
    if-ltz v1, :cond_1

    .line 139
    if-lez v1, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_4
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 152
    :try_start_7
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    .line 153
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_5
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 153
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 155
    :catchall_4
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v1, :cond_6

    .line 156
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_6
    iput-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 163
    throw v0

    .line 162
    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    .line 120
    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

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
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    if-nez v0, :cond_0

    .line 194
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set buffer size on a running StreamPumper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stop()Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    .registers 2

    monitor-enter p0

    .line 227
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 228
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;-><init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    :catchall_0
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
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_0
    monitor-exit p0

    return-void
.end method
