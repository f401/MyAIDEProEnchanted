.class public Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/BaiduStatJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWebChromeViewClient"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebChromeClient;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/baidu/mobstat/dg;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Ljava/util/ArrayList;Lcom/baidu/mobstat/dg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;",
            ">;",
            "Lcom/baidu/mobstat/dg;",
            ")V"
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    .line 477
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->a:Ljava/lang/ref/WeakReference;

    .line 478
    iput-object p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    .line 479
    iput-object p3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    .line 480
    iput-object p4, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/dg;

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 550
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :cond_7
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 543
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 533
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 536
    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 514
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 515
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 518
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    move-object v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_11

    .line 559
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :cond_11
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 567
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :cond_7
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 574
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_7
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 581
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_7
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 523
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 524
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 527
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 588
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 591
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 596
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 597
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 600
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12

    .line 606
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 607
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 610
    :cond_e
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onJsTimeout()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 617
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 620
    :cond_9
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 627
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_7
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 635
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :cond_7
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .line 485
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    .line 487
    iget v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    if-nez v1, :cond_25

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    if-nez v1, :cond_1b

    goto :goto_c

    .line 492
    :cond_1b
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/dg;

    invoke-interface {v1, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    goto :goto_c

    .line 496
    :cond_25
    iput p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    const/16 v0, 0x64

    if-ne p2, v0, :cond_4a

    .line 498
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    if-nez v1, :cond_40

    goto :goto_31

    .line 502
    :cond_40
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/dg;

    invoke-interface {v1, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    goto :goto_31

    .line 507
    :cond_4a
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_51

    .line 508
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_51
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_a

    .line 643
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :cond_a
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 649
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 650
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 657
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 663
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 664
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 671
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :cond_7
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 687
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_7
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 677
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_7

    .line 678
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_7
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_9

    .line 696
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 699
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
