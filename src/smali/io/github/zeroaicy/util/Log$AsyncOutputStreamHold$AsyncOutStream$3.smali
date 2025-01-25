.class Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->write(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

.field final val$b:I


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 620
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iput p2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 624
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;->val$b:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_17

    :catchall_a
    move-exception v0

    .line 626
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$3;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v2, v2, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_17
    return-void
.end method
