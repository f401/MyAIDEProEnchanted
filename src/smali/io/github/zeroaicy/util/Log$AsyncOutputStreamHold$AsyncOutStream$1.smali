.class Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$1;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 598
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$1;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
