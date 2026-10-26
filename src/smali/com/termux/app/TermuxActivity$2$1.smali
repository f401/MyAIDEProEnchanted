.class Lcom/termux/app/TermuxActivity$2$1;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$2;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$2;

.field final val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$2;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$2$1;->this$1:Lcom/termux/app/TermuxActivity$2;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$2$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2$1;->this$1:Lcom/termux/app/TermuxActivity$2;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "\n"

    .line 329
    :cond_0
    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2$1;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2$1;->this$1:Lcom/termux/app/TermuxActivity$2;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0
.end method
