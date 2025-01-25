.class final Lcom/termux/styling/TermuxStyleActivity$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/styling/TermuxStyleActivity$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/termux/styling/TermuxStyleActivity$c;

.field final b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity$c;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$c$a;->a:Lcom/termux/styling/TermuxStyleActivity$c;

    iput-object p2, p0, Lcom/termux/styling/TermuxStyleActivity$c$a;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$c$a;->b:Landroid/app/AlertDialog;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/termux/styling/TermuxStyleActivity$c$a$a;

    invoke-direct {v0, p0}, Lcom/termux/styling/TermuxStyleActivity$c$a$a;-><init>(Lcom/termux/styling/TermuxStyleActivity$c$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
