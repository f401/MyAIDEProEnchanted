.class Lcom/s1243808733/aide/MainListener$1$5;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$1;->handlerRenameDialog()V
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

    .line 267
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$5;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

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

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_d

    .line 277
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_27

    .line 279
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/MainListener$1$5;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object p2, p2, Lcom/s1243808733/aide/MainListener$1;->val$input_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 280
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_27

    .line 282
    :cond_21
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_27
    return-void
.end method
