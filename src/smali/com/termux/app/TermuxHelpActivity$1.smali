.class Lcom/termux/app/TermuxHelpActivity$1;
.super Landroid/webkit/WebViewClient;
.source "TermuxHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxHelpActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    iget-object v1, v0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxHelpActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    .line 48
    :try_start_0
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-virtual {v1, v0}, Lcom/termux/app/TermuxHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    :goto_0
    return v3

    .line 55
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    const-string v1, "\u60a8\u6240\u6253\u5f00\u7684\u7b2c\u4e09\u65b9App\u672a\u5b89\u88c5\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
