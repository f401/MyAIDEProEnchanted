.class public Lcom/baidu/mobstat/bz$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 6

    .line 148
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 149
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "WebView onPageFinished"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 152
    :cond_13
    const-string v0, "WebViewInterface"

    invoke-virtual {p1, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ch;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 5

    .line 135
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 136
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    const-string v0, "WebView onPageStarted"

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 139
    :cond_13
    const-string p2, "WebViewInterface"

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
