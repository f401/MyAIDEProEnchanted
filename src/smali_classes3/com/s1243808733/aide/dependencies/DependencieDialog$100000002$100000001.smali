.class Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;)Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002$100000001;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
