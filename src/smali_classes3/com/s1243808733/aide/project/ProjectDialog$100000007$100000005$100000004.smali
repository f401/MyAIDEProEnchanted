.class Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;

.field private final val$activity:Landroid/app/Activity;

.field private final val$dir:Ljava/lang/String;

.field private final val$g:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;Ljava/lang/String;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;)Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$dir:Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yt/plugin/translate/ZipUtilApache;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004$100000002;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004$100000002;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 156
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004$100000003;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004$100000003;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$100000007$100000005$100000004;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
