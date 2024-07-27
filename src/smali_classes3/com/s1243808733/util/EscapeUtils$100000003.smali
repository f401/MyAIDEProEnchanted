.class Lcom/s1243808733/util/EscapeUtils$100000003;
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

    iput-object p1, p0, Lcom/s1243808733/util/EscapeUtils$100000003;->this$0:Lcom/s1243808733/util/EscapeUtils;

    iput-object p2, p0, Lcom/s1243808733/util/EscapeUtils$100000003;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/EscapeUtils$100000003;)Lcom/s1243808733/util/EscapeUtils;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$100000003;->this$0:Lcom/s1243808733/util/EscapeUtils;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$100000003;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
