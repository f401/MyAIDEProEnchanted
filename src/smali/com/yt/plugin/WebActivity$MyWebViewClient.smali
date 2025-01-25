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
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 384
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 450
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_e

    const/4 p3, 0x5

    if-eq p1, p3, :cond_e

    .line 456
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_11

    .line 453
    :cond_e
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_11
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 389
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 390
    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 391
    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 392
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_47

    .line 398
    :cond_22
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    :try_start_32
    iget-object p2, p0, Lcom/yt/plugin/WebActivity$MyWebViewClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-virtual {p2, p1}, Lcom/yt/plugin/WebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_46

    .line 404
    :catch_38
    move-exception p1

    const-string p1, "手机尚未安装相关应用"

    const-string p2, "There is no suitable way to open it."

    invoke-static {p1, p2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    :goto_46
    return v2

    .line 393
    :cond_47
    :goto_47
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method
