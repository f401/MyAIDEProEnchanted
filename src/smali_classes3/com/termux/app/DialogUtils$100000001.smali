.class Lcom/termux/app/DialogUtils$100000001;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$input:Landroid/widget/EditText;

.field private final val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;


# direct methods
.method constructor <init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/DialogUtils$100000001;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/app/DialogUtils$100000001;->val$input:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/termux/app/DialogUtils$100000001;->val$onPositive:Lcom/termux/app/DialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/app/DialogUtils$100000001;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/termux/app/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method
