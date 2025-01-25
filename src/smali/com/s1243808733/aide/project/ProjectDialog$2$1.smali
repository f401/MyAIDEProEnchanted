.class Lcom/s1243808733/aide/project/ProjectDialog$2$1;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 131
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_57

    .line 138
    :cond_18
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 139
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    const-string v2, "正在导入项目"

    const-string v3, "Importing project"

    invoke-static {v2, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "当前导入的项目: "

    const-string v5, "Currently Imported Project: "

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2$1;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 134
    :cond_57
    :goto_57
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_60

    const-string p1, "无效路径"

    goto :goto_62

    :cond_60
    const-string p1, "Invalid path"

    :goto_62
    invoke-static {p1, v1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
