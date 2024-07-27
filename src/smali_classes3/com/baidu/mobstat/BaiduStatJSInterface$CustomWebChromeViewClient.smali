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
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebChromeClient;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    .line 481
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 552
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 536
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 514
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 518
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 562
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 569
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 576
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 583
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 523
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 591
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 596
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 600
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12

    .line 606
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    .line 610
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    .line 620
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 629
    :cond_0
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 637
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .line 485
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 487
    iget v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 489
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/dg;

    invoke-interface {v0, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    goto :goto_0

    .line 496
    :cond_1
    iput p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    .line 497
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 499
    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/dg;

    invoke-interface {v0, p1, v2, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    goto :goto_1

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_4

    .line 508
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 510
    :cond_4
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 643
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 645
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 649
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 652
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 663
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 666
    :cond_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 673
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 689
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 677
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 680
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    .line 699
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    goto :goto_0
.end method
