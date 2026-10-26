.class Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$2;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->close()V
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

    .line 607
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$2;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 611
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream$2;->this$0:Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    iget-object v0, v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
