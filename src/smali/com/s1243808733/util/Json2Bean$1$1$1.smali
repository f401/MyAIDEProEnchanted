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
    .registers 5
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
    .registers 4

    .line 137
    const-string p1, ".java"

    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_fileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_21
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$input_outpath:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->this$1:Lcom/s1243808733/util/Json2Bean$1$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1$1;->val$result:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_67

    if-eqz v1, :cond_48

    const-string v1, "已导出到:"

    goto :goto_4a

    :cond_48
    const-string v1, "Exported to:"

    :goto_4a
    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_61

    .line 147
    :cond_5c
    const-string p1, "output failed!"

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    .line 149
    :goto_61
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1$1;->val$dialog2:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_67

    goto :goto_6c

    :catchall_67
    move-exception p1

    .line 151
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    :goto_6c
    return-void
.end method
