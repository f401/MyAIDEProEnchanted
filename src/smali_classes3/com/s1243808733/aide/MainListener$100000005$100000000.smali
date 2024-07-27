.class Lcom/s1243808733/aide/MainListener$100000005$100000000;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000005;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000005$100000000;)Lcom/s1243808733/aide/MainListener$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"

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
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$input:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u65e0\u6cd5\u5199\u5165"

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
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000000;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method
