.class public Lcom/baidu/mobstat/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/json/JSONObject;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .line 206
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 207
    const-string v1, "matchAll"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    .line 217
    :catch_1a
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 4

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/dg;->a:Ljava/lang/String;

    .line 68
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/dg;->b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    :goto_8
    const/16 p1, 0xf

    if-ge p0, p1, :cond_21

    .line 74
    const-wide/16 p1, 0x14

    :try_start_e
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    .line 79
    :goto_13
    sget-object p1, Lcom/baidu/mobstat/dg;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 80
    sget-object v0, Lcom/baidu/mobstat/dg;->a:Ljava/lang/String;

    goto :goto_21

    :cond_1e
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_21
    :goto_21
    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .registers 39

    move-object/from16 v7, p0

    .line 257
    const/4 v1, 0x0

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v2, "h3"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_2b

    .line 260
    :try_start_10
    const-string v3, "p2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_29

    .line 261
    :try_start_16
    const-string v4, "l"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_26

    .line 263
    :try_start_1c
    const-string v5, "point"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_24

    const/4 v0, 0x1

    goto :goto_30

    .line 304
    :catch_24
    move-exception v0

    goto :goto_2f

    .line 263
    :catch_26
    move-exception v0

    move-object v4, v1

    goto :goto_2f

    :catch_29
    move-exception v0

    goto :goto_2d

    :catch_2b
    move-exception v0

    move-object v2, v1

    :goto_2d
    move-object v3, v1

    move-object v4, v3

    :goto_2f
    const/4 v0, 0x0

    :goto_30
    move-object/from16 v23, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v4

    if-nez v0, :cond_39

    return-void

    .line 273
    :cond_39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 274
    const-string v0, "/"

    goto :goto_43

    .line 273
    :cond_42
    move-object v0, v3

    .line 277
    :goto_43
    invoke-static/range {p2 .. p3}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v28

    .line 279
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    .line 281
    invoke-static/range {v28 .. v28}, Lcom/baidu/mobstat/de;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-static/range {v27 .. v27}, Lcom/baidu/mobstat/de;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v30

    .line 284
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/de;->g(Landroid/view/View;)Ljava/util/Map;

    move-result-object v31

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 293
    iget-object v2, v7, Lcom/baidu/mobstat/dg;->d:Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/dg;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 294
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v8

    const-string v10, ""

    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/16 v21, 0x1

    move-object/from16 v9, v32

    move-object/from16 v11, v26

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    move-object/from16 v17, v29

    move-object/from16 v18, v0

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    invoke-virtual/range {v8 .. v21}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_b2

    .line 297
    :cond_9b
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-boolean v1, v7, Lcom/baidu/mobstat/dg;->f:Z

    if-eqz v1, :cond_b2

    .line 298
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    const-string v2, "setEventToNative: not circle event, will not take effect"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 304
    :cond_b2
    :goto_b2
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v8

    const-string v10, ""

    const-string v12, ""

    const/4 v13, 0x1

    const/16 v22, 0x1

    const-string v24, ""

    const/16 v25, 0x0

    move-object/from16 v9, v32

    move-object/from16 v11, v26

    move-wide/from16 v14, v33

    move-object/from16 v16, v29

    move-object/from16 v17, v28

    move-object/from16 v18, v0

    move-object/from16 v19, v27

    move-object/from16 v20, v30

    move-object/from16 v21, v31

    invoke-virtual/range {v8 .. v25}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;Z)Z
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/baidu/mobstat/dg;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    .line 195
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-ne v0, p1, :cond_12

    .line 196
    iget-boolean p1, p0, Lcom/baidu/mobstat/dg;->e:Z

    if-eq p1, p2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_92

    .line 311
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_92

    .line 315
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 316
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_92

    .line 321
    :cond_31
    const/4 v1, 0x1

    :try_start_32
    const-string v2, "meta"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 322
    const-string v3, "matchAll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_43

    if-eqz v2, :cond_44

    return v1

    .line 344
    :catch_43
    move-exception v2

    .line 332
    :cond_44
    :try_start_44
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    .line 333
    :goto_4d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_92

    .line 334
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 336
    const-string v4, "page"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    const-string v5, "layout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    const-string v6, "url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 339
    const-string v7, "webLayout"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 344
    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_8b} :catch_91

    if-eqz v3, :cond_8e

    const/4 v0, 0x1

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :catch_91
    move-exception p1

    :cond_92
    :goto_92
    return v0
.end method

.method private static b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 10

    if-eqz p2, :cond_23

    .line 95
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v0

    .line 96
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v1

    .line 97
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v2

    .line 98
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result p2

    goto :goto_27

    :cond_23
    const/4 v0, 0x0

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :goto_27
    invoke-static {p0}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    .line 102
    invoke-static {p0}, Lcom/baidu/mobstat/de;->d(Landroid/app/Activity;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, v4}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v4

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"x\": "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"y\": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"w\": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"h\": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \"sw\": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \"sh\": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window._automtj.getViewportTree(\'android\', \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', \'window.WebViewInterface.setViewportTreeToNative\')"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    new-instance v0, Lcom/baidu/mobstat/dg$1;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobstat/dg$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 9

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p5, :cond_d

    .line 138
    iput-boolean p5, p0, Lcom/baidu/mobstat/dg;->f:Z

    .line 139
    iput-object p4, p0, Lcom/baidu/mobstat/dg;->d:Lorg/json/JSONObject;

    :cond_d
    if-eqz p5, :cond_24

    .line 143
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "injectTrackJs circleConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 147
    :cond_24
    invoke-direct {p0, p2, p5}, Lcom/baidu/mobstat/dg;->a(Landroid/webkit/WebView;Z)Z

    move-result p4

    if-eqz p4, :cond_3e

    .line 148
    const-string p1, "injectTrackJs, no need to entry"

    if-eqz p5, :cond_36

    .line 149
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    goto :goto_3d

    .line 151
    :cond_36
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    :goto_3d
    return-void

    :cond_3e
    if-eqz p1, :cond_47

    .line 159
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/baidu/mobstat/dg;->c:Ljava/lang/ref/WeakReference;

    :cond_47
    if-eqz p2, :cond_50

    .line 163
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mobstat/dg;->b:Ljava/lang/ref/WeakReference;

    .line 166
    :cond_50
    iput-boolean p5, p0, Lcom/baidu/mobstat/dg;->e:Z

    .line 170
    invoke-direct {p0}, Lcom/baidu/mobstat/dg;->a()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_65

    .line 175
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    :cond_65
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p4

    invoke-virtual {p4}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p4

    const-string p5, "injectTrackJs h5Config: "

    if-eqz p4, :cond_88

    iget-boolean p4, p0, Lcom/baidu/mobstat/dg;->f:Z

    if-eqz p4, :cond_88

    .line 179
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 181
    :cond_88
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p4

    invoke-virtual {p4}, Lcom/baidu/mobstat/dc;->b()Z

    move-result p4

    if-eqz p4, :cond_a5

    .line 182
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 185
    :cond_a5
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "(function(){var h5conf = {\"sdkAPI\": \"window.WebViewInterface.setEventToNative\", \"sdkType\": \"android\", \"events\": "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "};"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "})()"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_d3

    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "javascript:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_d3
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 49
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setEventToNative(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 223
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    const-string v1, "setEventToNative: "

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/baidu/mobstat/dg;->f:Z

    if-eqz v0, :cond_23

    .line 224
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 226
    :cond_23
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 227
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 230
    :cond_40
    iget-object v0, p0, Lcom/baidu/mobstat/dg;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_45

    return-void

    .line 233
    :cond_45
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_4e

    return-void

    .line 238
    :cond_4e
    iget-object v1, p0, Lcom/baidu/mobstat/dg;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_53

    return-void

    .line 241
    :cond_53
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-nez v1, :cond_5c

    return-void

    .line 246
    :cond_5c
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/dg;->a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method

.method public setViewportTreeToNative(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 57
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setViewportTreeToNative "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 60
    :cond_1f
    sput-object p1, Lcom/baidu/mobstat/dg;->a:Ljava/lang/String;

    return-void
.end method
