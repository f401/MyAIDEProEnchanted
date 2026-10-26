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
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v1, v0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    return-void

    .line 155
    :cond_0
    const-string v0, "folder already exist"

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

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

    .line 162
    :cond_3
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 163
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$1;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method
