.class Lcom/termux/app/TermuxActivity$6;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 405
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 406
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
