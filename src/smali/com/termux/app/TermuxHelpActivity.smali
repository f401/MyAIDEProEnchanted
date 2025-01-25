.class public final Lcom/termux/app/TermuxHelpActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "TermuxHelpActivity.java"


# instance fields
.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static WebSettingsConfiguration(Landroid/webkit/WebView;)V
    .registers 3

    .line 107
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 111
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 114
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 119
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 123
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_11

    .line 132
    :cond_e
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onBackPressed()V

    :goto_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 26
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 36
    new-instance p1, Lcom/s1243808733/widget/CustomWebView;

    invoke-direct {p1, p0}, Lcom/s1243808733/widget/CustomWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 37
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 40
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/termux/app/TermuxHelpActivity;->WebSettingsConfiguration(Landroid/webkit/WebView;)V

    .line 41
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxHelpActivity;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 43
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/termux/app/TermuxHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxHelpActivity$1;-><init>(Lcom/termux/app/TermuxHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/termux/app/TermuxHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxHelpActivity$2;-><init>(Lcom/termux/app/TermuxHelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 103
    iget-object p1, p0, Lcom/termux/app/TermuxHelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "https://pro.androidide.cn/"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
