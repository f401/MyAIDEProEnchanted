.class Lcom/termux/terminal/TerminalSession$1;
.super Landroid/os/Handler;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/terminal/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mReceiveBuffer:[B

.field final this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    invoke-virtual {v1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 116
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalSession;->cleanupResources(I)V

    .line 121
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v1, v2}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    .line 124
    if-lez v0, :cond_2

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - press Enter]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 135
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    goto :goto_0

    .line 126
    :cond_2
    if-gez v0, :cond_3

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (signal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_3
    const-string v0, "\r\n[Process completed"

    goto :goto_1
.end method
