.class Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007;

.field private final val$activity:Landroid/app/Activity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$100000007;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;)Lcom/s1243808733/aide/project/ProjectDialog$100000007;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u65e0\u6548\u8def\u5f84"

    :goto_0
    invoke-static {v0, v6}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :goto_1
    return-void

    .line 134
    :cond_1
    const-string v0, "Invalid path"

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 139
    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$activity:Landroid/app/Activity;

    const-string/jumbo v0, "\u6b63\u5728\u5bfc\u5165\u9879\u76ee"

    const-string v1, "Importing project"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\u5f53\u524d\u5bfc\u5165\u7684\u9879\u76ee: "

    const-string v5, "Currently Imported Project: "

    invoke-static {v1, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, p0, v2, v4, v0}, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;Ljava/lang/String;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
