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
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 199
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 202
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "文件已存在"

    goto :goto_2a

    :cond_28
    const-string v0, "file already exist"

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 205
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 207
    :try_start_35
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 208
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p1

    .line 212
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$3;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "无法写入"

    goto :goto_5e

    :cond_5c
    const-string v0, "Unable to write"

    :goto_5e
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
