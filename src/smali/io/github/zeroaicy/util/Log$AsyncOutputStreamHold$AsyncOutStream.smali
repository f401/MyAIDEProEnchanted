.class public Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;
.super Ljava/io/OutputStream;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncOutStream"
.end annotation


# static fields
.field private static mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;


# instance fields
.field protected out:Ljava/io/OutputStream;

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 581
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 582
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    .line 583
    invoke-direct {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->checkWriteLogThread()V

    return-void
.end method

.method private addRunnable(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    .line 652
    :try_start_1
    invoke-direct {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->checkWriteLogThread()V

    .line 653
    sget-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_17

    :catchall_c
    move-exception p1

    .line 655
    :try_start_d
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_19

    .line 657
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkWriteLogThread()V
    .registers 2

    .line 587
    sget-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    if-nez v0, :cond_e

    .line 588
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    invoke-direct {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    .line 589
    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->start()V

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 607
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$2;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$2;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;)V

    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .registers 2

    .line 594
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$1;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$1;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;)V

    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;

    invoke-direct {v0, p0, p1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;I)V

    .line 630
    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 636
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 637
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;[BII)V

    .line 646
    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
