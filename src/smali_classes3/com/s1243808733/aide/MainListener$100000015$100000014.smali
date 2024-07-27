.class Lcom/s1243808733/aide/MainListener$100000015$100000014;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000015;

.field private final val$finalml:Ljava/lang/String;

.field private final val$g:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000015;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->this$0:Lcom/s1243808733/aide/MainListener$100000015;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$finalml:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000015$100000014;)Lcom/s1243808733/aide/MainListener$100000015;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->this$0:Lcom/s1243808733/aide/MainListener$100000015;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 620
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$finalml:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$finalml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/ZipUtilApache;->doZip(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    new-instance v1, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2, v0}, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000012;-><init>(Lcom/s1243808733/aide/MainListener$100000015$100000014;Landroid/app/ProgressDialog;Ljava/io/File;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 632
    new-instance v0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;-><init>(Lcom/s1243808733/aide/MainListener$100000015$100000014;Landroid/app/ProgressDialog;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
