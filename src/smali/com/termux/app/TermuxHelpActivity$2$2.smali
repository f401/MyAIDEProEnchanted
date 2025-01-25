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
    .registers 3
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
    .registers 4

    .line 88
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->val$url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity$2$2;->this$1:Lcom/termux/app/TermuxHelpActivity$2;

    iget-object p1, p1, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
