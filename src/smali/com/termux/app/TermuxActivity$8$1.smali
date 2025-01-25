.class Lcom/termux/app/TermuxActivity$8$1;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$8;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$8;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$8;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 522
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "cd %1$s/usr&&./install.sh %1$s\n"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    return-void
.end method
