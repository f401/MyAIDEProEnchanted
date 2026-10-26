.class Lcom/s1243808733/util/EscapeUtils$4;
.super Ljava/lang/Object;
.source "EscapeUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/EscapeUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/EscapeUtils;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/EscapeUtils;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/s1243808733/util/EscapeUtils$4;->this$0:Lcom/s1243808733/util/EscapeUtils;

    iput-object p2, p0, Lcom/s1243808733/util/EscapeUtils$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/s1243808733/util/EscapeUtils$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
