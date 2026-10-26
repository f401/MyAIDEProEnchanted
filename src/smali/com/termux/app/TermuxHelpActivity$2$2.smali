.class Lcom/termux/app/TermuxHelpActivity$2$2;
.super Ljava/lang/Object;
.source "TermuxHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxHelpActivity$2;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxHelpActivity$2;

.field final val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->this$1:Lcom/termux/app/TermuxHelpActivity$2;

    iput-object p2, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->this$1:Lcom/termux/app/TermuxHelpActivity$2;

    iget-object v0, v0, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
