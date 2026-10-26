.class Lcom/yt/plugin/WebActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yt/plugin/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final this$0:Lcom/yt/plugin/WebActivity;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 384
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 450
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 456
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 453
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 390
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const-string v2, "file://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 404
    :goto_0
    return v0

    .line 398
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-virtual {v2, v0}, Lcom/yt/plugin/WebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 404
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u624b\u673a\u5c1a\u672a\u5b89\u88c5\u76f8\u5173\u5e94\u7528"

    const-string v2, "There is no suitable way to open it."

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_1
.end method
