.class Lcom/s1243808733/util/EscapeUtils$100000001;
.super Ljava/lang/Object;
.source "EscapeUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/EscapeUtils;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/EscapeUtils;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->this$0:Lcom/s1243808733/util/EscapeUtils;

    iput-object p2, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/EscapeUtils$100000001;)Lcom/s1243808733/util/EscapeUtils;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->this$0:Lcom/s1243808733/util/EscapeUtils;

    return-object v0
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

    .line 62
    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->val$input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->this$0:Lcom/s1243808733/util/EscapeUtils;

    iget-object v2, p0, Lcom/s1243808733/util/EscapeUtils$100000001;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/util/EscapeUtils;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
