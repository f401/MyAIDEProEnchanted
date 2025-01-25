.class Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->write([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

.field final val$buf2:[B

.field final val$len:I

.field final val$off:I


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iput-object p2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$buf2:[B

    iput p3, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$off:I

    iput p4, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 641
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$buf2:[B

    iget v2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$off:I

    iget v3, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->val$len:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_1b

    :catch_e
    move-exception v0

    .line 643
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$4;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v2, v2, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_1b
    return-void
.end method
