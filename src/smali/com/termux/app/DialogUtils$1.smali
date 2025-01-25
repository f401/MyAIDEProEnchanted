.class Lcom/termux/app/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$dialogHolder:[Landroid/app/AlertDialog;

.field final val$input:Landroid/widget/EditText;

.field final val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;


# direct methods
.method constructor <init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/termux/app/DialogUtils$1;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/app/DialogUtils$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/app/DialogUtils$1;->val$dialogHolder:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 37
    iget-object p1, p0, Lcom/termux/app/DialogUtils$1;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iget-object p2, p0, Lcom/termux/app/DialogUtils$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/termux/app/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/termux/app/DialogUtils$1;->val$dialogHolder:[Landroid/app/AlertDialog;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
