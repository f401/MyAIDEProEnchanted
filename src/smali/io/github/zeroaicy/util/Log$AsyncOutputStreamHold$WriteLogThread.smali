.class public Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;
.super Ljava/lang/Thread;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteLogThread"
.end annotation


# instance fields
.field mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 559
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 560
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 565
    :goto_0
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_0

    :catch_d
    move-exception v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
