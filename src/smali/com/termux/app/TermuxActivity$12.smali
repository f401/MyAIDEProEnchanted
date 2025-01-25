.class Lcom/termux/app/TermuxActivity$12;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    .line 764
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$12;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$12;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    const-string v1, "clear\n"

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$12;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 774
    const-string v1, "gradle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 775
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 776
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$12;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object v0, v1, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    .line 778
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$12;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v1, v1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method
