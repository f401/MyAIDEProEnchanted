.class Lcom/termux/app/TermuxActivity$100000002$100000001;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000002;

.field private final val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000002;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->this$0:Lcom/termux/app/TermuxActivity$100000002;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->val$editText:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000002$100000001;)Lcom/termux/app/TermuxActivity$100000002;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->this$0:Lcom/termux/app/TermuxActivity$100000002;

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->this$0:Lcom/termux/app/TermuxActivity$100000002;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000002;->access$0(Lcom/termux/app/TermuxActivity$100000002;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000002$100000001;->this$0:Lcom/termux/app/TermuxActivity$100000002;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000002;->access$0(Lcom/termux/app/TermuxActivity$100000002;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0
.end method
