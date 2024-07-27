.class final Lcom/termux/styling/TermuxStyleActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/styling/TermuxStyleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/termux/styling/TermuxStyleActivity;

.field final b:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/termux/styling/TermuxStyleActivity;Landroid/widget/ArrayAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$c;->a:Lcom/termux/styling/TermuxStyleActivity;

    iput-object p2, p0, Lcom/termux/styling/TermuxStyleActivity$c;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/styling/TermuxStyleActivity$c;->a:Lcom/termux/styling/TermuxStyleActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/termux/styling/TermuxStyleActivity$c;->b:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/termux/styling/TermuxStyleActivity$c$b;

    invoke-direct {v2, p0}, Lcom/termux/styling/TermuxStyleActivity$c$b;-><init>(Lcom/termux/styling/TermuxStyleActivity$c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/termux/styling/TermuxStyleActivity$c$a;

    invoke-direct {v1, p0, v0}, Lcom/termux/styling/TermuxStyleActivity$c$a;-><init>(Lcom/termux/styling/TermuxStyleActivity$c;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
