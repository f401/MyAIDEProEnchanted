.class Lcom/termux/app/TermuxInstaller$2$2;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxInstaller$2;

.field final val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$2;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2$2;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$2$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 152
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2$2;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object v1, v1, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "bootstrap_error_title"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    const-string v1, "bootstrap_error_abort"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/termux/app/TermuxInstaller$2$2$2;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$2$2$2;-><init>(Lcom/termux/app/TermuxInstaller$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    const-string v1, "bootstrap_error_try_again"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/termux/app/TermuxInstaller$2$2$1;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$2$2$1;-><init>(Lcom/termux/app/TermuxInstaller$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_3e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    return-void
.end method
