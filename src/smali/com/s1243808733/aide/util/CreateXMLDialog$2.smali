.class Lcom/s1243808733/aide/util/CreateXMLDialog$2;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CreateXMLDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$2;->val$dialog:Landroid/app/AlertDialog;

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

    .line 80
    iget-object p2, p0, Lcom/s1243808733/aide/util/CreateXMLDialog$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
