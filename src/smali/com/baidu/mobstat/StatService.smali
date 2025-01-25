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
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V
    .registers 8

    .line 952
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p0, :cond_17

    .line 958
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] context is null, invalid"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    :cond_17
    if-nez p1, :cond_23

    .line 963
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] webview is null, invalid"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    .line 968
    :cond_23
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 972
    :cond_2a
    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/webkit/WebView;)V

    .line 975
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 976
    sget-boolean v1, Lcom/baidu/mobstat/StatService;->b:Z

    if-eqz v1, :cond_3f

    .line 977
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 978
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 979
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 981
    :cond_3f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 982
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    if-nez p4, :cond_57

    .line 986
    new-instance p3, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p4, p4}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/dg;)V

    .line 987
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_84

    .line 989
    :cond_57
    new-instance p2, Lcom/baidu/mobstat/dg;

    invoke-direct {p2}, Lcom/baidu/mobstat/dg;-><init>()V

    .line 990
    const-string p4, "WebViewInterface"

    invoke-virtual {p1, p2, p4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 995
    new-instance v0, Lcom/baidu/mobstat/bz$b;

    invoke-direct {v0}, Lcom/baidu/mobstat/bz$b;-><init>()V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v0, Lcom/baidu/mobstat/cq$b;

    invoke-direct {v0}, Lcom/baidu/mobstat/cq$b;-><init>()V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Ljava/util/ArrayList;Lcom/baidu/mobstat/dg;)V

    .line 1003
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1004
    const p2, -0x17701

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 1013
    :goto_84
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 4

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_2f

    .line 281
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2f

    .line 285
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3c

    if-eqz v0, :cond_1a

    .line 286
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 288
    :cond_1a
    :try_start_1a
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_3c

    if-eqz v0, :cond_24

    .line 289
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 292
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3c

    .line 293
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 282
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] onPageEnd parameter invalid"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3c

    .line 283
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 459
    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 463
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 467
    :cond_10
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 471
    :cond_1b
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 473
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 474
    const-string v1, "[WARNING] onEvent 方法被 Application.onCreate()调用，not a good practice; 可能由于多进程反复重启等原因造成Application.onCreate() 方法多次被执行，导致启动次数高；建议埋点在统计路径触发的第一个页面中，比如APP主页面中"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 479
    :cond_2e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 483
    :cond_35
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 484
    invoke-static {p5}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v8

    .line 483
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 641
    const-string v0, "onEventDuration(...)"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 645
    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 649
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2c

    .line 654
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "[WARNING] onEventDuration duration must be greater than zero"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    return-void

    .line 658
    :cond_2c
    const-class v0, Landroid/app/Application;

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 660
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 661
    const-string v2, "[WARNING] onEventDuration 方法被 Application.onCreate()调用，not a good practice; 可能由于多进程反复重启等原因造成Application.onCreate() 方法多次被执行，导致启动次数高；建议埋点在统计路径触发的第一个页面中，比如APP主页面中"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 666
    :cond_3f
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    .line 670
    :cond_46
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 671
    invoke-static/range {p6 .. p6}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v11

    .line 670
    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v12}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 10

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
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 619
    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 623
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 627
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 631
    :cond_1b
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 635
    :cond_22
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 636
    invoke-static {p4}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    .line 635
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 3

    .line 438
    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 443
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 448
    :cond_14
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 452
    :cond_1b
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;)V
    .registers 1

    .line 905
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 2

    .line 82
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "helios"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-nez p0, :cond_1e

    .line 723
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WARNING] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", context is null, invalid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 61
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_38

    .line 62
    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 65
    :try_start_19
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 66
    :goto_21
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_32

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_34

    goto :goto_21

    :cond_32
    const/4 v1, 0x1

    goto :goto_35

    :catch_34
    move-exception v3

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_38
    return v1
.end method

.method public static autoTrace(Landroid/content/Context;)V
    .registers 3

    .line 1205
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static autoTrace(Landroid/content/Context;ZZ)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1225
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 1230
    :cond_e
    const-string p1, "autoTrace(...)"

    invoke-static {p0, p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    return-void

    .line 1234
    :cond_17
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return-void

    .line 1238
    :cond_1e
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1240
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    .line 1241
    const-string p1, "[WARNING] AppKey is invalid, auto trace will do not take effect"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void

    .line 1249
    :cond_36
    invoke-static {p1}, Lcom/baidu/mobstat/bz;->a(Ljava/lang/String;)V

    .line 1250
    invoke-static {p2}, Lcom/baidu/mobstat/bz;->a(Z)V

    .line 1252
    sget-boolean p1, Lcom/baidu/mobstat/StatService;->c:Z

    if-nez p1, :cond_45

    .line 1253
    sget-object p1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 1256
    :cond_45
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    .line 929
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 933
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .registers 5

    .line 945
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    return-void
.end method

.method public static browseMode(Z)V
    .registers 2

    .line 1933
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1937
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dq;->c(Z)V

    return-void
.end method

.method public static closeTrace()V
    .registers 1

    .line 1963
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->closeTrace()V

    return-void
.end method

.method public static crashEnableSendLog(Z)V
    .registers 2

    .line 1904
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1908
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->setEnableSend(Z)V

    return-void
.end method

.method public static enableAppList(Landroid/content/Context;Z)V
    .registers 3

    .line 1973
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setEnableBplus(Landroid/content/Context;Z)V

    return-void
.end method

.method public static enableDeviceMac(Landroid/content/Context;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 103
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 107
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 110
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->enableDeviceMac(Landroid/content/Context;Z)V

    .line 112
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static enableListTrack(Landroid/view/View;)V
    .registers 3

    .line 1580
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p0, :cond_e

    return-void

    .line 1588
    :cond_e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, -0x17aea

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 747
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 748
    const-string p0, ""

    return-object p0

    .line 751
    :cond_d
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 1086
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1087
    const-string v0, ""

    return-object v0

    .line 1090
    :cond_d
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getMTJSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTestDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1071
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1072
    const-string p0, ""

    return-object p0

    .line 1075
    :cond_d
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 775
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 779
    :cond_b
    invoke-static {p1}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    .line 780
    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1149
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1153
    :cond_b
    const-string v0, "onErised(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    if-eqz p1, :cond_27

    .line 1157
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 1162
    :cond_1f
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/BDStatCore;->onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1158
    :cond_27
    :goto_27
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] AppKey is invalid"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 547
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 524
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
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
    .registers 12

    .line 711
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 600
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 559
    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 563
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 567
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 571
    :cond_1b
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 575
    :cond_22
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 265
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 266
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_2f

    .line 239
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2f

    .line 243
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3c

    if-eqz v0, :cond_1a

    .line 244
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 246
    :cond_1a
    :try_start_1a
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_3c

    if-eqz v0, :cond_24

    .line 247
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 250
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3c

    .line 251
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 240
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] onPageStart parameter invalid"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3c

    .line 241
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 194
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 195
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    throw p0
.end method

.method public static onPause(Landroid/app/Activity;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 4

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 206
    :try_start_3
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4a

    if-nez v0, :cond_f

    .line 207
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 210
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_4a

    if-eqz v0, :cond_1d

    .line 211
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 214
    :cond_1d
    :try_start_1d
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string p1, "[WARNING] onPause must be called in Activity.onPause"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_4a

    .line 216
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 219
    :cond_34
    :try_start_34
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_4a

    if-eqz v0, :cond_3e

    .line 220
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 223
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4a

    .line 224
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 166
    :try_start_3
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4a

    if-nez v0, :cond_f

    .line 167
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 170
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_4a

    if-eqz v0, :cond_1d

    .line 171
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 174
    :cond_1d
    :try_start_1d
    const-class v0, Landroid/app/Activity;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 175
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    const-string v0, "[WARNING] onResume must be called in Activity.onResume()"

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_4a

    .line 176
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 179
    :cond_34
    :try_start_34
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_4a

    if-eqz v0, :cond_3e

    .line 180
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 183
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4a

    .line 184
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    throw p0
.end method

.method public static platformType(I)V
    .registers 2

    .line 1952
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1956
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->setPlatformType(I)V

    return-void
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1466
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    if-nez p1, :cond_11

    return-void

    .line 1474
    :cond_11
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 806
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 811
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 823
    :cond_15
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 825
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 770
    :cond_b
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .registers 2

    .line 738
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 742
    :cond_b
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1602
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1606
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1610
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1f

    .line 1611
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1614
    :cond_1f
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
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

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p0, :cond_e

    return-void

    .line 1279
    :cond_e
    const v0, -0x17700

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setAuthorizedState(Landroid/content/Context;Z)V
    .registers 2

    .line 1728
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 1732
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dq;->b(Z)V

    return-void
.end method

.method public static setAutoEventProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1442
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1446
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1449
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "3"

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setContentId(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1544
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1548
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1549
    const-string p1, ""

    .line 1552
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_23

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1556
    :cond_23
    const v0, -0x17aec

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setContentTitle(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1518
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1522
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1523
    const-string p1, ""

    .line 1526
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_23

    .line 1527
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1530
    :cond_23
    const v0, -0x17aeb

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setCrashExtraInfo(Ljava/lang/String;)V
    .registers 2

    .line 1687
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1691
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->setCrashExtraInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugOn(Z)V
    .registers 2

    .line 865
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 869
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cx;->a(Z)V

    return-void
.end method

.method public static setEnableBackgroundSendLog(Landroid/content/Context;Z)V
    .registers 3

    .line 1719
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1723
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BDStatCore;->setAutoSendLog(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setFeedTrack(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 1566
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1570
    :cond_b
    invoke-static {p0}, Lcom/baidu/mobstat/cq;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 1571
    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/mobstat/StatService;->c:Z

    return-void
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 888
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 892
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 896
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/dl;->c(Landroid/content/Context;Z)V

    .line 898
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setGlobalExtraInfo(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 3

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_9

    .line 123
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 126
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_33

    if-eqz v0, :cond_17

    .line 127
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 130
    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_33

    if-eqz v0, :cond_21

    .line 131
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 134
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V

    .line 135
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_33

    .line 136
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method public static setListName(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1491
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1495
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1496
    const-string p1, ""

    .line 1499
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_23

    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1503
    :cond_23
    const v0, -0x17ae9

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setLogSenderDelayed(I)V
    .registers 2

    .line 837
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 841
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LogSender;->setLogSenderDelayed(I)V

    return-void
.end method

.method public static setOaid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1862
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1866
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1867
    const-string p1, ""

    .line 1870
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_20

    .line 1871
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1874
    :cond_20
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/dl;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setOn(Landroid/content/Context;I)V
    .registers 4

    .line 303
    const-string v0, "setOn(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 307
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 311
    :cond_14
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    if-eqz v0, :cond_19

    return-void

    .line 315
    :cond_19
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 319
    :cond_20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2c

    .line 323
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_33

    :cond_2c
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_33

    .line 325
    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    .line 329
    :cond_33
    :goto_33
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setOnAppBackgroundListener(Lcom/baidu/mobstat/OnAppBackgroundListener;)V
    .registers 2

    .line 1915
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p0, :cond_e

    return-void

    .line 1922
    :cond_e
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dq;->a(Lcom/baidu/mobstat/OnAppBackgroundListener;)V

    return-void
.end method

.method public static setPageProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1411
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1415
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1419
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "3"

    const-string v2, "4"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setPushId(Landroid/content/Context;Lcom/baidu/mobstat/MtjConfig$PushPlatform;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_9

    .line 1643
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 1646
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_56

    if-eqz v0, :cond_17

    .line 1647
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :cond_17
    if-nez p1, :cond_1d

    .line 1651
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 1654
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_56

    if-eqz v0, :cond_27

    .line 1655
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 1658
    :cond_27
    :try_start_27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_56

    if-eqz v0, :cond_2f

    .line 1659
    const-string p2, ""

    .line 1662
    :cond_2f
    :try_start_2f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_3c

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1666
    :cond_3c
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->showName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/baidu/mobstat/CooperService;->setPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_56

    .line 1668
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_56
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/StatService;

    monitor-exit p1

    throw p0
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    const-string v0, "setSendLogStrategy(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 390
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 394
    :cond_14
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 396
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "[WARNING] setSendLogStrategy 方法被 Application.onCreate()调用，not a good practice; 可能由于多进程反复重启等原因造成Application.onCreate() 方法多次被执行，导致启动次数高；建议埋点在统计路径触发的第一个页面中，比如APP主页面中"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 402
    :cond_27
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-void

    .line 406
    :cond_2e
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    .line 408
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSessionProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1381
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1385
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1389
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setSessionTimeOut(I)V
    .registers 2

    .line 851
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 855
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/BDStatCore;->setSessionTimeOut(I)V

    return-void
.end method

.method public static setStartType(Z)V
    .registers 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    .line 1672
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    if-eqz v0, :cond_11

    .line 1673
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    .line 1676
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->setStartType(Z)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 1677
    const-class p0, Lcom/baidu/mobstat/StatService;

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-exit v0

    throw p0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1310
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-nez p0, :cond_e

    return-void

    .line 1318
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1322
    :cond_15
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

    move-result p1

    if-eqz p1, :cond_2d

    const/4 v0, 0x0

    .line 1332
    :cond_2d
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p1

    invoke-static {v0}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setUserProperty(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1349
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1353
    :cond_e
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1357
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/CooperService;->setUserProperty(Landroid/content/Context;Ljava/util/Map;)V

    .line 1358
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/dt;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/baidu/mobstat/DataCore;->setPydProperty(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static setWebViewDisableFileUrls(Z)V
    .registers 1

    .line 1021
    sput-boolean p0, Lcom/baidu/mobstat/StatService;->b:Z

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 4

    .line 344
    const-string v0, "start(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 348
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 352
    :cond_14
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 354
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "[WARNING] start 方法被 Application.onCreate()调用，not a good practice; 可能由于多进程反复重启等原因造成Application.onCreate() 方法多次被执行，导致启动次数高；建议埋点在统计路径触发的第一个页面中，比如APP主页面中"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 360
    :cond_27
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-void

    .line 364
    :cond_2e
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V

    return-void
.end method

.method public static trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .registers 5

    .line 1291
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1296
    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    return-void
.end method
