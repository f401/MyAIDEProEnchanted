.class final Lcom/termux/styling/TermuxStyleActivity$b;
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

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$b;->a:Lcom/termux/styling/TermuxStyleActivity;

    iput-object p2, p0, Lcom/termux/styling/TermuxStyleActivity$b;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$b;->a:Lcom/termux/styling/TermuxStyleActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$b;->b:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/termux/styling/TermuxStyleActivity$b$b;

    invoke-direct {v1, p0}, Lcom/termux/styling/TermuxStyleActivity$b$b;-><init>(Lcom/termux/styling/TermuxStyleActivity$b;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/termux/styling/TermuxStyleActivity$b$a;

    invoke-direct {v0, p0, p1}, Lcom/termux/styling/TermuxStyleActivity$b$a;-><init>(Lcom/termux/styling/TermuxStyleActivity$b;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
