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
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 69
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    iget-object p2, p1, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxHelpActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 48
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "https"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 49
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    iget-object p2, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-virtual {p2, p1}, Lcom/termux/app/TermuxHelpActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 55
    :cond_28
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    return v0

    :catch_2c
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity$1;->this$0:Lcom/termux/app/TermuxHelpActivity;

    const-string p2, "您所打开的第三方App未安装！"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method
