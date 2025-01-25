.class Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/project/ProjectDialog$2$1;

.field final val$dir:Ljava/lang/String;

.field final val$g:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$2$1;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->this$1:Lcom/s1243808733/aide/project/ProjectDialog$2$1;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->val$dir:Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yt/plugin/translate/ZipUtilApache;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->this$1:Lcom/s1243808733/aide/project/ProjectDialog$2$1;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_2b

    .line 156
    :catch_1c
    move-exception v0

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;->this$1:Lcom/s1243808733/aide/project/ProjectDialog$2$1;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2$1;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

    iget-object v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/project/ProjectDialog$2$1$1$2;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2b
    return-void
.end method
