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
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 522
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    const-string v1, "cd %1$s/usr&&./install.sh %1$s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/termux/app/TermuxActivity$8$1;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object v4, v4, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    return-void
.end method
