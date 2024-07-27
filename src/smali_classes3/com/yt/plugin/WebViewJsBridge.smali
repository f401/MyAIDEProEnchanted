.class public Lcom/yt/plugin/WebViewJsBridge;
.super Ljava/lang/Object;
.source "WebViewJsBridge.java"


# instance fields
.field mActivity:Lcom/yt/plugin/WebActivity;


# direct methods
.method public constructor <init>(Lcom/yt/plugin/WebActivity;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yt/plugin/WebViewJsBridge;->mActivity:Lcom/yt/plugin/WebActivity;

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/yt/plugin/WebViewJsBridge;->mActivity:Lcom/yt/plugin/WebActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yt/plugin/WebViewJsBridge;->mActivity:Lcom/yt/plugin/WebActivity;

    invoke-virtual {v0}, Lcom/yt/plugin/WebActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yt/plugin/WebViewJsBridge;->mActivity:Lcom/yt/plugin/WebActivity;

    invoke-virtual {v0}, Lcom/yt/plugin/WebActivity;->finish()V

    .line 43
    const/4 v0, 0x0

    check-cast v0, Lcom/yt/plugin/WebActivity;

    iput-object v0, p0, Lcom/yt/plugin/WebViewJsBridge;->mActivity:Lcom/yt/plugin/WebActivity;

    :cond_0
    return-void
.end method

.method public gotoBrowaer(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/yt/plugin/WebViewJsBridge;->jumpBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public jumpBrowser(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public toastError(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toastNormal(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toastSuccess(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toastWarning(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
