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
    .registers 3
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
    .registers 8

    .line 1060
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$15;->val$urls:[Ljava/lang/CharSequence;

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    .line 1061
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$15;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    .line 1062
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/content/ClipData;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "text/plain"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p1, v3, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1063
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$15;->this$0:Lcom/termux/app/TermuxActivity;

    const-string p2, "select_url_copied_to_clipboard"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/s1243808733/util/Toasty;->success(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
