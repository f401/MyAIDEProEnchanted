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
    .locals 0
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
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x0

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1$5;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iget-object v1, v1, Lcom/s1243808733/aide/MainListener$1;->val$input_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$5;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
