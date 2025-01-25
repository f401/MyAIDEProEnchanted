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
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result p1

    if-lez p1, :cond_95

    .line 115
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    invoke-virtual {v0, v1, p1}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 116
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    goto :goto_95

    .line 118
    :cond_29
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_95

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->cleanupResources(I)V

    .line 121
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, v1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    .line 124
    const-string v0, ")"

    if-lez p1, :cond_5a

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_71

    :cond_5a
    if-gez p1, :cond_6f

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (signal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_71

    .line 127
    :cond_6f
    const-string p1, "\r\n[Process completed"

    .line 131
    :goto_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - press Enter]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 135
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    :cond_95
    :goto_95
    return-void
.end method
