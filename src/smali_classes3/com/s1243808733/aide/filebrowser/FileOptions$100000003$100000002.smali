.class Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;
.super Ljava/lang/Thread;
.source "FileOptions.java"


# instance fields
.field private final this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;

.field private final val$context:Landroid/content/Context;

.field private final val$file:Ljava/io/File;

.field private final val$finalpkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;

    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;)Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->this$0:Lcom/s1243808733/aide/filebrowser/FileOptions$100000003;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    const/16 v0, 0x32

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->rootInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$finalpkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->startAc(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :goto_1
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->access$L1000000()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->access$L1000000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileOptions;->access$L1000000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileOptions$100000003$100000002;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileOptions;->installApk(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
