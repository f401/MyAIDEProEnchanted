.class Lcom/termux/app/TermuxActivity$15;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->showUrlSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;

.field final val$urls:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1057
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$15;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$15;->val$urls:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x1

    .line 1060
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$15;->val$urls:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1061
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$15;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1062
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/ClipData;

    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text/plain"

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1063
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$15;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "select_url_copied_to_clipboard"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lcom/s1243808733/util/Toasty;->success(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
