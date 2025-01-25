.class final Lcom/termux/styling/TermuxStyleActivity$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/styling/TermuxStyleActivity$b$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/termux/styling/TermuxStyleActivity$b$a;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity$b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b$a$a;->a:Lcom/termux/styling/TermuxStyleActivity$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b$a$a;->a:Lcom/termux/styling/TermuxStyleActivity$b$a;

    iget-object p1, p1, Lcom/termux/styling/TermuxStyleActivity$b$a;->a:Lcom/termux/styling/TermuxStyleActivity$b;

    iget-object p2, p1, Lcom/termux/styling/TermuxStyleActivity$b;->a:Lcom/termux/styling/TermuxStyleActivity;

    iget-object p1, p1, Lcom/termux/styling/TermuxStyleActivity$b;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    check-cast p1, Lcom/termux/styling/TermuxStyleActivity$a;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/termux/styling/TermuxStyleActivity;->b(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    return p3

    :cond_15
    new-instance p1, Lcom/termux/yinli_a/f;

    const-string p2, "null cannot be cast to non-null type com.termux.styling.TermuxStyleActivity.Selectable"

    invoke-direct {p1, p2}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method
