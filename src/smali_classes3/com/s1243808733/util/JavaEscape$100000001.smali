.class Lcom/s1243808733/util/JavaEscape$100000001;
.super Ljava/lang/Object;
.source "JavaEscape.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$cb:Landroid/widget/CheckBox;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/JavaEscape$100000001;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/util/JavaEscape$100000001;->val$cb:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/s1243808733/util/JavaEscape$100000001;->val$input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/s1243808733/util/JavaEscape$100000001;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/util/JavaEscape$100000001;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/util/JavaEscape;->escapeText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
