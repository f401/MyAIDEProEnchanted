.class Lcom/termux/app/TermuxActivity$8$5;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$8;->showInstallApkDialog(Lcom/termux/terminal/TerminalSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$8;

.field final val$apkFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$8;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8$5;->this$1:Lcom/termux/app/TermuxActivity$8;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$8$5;->val$apkFiles:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 605
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8$5;->this$1:Lcom/termux/app/TermuxActivity$8;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8$5;->val$apkFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;

    return-void
.end method
