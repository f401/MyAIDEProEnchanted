.class Lcom/s1243808733/aide/MainListener$100000005$100000004;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000005;

.field private final val$BUTTON_POSITIVE:Landroid/widget/Button;

.field private final val$input_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$input_text:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000005$100000004;)Lcom/s1243808733/aide/MainListener$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$input_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000004;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
