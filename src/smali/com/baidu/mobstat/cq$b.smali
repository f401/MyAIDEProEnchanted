.class public Lcom/baidu/mobstat/cq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 6

    .line 221
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 225
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 229
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 230
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    const-string v1, "WebView onPageFinished"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 233
    :cond_25
    const-string v0, "WebViewInterface"

    invoke-virtual {p1, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/cu;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 5

    .line 199
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 203
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cs;->b()Z

    move-result p2

    if-eqz p2, :cond_12

    return-void

    .line 207
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/dc;->b()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 208
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p2

    const-string v0, "WebView onPageStarted"

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 211
    :cond_25
    const-string p2, "WebViewInterface"

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
