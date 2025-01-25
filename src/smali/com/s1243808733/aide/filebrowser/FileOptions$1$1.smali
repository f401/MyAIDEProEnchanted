.class Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;
.super Ljava/lang/Thread;
.source "FileOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/filebrowser/FileOptions$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileOptions$1;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 152
    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 158
    :goto_7
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->rootInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->startAc(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2e

    .line 167
    :cond_23
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$1$1;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$1;

    iget-object v1, v1, Lcom/s1243808733/aide/filebrowser/FileOptions$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 171
    :goto_2e
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->-$$Nest$sfgetpd()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->-$$Nest$sfgetpd()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 173
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->-$$Nest$sfgetpd()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_45
    return-void
.end method
