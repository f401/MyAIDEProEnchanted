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
    .registers 6

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$b$b;->a:Lcom/termux/styling/TermuxStyleActivity$b;

    iget-object v1, v0, Lcom/termux/styling/TermuxStyleActivity$b;->a:Lcom/termux/styling/TermuxStyleActivity;

    iget-object v0, v0, Lcom/termux/styling/TermuxStyleActivity$b;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/styling/TermuxStyleActivity$a;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/termux/styling/TermuxStyleActivity;->a(Lcom/termux/styling/TermuxStyleActivity;Lcom/termux/styling/TermuxStyleActivity$a;Z)V

    return-void
.end method
