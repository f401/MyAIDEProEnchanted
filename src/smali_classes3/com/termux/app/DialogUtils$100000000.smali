.class Lcom/termux/app/DialogUtils$100000000;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final val$dialogHolder:[Landroid/app/AlertDialog;

.field private final val$input:Landroid/widget/EditText;

.field private final val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;


# direct methods
.method constructor <init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/DialogUtils$100000000;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/app/DialogUtils$100000000;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/app/DialogUtils$100000000;->val$dialogHolder:[Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/termux/app/DialogUtils$100000000;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/app/DialogUtils$100000000;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/termux/app/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/termux/app/DialogUtils$100000000;->val$dialogHolder:[Landroid/app/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
