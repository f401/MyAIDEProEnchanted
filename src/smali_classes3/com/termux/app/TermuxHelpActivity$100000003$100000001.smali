.class Lcom/termux/app/TermuxHelpActivity$100000003$100000001;
.super Ljava/lang/Object;
.source "TermuxHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

.field private final val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity$100000003;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;->this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

    iput-object p2, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;->val$url:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxHelpActivity$100000003$100000001;)Lcom/termux/app/TermuxHelpActivity$100000003;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;->this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;->this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

    invoke-static {v0}, Lcom/termux/app/TermuxHelpActivity$100000003;->access$0(Lcom/termux/app/TermuxHelpActivity$100000003;)Lcom/termux/app/TermuxHelpActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
