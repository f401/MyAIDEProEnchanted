.class Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$1;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$1;

    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 212
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
