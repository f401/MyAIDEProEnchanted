.class Lcom/termux/app/TermuxActivity$100000016$100000014;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000016;

.field private final val$apkFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000016;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000016$100000014;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000016$100000014;->val$apkFiles:Ljava/util/List;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000016$100000014;)Lcom/termux/app/TermuxActivity$100000016;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000014;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000014;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000014;->val$apkFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;

    return-void
.end method
