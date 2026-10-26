.class Lcom/s1243808733/util/Json2Bean$1$1$1;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/util/Json2Bean$1$1;

.field final val$dialog2:Landroid/app/AlertDialog;

.field final val$input_fileName:Landroid/widget/EditText;

.field final val$input_outpath:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_fileName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_outpath:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_fileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_outpath:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$1;->val$result:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u5bfc\u51fa\u5230:"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_2
    return-void

    .line 145
    :cond_1
    const-string v0, "Exported to:"

    goto :goto_0

    .line 147
    :cond_2
    :try_start_2
    const-string v0, "output failed!"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    .line 151
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    goto :goto_2
.end method
