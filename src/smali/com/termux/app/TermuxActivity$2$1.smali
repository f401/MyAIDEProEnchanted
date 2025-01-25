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
    .registers 3
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
    .registers 4

    .line 324
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$2$1;->this$1:Lcom/termux/app/TermuxActivity$2;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 326
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 327
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$2$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 328
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_22

    const-string p2, "\n"

    .line 329
    :cond_22
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_2d

    .line 331
    :cond_26
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$2$1;->this$1:Lcom/termux/app/TermuxActivity$2;

    iget-object p2, p2, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2, p1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 333
    :goto_2d
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$2$1;->val$editText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    const/4 p1, 0x1

    return p1
.end method
