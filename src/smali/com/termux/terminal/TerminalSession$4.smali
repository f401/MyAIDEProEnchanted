.class Lcom/termux/terminal/TerminalSession$4;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 3

    .line 233
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$4;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$4;->this$0:Lcom/termux/terminal/TerminalSession;

    iget v0, v0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-static {v0}, Lcom/termux/terminal/JNI;->waitFor(I)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$4;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$4;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
