.class Lcom/s1243808733/aide/MainListener$1$3;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$1;->handlerNewFileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/MainListener$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$1;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v1, v0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6587\u4ef6\u5df2\u5b58\u5728"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 212
    :goto_1
    return-void

    .line 202
    :cond_0
    const-string v0, "file already exist"

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 208
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 212
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v1, v0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u65e0\u6cd5\u5199\u5165"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v0, "Unable to write"

    goto :goto_2
.end method
