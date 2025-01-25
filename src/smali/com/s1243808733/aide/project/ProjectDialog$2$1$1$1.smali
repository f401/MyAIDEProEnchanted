.class Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$1;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$1;->this$2:Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$1;->this$2:Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->val$g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 151
    const-string v0, "导入项目成功"

    const-string v1, "Import project succeeded"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
