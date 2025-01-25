.class Lcom/s1243808733/aide/MainListener$1$4;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$1;->handlerNewFileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/MainListener$1;

.field final val$BUTTON_POSITIVE:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$1;Landroid/widget/Button;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$4;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$1$4;->val$BUTTON_POSITIVE:Landroid/widget/Button;

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

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_d

    .line 229
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$4;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_13

    .line 231
    :cond_d
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$4;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_13
    return-void
.end method
