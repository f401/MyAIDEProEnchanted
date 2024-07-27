.class Lcom/termux/app/TermuxActivity$100000007;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000007;->this$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000007;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000007;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v9, 0x0

    .line 374
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000007;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "session_new_named_title"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const-string v3, "session_new_named_positive_button"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/termux/app/TermuxActivity$100000007$100000005;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$100000007$100000005;-><init>(Lcom/termux/app/TermuxActivity$100000007;)V

    const-string v5, "new_session_failsafe"

    invoke-static {v5}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/termux/app/TermuxActivity$100000007$100000006;

    invoke-direct {v6, p0}, Lcom/termux/app/TermuxActivity$100000007$100000006;-><init>(Lcom/termux/app/TermuxActivity$100000007;)V

    const/4 v7, -0x1

    move-object v8, v9

    check-cast v8, Lcom/termux/app/DialogUtils$TextSetListener;

    check-cast v9, Landroid/content/DialogInterface$OnDismissListener;

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method
