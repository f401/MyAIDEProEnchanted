.class Lcom/s1243808733/aide/MainListener$1$2;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$1;->handlerNewFolderDialog()V
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

    .line 169
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1$2;->this$0:Lcom/s1243808733/aide/MainListener$1;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$1$2;->val$BUTTON_POSITIVE:Landroid/widget/Button;

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

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$2;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1$2;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
