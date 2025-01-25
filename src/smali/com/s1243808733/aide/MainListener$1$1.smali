.class Lcom/s1243808733/aide/MainListener$1$1;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$1;->handlerNewFolderDialog()V
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

    .line 148
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 152
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 155
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "文件夹已存在"

    goto :goto_2a

    :cond_28
    const-string v0, "folder already exist"

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 159
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_47

    .line 160
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "无法写入"

    goto :goto_43

    :cond_41
    const-string v0, "Unable to write"

    :goto_43
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_51

    .line 162
    :cond_47
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 163
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p1, p1, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_51
    return-void
.end method
