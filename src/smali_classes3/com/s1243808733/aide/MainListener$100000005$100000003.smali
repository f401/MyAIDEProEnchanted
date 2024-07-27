.class Lcom/s1243808733/aide/MainListener$100000005$100000003;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000005;

.field private final val$BUTTON_POSITIVE:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/Button;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000005$100000003;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000005$100000003;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000005$100000003;)Lcom/s1243808733/aide/MainListener$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000003;->this$0:Lcom/s1243808733/aide/MainListener$100000005;

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

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000003;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005$100000003;->val$BUTTON_POSITIVE:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
