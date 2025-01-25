.class Lcom/termux/app/TermuxActivity$8$3;
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

    .line 552
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8$3;->this$1:Lcom/termux/app/TermuxActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 556
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8$3;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p2, p0, Lcom/termux/app/TermuxActivity$8$3;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object p2, p2, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 558
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 559
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    const-string v0, "/build.gradle"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 561
    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    .line 562
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8$3;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void
.end method
