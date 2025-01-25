.class Lcom/termux/app/TermuxActivity$16$1;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$16;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$16;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$16;)V
    .registers 2

    .line 1077
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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

    .line 1080
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$16;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1081
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity$16;->val$urls:[Ljava/lang/CharSequence;

    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/String;

    .line 1082
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1084
    const/4 p1, 0x0

    :try_start_1b
    iget-object p3, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object p3, p3, Lcom/termux/app/TermuxActivity$16;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p3, p2, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_2f

    .line 1087
    :catch_23
    move-exception p3

    iget-object p3, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object p3, p3, Lcom/termux/app/TermuxActivity$16;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2f
    const/4 p1, 0x1

    return p1
.end method
