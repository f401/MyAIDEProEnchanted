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
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v3, 0x0

    .line 1080
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$16;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1081
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$16;->val$urls:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    .line 1082
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$16;->this$0:Lcom/termux/app/TermuxActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$16$1;->this$1:Lcom/termux/app/TermuxActivity$16;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$16;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
