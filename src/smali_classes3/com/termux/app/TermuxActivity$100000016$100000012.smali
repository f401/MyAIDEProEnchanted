.class Lcom/termux/app/TermuxActivity$100000016$100000012;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000016;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000016;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000016$100000012;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000016$100000012;)Lcom/termux/app/TermuxActivity$100000016;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000012;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000012;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$100000016$100000012;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v1}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 558
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 559
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "/build.gradle"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 561
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    .line 562
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000012;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void
.end method
