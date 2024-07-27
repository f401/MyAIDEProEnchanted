.class Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;)Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Labcd/ProjectFilesUtil;->isGradleProject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 28
    invoke-static {v0}, Labcd/ProjectFilesUtil;->getGradleConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 31
    :goto_21
    if-eqz v3, :cond_26

    array-length v4, v3

    if-lt v0, v4, :cond_42

    .line 39
    :cond_26
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->yS()V

    .line 40
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "已添加到项目"

    :goto_35
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000000;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_41
    return-void

    .line 32
    :cond_42
    aget-object v4, v3, v0

    .line 33
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_73

    .line 35
    const-string v5, "abcd.Be"

    invoke-static {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance()Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    const-string v6, "j6"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    const-string v6, "Hw"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 37
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 40
    :cond_76
    const-string v0, "Added to project"

    goto :goto_35
.end method