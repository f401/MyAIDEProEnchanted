.class public Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/BaiduStatJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWebViewClient"
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

.field private b:Landroid/webkit/WebViewClient;

.field private c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

.field private d:Lcom/baidu/mobstat/dg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/dg;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a:Ljava/lang/ref/WeakReference;

    .line 67
    iput-object p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    .line 68
    iput-object p3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 69
    iput-object p4, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->d:Lcom/baidu/mobstat/dg;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 214
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v1, "obj"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v3, "onPageStart"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const-string v2, "page"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v3, "onPageEnd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 131
    const-string v2, "page"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v3, "onEvent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    const-string v2, "event_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v3, "label"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v4, "acc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    :try_start_0
    const-string v6, "attributes"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    .line 155
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_1

    .line 156
    :cond_4
    const-string v3, "onEventStart"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    const-string v2, "event_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "label"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 165
    :cond_5
    const-string v3, "onEventEnd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 166
    const-string v2, "event_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "label"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    :try_start_1
    const-string v5, "attributes"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_2
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v5

    .line 181
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_2

    .line 182
    :cond_6
    const-string v3, "onEventDuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "event_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v3, "label"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    :try_start_2
    const-string v7, "attributes"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_3
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v7

    .line 199
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_3
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 421
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 442
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 458
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_0
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 81
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 83
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmtj:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    move-object v0, p2

    .line 93
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-super {p0, p1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, p2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method
