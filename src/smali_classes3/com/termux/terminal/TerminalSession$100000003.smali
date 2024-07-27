.class Lcom/termux/terminal/TerminalSession$100000003;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# instance fields
.field private final this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$100000003;->this$0:Lcom/termux/terminal/TerminalSession;

    return-void
.end method

.method static access$0(Lcom/termux/terminal/TerminalSession$100000003;)Lcom/termux/terminal/TerminalSession;
    .registers 2

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$100000003;->this$0:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$100000003;->this$0:Lcom/termux/terminal/TerminalSession;

    iget v0, v0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-static {v0}, Lcom/termux/terminal/JNI;->waitFor(I)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$100000003;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$100000003;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
