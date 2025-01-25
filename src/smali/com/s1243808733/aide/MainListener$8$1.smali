.class Lcom/s1243808733/aide/MainListener$8$1;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/MainListener$8;

.field final val$finalml:Ljava/lang/String;

.field final val$g:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$8;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$8$1;->this$0:Lcom/s1243808733/aide/MainListener$8;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$8$1;->val$finalml:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$8$1;->val$g:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 620
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/s1243808733/aide/MainListener$8$1;->val$finalml:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$8$1;->val$finalml:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/yt/plugin/translate/ZipUtilApache;->doZip(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    new-instance v0, Lcom/s1243808733/aide/MainListener$8$1$1;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/MainListener$8$1$1;-><init>(Lcom/s1243808733/aide/MainListener$8$1;Ljava/io/File;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    goto :goto_63

    .line 632
    :catch_5a
    move-exception v0

    new-instance v0, Lcom/s1243808733/aide/MainListener$8$1$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/MainListener$8$1$2;-><init>(Lcom/s1243808733/aide/MainListener$8$1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_63
    return-void
.end method
