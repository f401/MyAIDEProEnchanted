.class Lcom/termux/app/DialogUtils$3;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$input:Landroid/widget/EditText;

.field final val$onNeutral:Lcom/termux/app/DialogUtils$TextSetListener;


# direct methods
.method constructor <init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/termux/app/DialogUtils$3;->val$onNeutral:Lcom/termux/app/DialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/app/DialogUtils$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/termux/app/DialogUtils$3;->val$onNeutral:Lcom/termux/app/DialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/app/DialogUtils$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/termux/app/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method
