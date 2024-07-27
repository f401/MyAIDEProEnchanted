.class public Lcom/baidu/mobstat/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ci$a;,
        Lcom/baidu/mobstat/ci$b;,
        Lcom/baidu/mobstat/ci$c;
    }
.end annotation


# static fields
.field private static volatile c:Ljava/lang/String;

.field private static volatile d:I


# instance fields
.field private final a:Lcom/baidu/mobstat/ci$b;

.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/ci;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ci;->b:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/baidu/mobstat/ci$b;

    invoke-direct {v0}, Lcom/baidu/mobstat/ci$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/ci$b;

    .line 52
    return-void
.end method

.method public static a()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/ci;->d:I

    .line 56
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    .line 143
    if-nez p2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_0

    .line 153
    invoke-static {p2}, Lcom/baidu/mobstat/cd;->a(Landroid/view/View;)Z

    move-result v0

    .line 155
    if-nez v0, :cond_0

    .line 159
    invoke-static {p2}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {p2}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-static {p2, p4}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-static {p2, p5}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const-wide/16 v2, -0x1

    .line 186
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 190
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 194
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 196
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 197
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    const-string v7, "p"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v4, "i"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-static {p2}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 203
    const-string v0, "t"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    const-string v0, "path"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "type"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "value"

    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    const-string v2, "x"

    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v2, "y"

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v2, "w"

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v2, "h"

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string v2, "frame"

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "alpha"

    invoke-static {p2}, Lcom/baidu/mobstat/de;->i(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v0, "page"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v0, "z"

    invoke-static {p2}, Lcom/baidu/mobstat/de;->j(Landroid/view/View;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v6, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 222
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 223
    const-string v2, ""

    move-object v0, p2

    .line 224
    check-cast v0, Landroid/webkit/WebView;

    .line 227
    invoke-static {p1, v0, v5}, Lcom/baidu/mobstat/dg;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 229
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v0, "url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string v0, "objects"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 236
    :goto_2
    if-nez v0, :cond_3

    .line 237
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 239
    :cond_3
    const-string v3, "child"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    const-string v0, "url"

    const-string v2, "/"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_4
    :goto_3
    invoke-static {p2, p4}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    const-string v2, "edit"

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {p3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 256
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 260
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 261
    check-cast p2, Landroid/view/ViewGroup;

    .line 263
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 264
    const-string v0, "child"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v6, v1

    .line 266
    :goto_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 267
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V

    .line 266
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_5

    .line 246
    :cond_5
    const-string v0, "url"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    move v0, v1

    .line 251
    goto :goto_4

    .line 270
    :cond_7
    const-string v0, "child"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 187
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method public static b()V
    .registers 1

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private c(Landroid/app/Activity;)Lorg/json/JSONArray;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 131
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V

    .line 132
    return-object v3
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 8

    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget v1, Lcom/baidu/mobstat/ci;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/mobstat/ci;->d:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 79
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/mobstat/cf;->a(Z)V

    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ci;->b(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ci;->c(Landroid/app/Activity;)Lorg/json/JSONArray;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 93
    sget-object v4, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    :cond_3
    sput-object v1, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :try_start_1
    invoke-static {v2}, Lcom/baidu/mobstat/de;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v4, "screenshot"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-static {v2}, Lcom/baidu/mobstat/de;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v4, "hash"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v4, "w"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v4, "h"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v2, "screen"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "page"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "objects"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public b(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 7

    .line 279
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/ci$b;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ci$b;->a(Landroid/app/Activity;)V

    .line 280
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/ci$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 281
    iget-object v1, p0, Lcom/baidu/mobstat/ci;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 285
    if-eqz v0, :cond_1

    .line 286
    const-wide/16 v2, 0x2

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 298
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 299
    if-nez v1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 304
    :goto_1
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v3, "autotrace: Screenshot interrupted, no screenshot will be sent."

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    .line 292
    const-string v3, "autotrace: Screenshot took more than 2 second to be scheduled and executed. No screenshot will be sent."

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 294
    :catch_2
    move-exception v0

    .line 295
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v3, "autotrace: Exception thrown during screenshot attempt"

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 303
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ci$c;

    .line 304
    iget-object v0, v0, Lcom/baidu/mobstat/ci$c;->c:Lcom/baidu/mobstat/ci$a;

    invoke-static {v0}, Lcom/baidu/mobstat/ci$a;->a(Lcom/baidu/mobstat/ci$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
