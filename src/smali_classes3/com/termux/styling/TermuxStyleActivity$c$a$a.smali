.class final Lcom/termux/styling/TermuxStyleActivity$c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/styling/TermuxStyleActivity$c$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/termux/styling/TermuxStyleActivity$c$a;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity$c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$c$a$a;->a:Lcom/termux/styling/TermuxStyleActivity$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$c$a$a;->a:Lcom/termux/styling/TermuxStyleActivity$c$a;

    iget-object v0, v0, Lcom/termux/styling/TermuxStyleActivity$c$a;->a:Lcom/termux/styling/TermuxStyleActivity$c;

    iget-object v1, v0, Lcom/termux/styling/TermuxStyleActivity$c;->a:Lcom/termux/styling/TermuxStyleActivity;

    iget-object v0, v0, Lcom/termux/styling/TermuxStyleActivity$c;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/termux/styling/TermuxStyleActivity$a;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/termux/styling/TermuxStyleActivity;->b(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcom/termux/yinli_a/f;

    const-string v1, "null cannot be cast to non-null type com.termux.styling.TermuxStyleActivity.Selectable"

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method
