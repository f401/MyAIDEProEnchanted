.class Lcom/s1243808733/aide/project/ProjectDialog$2$2;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$2;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$2;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$2;->val$dialog:Landroid/app/AlertDialog;

    .line 182
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
