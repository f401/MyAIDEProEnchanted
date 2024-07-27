.class Lcom/termux/app/TermuxActivity$100000025$100000024;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000025;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$urls:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000025;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->this$0:Lcom/termux/app/TermuxActivity$100000025;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->val$urls:[Ljava/lang/CharSequence;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000025$100000024;)Lcom/termux/app/TermuxActivity$100000025;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->this$0:Lcom/termux/app/TermuxActivity$100000025;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 1080
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1081
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->val$urls:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    .line 1082
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->this$0:Lcom/termux/app/TermuxActivity$100000025;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000025;->access$0(Lcom/termux/app/TermuxActivity$100000025;)Lcom/termux/app/TermuxActivity;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1084
    :catch_0
    move-exception v0

    .line 1087
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025$100000024;->this$0:Lcom/termux/app/TermuxActivity$100000025;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000025;->access$0(Lcom/termux/app/TermuxActivity$100000025;)Lcom/termux/app/TermuxActivity;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
