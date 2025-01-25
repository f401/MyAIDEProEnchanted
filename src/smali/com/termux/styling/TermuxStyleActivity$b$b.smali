.class final Lcom/termux/styling/TermuxStyleActivity$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/styling/TermuxStyleActivity$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/termux/styling/TermuxStyleActivity$b;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity$b;)V
    .registers 2

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b$b;->a:Lcom/termux/styling/TermuxStyleActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b$b;->a:Lcom/termux/styling/TermuxStyleActivity$b;

    iget-object v0, p1, Lcom/termux/styling/TermuxStyleActivity$b;->a:Lcom/termux/styling/TermuxStyleActivity;

    iget-object p1, p1, Lcom/termux/styling/TermuxStyleActivity$b;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/styling/TermuxStyleActivity$a;

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/termux/styling/TermuxStyleActivity;->a(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    return-void
.end method
