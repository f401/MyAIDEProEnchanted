.class Lcom/termux/app/TermuxInstaller$100000006$100000004;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxInstaller$100000006;

.field private final val$activity:Landroid/app/Activity;

.field private final val$e:Ljava/lang/Exception;

.field private final val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$100000006;Landroid/app/Activity;Ljava/lang/Exception;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$e:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$whenDone:Ljava/lang/Runnable;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxInstaller$100000006$100000004;)Lcom/termux/app/TermuxInstaller$100000006;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

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

    .line 152
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "bootstrap_error_title"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "bootstrap_error_abort"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;

    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;-><init>(Lcom/termux/app/TermuxInstaller$100000006$100000004;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "bootstrap_error_try_again"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;

    iget-object v3, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {v2, p0, v3, v4}, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;-><init>(Lcom/termux/app/TermuxInstaller$100000006$100000004;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
