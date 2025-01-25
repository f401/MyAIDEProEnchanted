.class Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity$5;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;->this$1:Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;->val$input:Landroid/widget/EditText;

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

    .line 258
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$5$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
