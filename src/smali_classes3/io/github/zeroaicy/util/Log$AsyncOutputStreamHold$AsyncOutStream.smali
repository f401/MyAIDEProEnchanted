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

    .line 546
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 547
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    .line 548
    invoke-direct {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->checkWriteLogThread()V

    return-void
.end method

.method private addRunnable(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 617
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->checkWriteLogThread()V

    .line 618
    sget-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :goto_0
    monitor-exit p0

    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 620
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkWriteLogThread()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    sget-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    invoke-direct {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    .line 554
    sget-object v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->mWriteLogThread:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;

    invoke-virtual {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 572
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000001;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000001;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;)V

    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 559
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000000;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000000;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;)V

    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 585
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000002;

    invoke-direct {v0, p0, p1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000002;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;I)V

    .line 595
    invoke-direct {p0, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 601
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 602
    new-instance v1, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000003;

    invoke-direct {v1, p0, v0, p2, p3}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$100000003;-><init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;[BII)V

    .line 611
    invoke-direct {p0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
