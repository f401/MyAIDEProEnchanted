.class public Lcom/baidu/mobstat/StatService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/StatService$OnZidReceiveListener;,
        Lcom/baidu/mobstat/StatService$WearListener;
    }
.end annotation


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field public static final JAVA_EXCEPTION_LOG:I = 0x10

.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 952
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    if-nez p0, :cond_2

    .line 958
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] context is null, invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 963
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] webview is null, invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_3
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/webkit/WebView;)V

    .line 975
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 976
    sget-boolean v1, Lcom/baidu/mobstat/StatService;->b:Z

    if-eqz v1, :cond_4

    .line 977
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 978
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 979
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 981
    :cond_4
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 982
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    if-nez p4, :cond_5

    .line 986
    new-instance v0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;

    invoke-direct {v0, p0, p2, v3, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/dg;)V

    .line 987
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1013
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 989
    :cond_5
    new-instance v0, Lcom/baidu/mobstat/dg;

    invoke-direct {v0}, Lcom/baidu/mobstat/dg;-><init>()V

    .line 990
    const-string v1, "WebViewInterface"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    new-instance v2, Lcom/baidu/mobstat/bz$b;

    invoke-direct {v2}, Lcom/baidu/mobstat/bz$b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v2, Lcom/baidu/mobstat/cq$b;

    invoke-direct {v2}, Lcom/baidu/mobstat/cq$b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v2, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;

    invoke-direct {v2, p0, p3, v1, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Ljava/util/ArrayList;Lcom/baidu/mobstat/dg;)V

    .line 1003
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1004
    const v0, -0x17701

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 281
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onPageEnd parameter invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 288
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 292
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 459
    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 473
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 474
    const-string v1, "[WARNING] onEvent \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 479
    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 484
    invoke-static {p5}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 483
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 641
    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 654
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onEventDuration duration must be greater than zero"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 660
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 661
    const-string v1, "[WARNING] onEventDuration \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 666
    :cond_3
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 671
    invoke-static {p6}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 670
    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 6

    .line 536
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 619
    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 636
    invoke-static {p4}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 2

    .line 438
    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/webkit/WebView;)V
    .locals 1

    .line 905
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "helios"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 723
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", context is null, invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 61
    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 62
    aget-object v2, v3, v1

    .line 63
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static autoTrace(Landroid/content/Context;)V
    .locals 2

    .line 1205
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static autoTrace(Landroid/content/Context;ZZ)V
    .locals 2

    if-nez p1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    const-string v0, "autoTrace(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1240
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 1241
    const-string v1, "[WARNING] AppKey is invalid, auto trace will do not take effect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :cond_2
    invoke-static {v0}, Lcom/baidu/mobstat/bz;->a(Ljava/lang/String;)V

    .line 1250
    invoke-static {p2}, Lcom/baidu/mobstat/bz;->a(Z)V

    .line 1252
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->c:Z

    if-nez v0, :cond_3

    .line 1253
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 1256
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    const/4 v1, 0x0

    .line 929
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-static {p0, p1, v1}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 2

    .line 945
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    return-void
.end method

.method public static browseMode(Z)V
    .locals 2

    .line 1933
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dq;->c(Z)V

    goto :goto_0
.end method

.method public static closeTrace()V
    .locals 1

    .line 1963
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->closeTrace()V

    return-void
.end method

.method public static crashEnableSendLog(Z)V
    .locals 1

    .line 1904
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->setEnableSend(Z)V

    goto :goto_0
.end method

.method public static enableAppList(Landroid/content/Context;Z)V
    .locals 1

    .line 1973
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setEnableBplus(Landroid/content/Context;Z)V

    return-void
.end method

.method public static enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->enableDeviceMac(Landroid/content/Context;Z)V

    .line 112
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static enableListTrack(Landroid/view/View;)V
    .locals 2

    .line 1580
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    if-eqz p0, :cond_0

    .line 1588
    const v0, -0x17aea

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 747
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const-string v0, ""

    .line 751
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1086
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, ""

    .line 1090
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getMTJSDKVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTestDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1071
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, ""

    .line 1075
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 775
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1149
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string v0, "onErised(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 1157
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1158
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] AppKey is invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/BDStatCore;->onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 547
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    .line 524
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 512
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    const/4 v6, 0x0

    .line 711
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 600
    invoke-static {p0, p1, p2, v0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 559
    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 265
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 239
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onPageStart parameter invalid"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 251
    :goto_0
    return-void

    .line 243
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 246
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 250
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 194
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 206
    :try_start_0
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 214
    :cond_1
    :try_start_2
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onPause must be called in Activity.onPause"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 219
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 223
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 166
    :try_start_0
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 184
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 174
    :cond_1
    :try_start_2
    const-class v0, Landroid/app/Activity;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onResume must be called in Activity.onResume()"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 179
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 183
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static platformType(I)V
    .locals 1

    .line 1952
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->setPlatformType(I)V

    goto :goto_0
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p0, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1474
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-nez p0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 825
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    .line 738
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x100

    .line 1602
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1611
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1614
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1270
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    if-eqz p0, :cond_0

    .line 1279
    const v0, -0x17700

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setAuthorizedState(Landroid/content/Context;Z)V
    .locals 1

    .line 1728
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dq;->b(Z)V

    goto :goto_0
.end method

.method public static setAutoEventProperty(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "3"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setContentId(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x100

    if-nez p0, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1549
    const-string p1, ""

    .line 1552
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1556
    :cond_3
    const v0, -0x17aec

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setContentTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x100

    if-nez p0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    const-string p1, ""

    .line 1526
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1527
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1530
    :cond_3
    const v0, -0x17aeb

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCrashExtraInfo(Ljava/lang/String;)V
    .locals 1

    .line 1687
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->setCrashExtraInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDebugOn(Z)V
    .locals 1

    .line 865
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cx;->a(Z)V

    goto :goto_0
.end method

.method public static setEnableBackgroundSendLog(Landroid/content/Context;Z)V
    .locals 1

    .line 1719
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BDStatCore;->setAutoSendLog(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .locals 1

    .line 1566
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1570
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/cq;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 1571
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->c:Z

    goto :goto_0
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Z)V

    .line 898
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setGlobalExtraInfo(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 123
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 130
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 134
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V

    .line 135
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static setListName(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x100

    if-nez p0, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1496
    const-string p1, ""

    .line 1499
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1503
    :cond_3
    const v0, -0x17ae9

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setLogSenderDelayed(I)V
    .locals 1

    .line 837
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LogSender;->setLogSenderDelayed(I)V

    goto :goto_0
.end method

.method public static setOaid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x100

    .line 1862
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1866
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1867
    const-string p1, ""

    .line 1870
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1871
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1874
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/dl;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setOn(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    .line 303
    const-string v0, "setOn(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    if-nez v0, :cond_0

    .line 315
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    sput-boolean v1, Lcom/baidu/mobstat/StatService;->a:Z

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 323
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    .line 329
    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 323
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 325
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public static setOnAppBackgroundListener(Lcom/baidu/mobstat/OnAppBackgroundListener;)V
    .locals 1

    .line 1915
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    if-eqz p0, :cond_0

    .line 1922
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dq;->a(Lcom/baidu/mobstat/OnAppBackgroundListener;)V

    goto :goto_0
.end method

.method public static setPageProperty(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "4"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setPushId(Landroid/content/Context;Lcom/baidu/mobstat/MtjConfig$PushPlatform;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x400

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1643
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 1668
    :goto_0
    return-void

    .line 1646
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1651
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 1654
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1655
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    .line 1658
    :cond_3
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 1659
    const-string p2, ""

    .line 1662
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 1663
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1666
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->showName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p2}, Lcom/baidu/mobstat/CooperService;->setPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1668
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    const-string v0, "setSendLogStrategy(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "[WARNING] setSendLogStrategy \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 402
    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    .line 408
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    goto :goto_0
.end method

.method public static setSessionProperty(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "2"

    const-string v3, "2"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setSessionTimeOut(I)V
    .locals 1

    .line 851
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->setSessionTimeOut(I)V

    goto :goto_0
.end method

.method public static setStartType(Z)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 1672
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    .line 1677
    :goto_0
    return-void

    .line 1676
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->setStartType(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-exit v1

    throw v0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1310
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    if-eqz p0, :cond_0

    .line 1318
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 1324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1325
    const-string v1, "uid_"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 1332
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "1"

    const-string v3, "0"

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setUserProperty(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/CooperService;->setUserProperty(Landroid/content/Context;Ljava/util/Map;)V

    .line 1358
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "1"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setWebViewDisableFileUrls(Z)V
    .locals 0

    .line 1021
    sput-boolean p0, Lcom/baidu/mobstat/StatService;->b:Z

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .line 344
    const-string v0, "start(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "[WARNING] start \u65b9\u6cd5\u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 360
    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .line 1291
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    goto :goto_0
.end method
