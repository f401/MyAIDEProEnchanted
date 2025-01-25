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
            "Ljava/lang/ref/WeakReference<",
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
    .registers 6

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 210
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    :cond_f
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 217
    :try_start_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_13

    .line 220
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_13

    :catch_29
    move-exception v2

    goto :goto_13

    :cond_2b
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string p1, "action"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v1, "obj"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_1d

    return-void

    .line 122
    :cond_1d
    const-string v1, "onPageStart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "page"

    if-eqz v1, :cond_3b

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    .line 129
    :cond_32
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/baidu/mobstat/BDStatCore;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11a

    .line 130
    :cond_3b
    const-string v1, "onPageEnd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_59

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    return-void

    .line 137
    :cond_4f
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, p1, v4, v1}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V

    goto/16 :goto_11a

    .line 138
    :cond_59
    const-string v1, "onEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "attributes"

    const-string v5, "label"

    const-string v6, "event_id"

    if-eqz v1, :cond_96

    .line 139
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    const-string v1, "acc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    return-void

    .line 149
    :cond_7c
    :try_start_7c
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_82} :catch_84

    move-object v4, v0

    goto :goto_85

    .line 199
    :catch_84
    move-exception v0

    .line 153
    :goto_85
    invoke-direct {p0, v4}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v8

    .line 155
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    goto/16 :goto_11a

    .line 156
    :cond_96
    const-string v1, "onEventStart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 157
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ad

    return-void

    .line 164
    :cond_ad
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11a

    .line 165
    :cond_b6
    const-string v1, "onEventEnd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 166
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    return-void

    .line 175
    :cond_cd
    :try_start_cd
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d3} :catch_d5

    move-object v4, v0

    goto :goto_d6

    .line 199
    :catch_d5
    move-exception v0

    .line 179
    :goto_d6
    invoke-direct {p0, v4}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v7

    .line 181
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    goto :goto_11a

    .line 182
    :cond_e5
    const-string v1, "onEventDuration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11a

    .line 183
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_102

    return-void

    .line 193
    :cond_102
    :try_start_102
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_108} :catch_10a

    move-object v4, v0

    goto :goto_10b

    .line 199
    :catch_10a
    move-exception v0

    .line 197
    :goto_10b
    invoke-direct {p0, v4}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v9

    .line 199
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    :cond_11a
    :goto_11a
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 302
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 290
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_7
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 421
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 251
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 388
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_7
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 433
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 442
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_7
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 328
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 450
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_7
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 380
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 315
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_7
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_9

    .line 458
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    .line 461
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_7
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 277
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_7
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_7

    .line 354
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :cond_7
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_9

    .line 411
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 414
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_9

    .line 401
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 404
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_9

    .line 340
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 343
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_9

    .line 105
    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 108
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 81
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "bmtj:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 84
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->a(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1c} :catch_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p1, 0x1

    return p1

    :catch_1e
    move-exception v0

    goto :goto_21

    :catch_20
    move-exception v0

    .line 93
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2a

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 96
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
