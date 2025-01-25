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
    .registers 0

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

    return-void
.end method

.method public static a()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/ci;->d:I

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v7, p1

    move-object v1, p2

    move-object/from16 v2, p4

    if-nez v1, :cond_7

    return-void

    .line 147
    :cond_7
    invoke-static {p2}, Lcom/baidu/mobstat/de;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_e

    return-void

    .line 153
    :cond_e
    invoke-static {p2}, Lcom/baidu/mobstat/cd;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 159
    :cond_15
    invoke-static {p2}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 166
    :cond_20
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 171
    :cond_27
    invoke-static {p2}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 173
    invoke-static {p2, v2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 175
    move-object/from16 v8, p5

    invoke-static {p2, v8}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4a

    .line 174
    :cond_43
    move-object/from16 v8, p5

    move-object v5, v0

    goto :goto_4a

    .line 172
    :cond_47
    move-object/from16 v8, p5

    move-object v5, v0

    .line 180
    :goto_4a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    return-void

    .line 186
    :cond_51
    :try_start_51
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_5d

    :catch_5a
    move-exception v0

    const-wide/16 v9, -0x1

    :goto_5d
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gez v0, :cond_64

    return-void

    .line 194
    :cond_64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 197
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 198
    const-string v10, "p"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v4, "i"

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-static {p2}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    .line 203
    const-string v4, "t"

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    const-string v4, "path"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v4, "type"

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v4, "value"

    invoke-static {p2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 212
    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v5

    const-string v6, "x"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v5

    const-string v6, "y"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v5

    const-string v6, "w"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/baidu/mobstat/cc;->a(Landroid/content/Context;F)I

    move-result v5

    const-string v6, "h"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string v5, "frame"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v4, "alpha"

    invoke-static {p2}, Lcom/baidu/mobstat/de;->i(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "page"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-static {p2}, Lcom/baidu/mobstat/de;->j(Landroid/view/View;)F

    move-result v4

    float-to-double v4, v4

    const-string v6, "z"

    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 222
    instance-of v4, v1, Landroid/webkit/WebView;

    const-string v5, "child"

    if-eqz v4, :cond_13b

    .line 226
    move-object v6, v1

    check-cast v6, Landroid/webkit/WebView;

    .line 227
    invoke-static {p1, v6, v3}, Lcom/baidu/mobstat/dg;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v9, "url"

    if-nez v6, :cond_11f

    .line 229
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    const-string v11, "objects"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_122

    .line 228
    :cond_11f
    const-string v3, ""

    const/4 v6, 0x0

    :goto_122
    if-nez v6, :cond_129

    .line 237
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 239
    :cond_129
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_138

    .line 244
    const-string v3, "/"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13b

    .line 246
    :cond_138
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_13b
    :goto_13b
    invoke-static {p2, v2}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v2

    .line 251
    const-string v3, "edit"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v4, :cond_14c

    return-void

    .line 260
    :cond_14c
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_172

    .line 261
    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup;

    .line 263
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 264
    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 266
    :goto_15c
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17a

    .line 267
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, v11

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15c

    .line 270
    :cond_172
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17a
    return-void
.end method

.method public static b()V
    .registers 1

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/app/Activity;)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    .line 131
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ci;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;Landroid/view/View;)V

    return-object v6
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 74
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 78
    :cond_b
    sget v1, Lcom/baidu/mobstat/ci;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/mobstat/ci;->d:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_18

    .line 79
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/mobstat/cf;->a(Z)V

    .line 83
    :cond_18
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ci;->b(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1f

    return-object v0

    .line 91
    :cond_1f
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ci;->c(Landroid/app/Activity;)Lorg/json/JSONArray;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 93
    sget-object v4, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    if-eqz v4, :cond_3c

    sget-object v4, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-object v0

    .line 97
    :cond_3c
    sput-object v3, Lcom/baidu/mobstat/ci;->c:Ljava/lang/String;

    .line 99
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_87

    .line 101
    :try_start_43
    invoke-static {v1}, Lcom/baidu/mobstat/de;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v4, "screenshot"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-static {v1}, Lcom/baidu/mobstat/de;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v4, "hash"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v4, "w"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v4, "h"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v1, "screen"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "page"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string p1, "objects"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catchall {:try_start_43 .. :try_end_83} :catchall_84

    goto :goto_85

    :catchall_84
    move-exception p1

    :goto_85
    move-object v0, v3

    goto :goto_88

    :catchall_87
    move-exception p1

    :goto_88
    return-object v0
.end method

.method public b(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 6

    .line 279
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/ci$b;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ci$b;->a(Landroid/app/Activity;)V

    .line 280
    new-instance p1, Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/baidu/mobstat/ci;->a:Lcom/baidu/mobstat/ci$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 281
    iget-object v0, p0, Lcom/baidu/mobstat/ci;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 286
    :try_start_15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1f} :catch_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_1f} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_21

    move-object v0, p1

    goto :goto_41

    :catch_21
    move-exception p1

    .line 295
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "autotrace: Exception thrown during screenshot attempt"

    invoke-virtual {v1, v2, p1}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    :catch_2c
    move-exception p1

    .line 291
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    .line 292
    const-string v2, "autotrace: Screenshot took more than 2 second to be scheduled and executed. No screenshot will be sent."

    invoke-virtual {v1, v2, p1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    :catch_37
    move-exception p1

    .line 289
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    const-string v2, "autotrace: Screenshot interrupted, no screenshot will be sent."

    invoke-virtual {v1, v2, p1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    :goto_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_49

    const/4 p1, 0x0

    return-object p1

    .line 303
    :cond_49
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/ci$c;

    .line 304
    iget-object p1, p1, Lcom/baidu/mobstat/ci$c;->c:Lcom/baidu/mobstat/ci$a;

    invoke-static {p1}, Lcom/baidu/mobstat/ci$a;->a(Lcom/baidu/mobstat/ci$a;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
