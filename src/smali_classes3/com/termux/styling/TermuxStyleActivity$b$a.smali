.class final Lcom/termux/styling/TermuxStyleActivity$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity$b;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b$a;->a:Lcom/termux/styling/TermuxStyleActivity$b;

    iput-object p2, p0, Lcom/termux/styling/TermuxStyleActivity$b$a;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$b$a;->b:Landroid/app/AlertDialog;

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/termux/styling/TermuxStyleActivity$b$a$a;

    invoke-direct {v1, p0}, Lcom/termux/styling/TermuxStyleActivity$b$a$a;-><init>(Lcom/termux/styling/TermuxStyleActivity$b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
