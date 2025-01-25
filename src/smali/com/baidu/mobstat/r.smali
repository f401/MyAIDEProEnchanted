.class public Lcom/baidu/mobstat/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/r;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-string v0, "https://openrcv.baidu.com/1010/bplus.gif"

    sput-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/r;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/r;
    .registers 2

    .line 53
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    if-nez v0, :cond_1b

    .line 54
    const-class v0, Lcom/baidu/mobstat/r;

    monitor-enter v0

    .line 55
    :try_start_7
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/baidu/mobstat/r;

    invoke-direct {v0}, Lcom/baidu/mobstat/r;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    .line 58
    :cond_12
    const-class v0, Lcom/baidu/mobstat/r;

    monitor-exit v0

    goto :goto_1b

    :catchall_16
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/r;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_16

    throw v0

    .line 60
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    .line 96
    sget-object v0, Lcom/baidu/mobstat/y;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/r;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-static {p1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 104
    invoke-static {p1, v2}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_b

    .line 107
    :cond_25
    invoke-direct {p0, p1, v3}, Lcom/baidu/mobstat/r;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 109
    invoke-static {p1, v2}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_a

    .line 112
    :cond_2f
    invoke-direct {p0, p1, v3, v2}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    :cond_37
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    .line 183
    :cond_d
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    move-exception p2

    const/4 v0, 0x0

    .line 187
    :goto_15
    invoke-static {v0}, Lcom/baidu/mobstat/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 189
    invoke-static {p2}, Lcom/baidu/mobstat/h;->b(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_28

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/r;Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(JI)[B
    .registers 7

    .line 331
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_16

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 334
    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    aput-byte v2, v0, v3

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const-string v0, "from"

    .line 0
    nop

    .line 229
    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 232
    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 235
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 236
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 237
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 238
    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    const-string v4, "payload"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 242
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 243
    const-string v4, "he"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    const-string v4, "Content-Type"

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "mtj_appversion"

    const-string v4, "n"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "mtj_os"

    const-string v4, "Android"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "mtj_pn"

    const-string v4, "pn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "mtj_tg"

    const-string v4, "1"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "mtj_ii"

    const-string v4, "ii"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    :goto_75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 259
    :try_start_78
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 260
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 262
    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_18a

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 263
    new-array v4, v3, [B

    fill-array-data v4, :array_190

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 264
    new-array v4, v3, [B

    fill-array-data v4, :array_196

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 265
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_19c

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 266
    const/4 v4, 0x2

    new-array v5, v4, [B

    fill-array-data v5, :array_1a4

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    if-eqz v1, :cond_b8

    .line 269
    new-array v5, v4, [B

    fill-array-data v5, :array_1aa

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_c0

    .line 271
    :cond_b8
    new-array v5, v4, [B

    fill-array-data v5, :array_1b0

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 274
    :goto_c0
    new-array v5, v3, [B

    fill-array-data v5, :array_1b6

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_c8} :catch_175
    .catchall {:try_start_78 .. :try_end_c8} :catchall_173

    .line 277
    const-string v5, "utf-8"

    if-eqz v1, :cond_fe

    .line 278
    :try_start_cc
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->a()[B

    move-result-object v1

    .line 280
    invoke-static {}, Lcom/baidu/mobstat/dm;->a()[B

    move-result-object v6

    invoke-static {p2, v6, v1}, Lcom/baidu/mobstat/dr;->a(Z[B[B)[B

    move-result-object p2

    .line 282
    array-length v6, p2

    int-to-long v6, v6

    invoke-static {v6, v7, v3}, Lcom/baidu/mobstat/r;->a(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 283
    invoke-virtual {v2, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 285
    nop

    .line 288
    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x10

    new-array p3, p3, [B

    fill-array-data p3, :array_1bc

    invoke-static {v1, p3, p2}, Lcom/baidu/mobstat/dh$a;->a([B[B[B)[B

    move-result-object p2

    .line 289
    array-length p3, p2

    int-to-long v5, p3

    invoke-static {v5, v6, v4}, Lcom/baidu/mobstat/r;->a(JI)[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_102

    .line 291
    :cond_fe
    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 294
    :goto_102
    invoke-virtual {v2, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 296
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 297
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 299
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 300
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p3

    .line 302
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_15b

    if-nez p3, :cond_15b

    .line 307
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 308
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    :goto_149
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_157

    .line 318
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_153} :catch_175
    .catchall {:try_start_cc .. :try_end_153} :catchall_173

    .line 324
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    .line 315
    :cond_157
    :try_start_157
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_149

    .line 305
    :cond_15b
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Response code = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_173} :catch_175
    .catchall {:try_start_157 .. :try_end_173} :catchall_173

    :catchall_173
    move-exception p2

    goto :goto_183

    :catch_175
    move-exception p2

    .line 322
    :try_start_176
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_17d
    .catchall {:try_start_176 .. :try_end_17d} :catchall_173

    .line 324
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 327
    const-string p1, ""

    return-object p1

    .line 324
    :goto_183
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_188

    :goto_187
    throw p2

    :goto_188
    goto :goto_187

    nop

    :array_18a
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    :array_190
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_196
    .array-data 1
        0x0t
        0x0t
        0x3t
        -0xet
    .end array-data

    :array_19c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a4
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_1aa
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1b0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b6
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    :array_1bc
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 128
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_3d

    .line 133
    :cond_15
    new-instance v1, Lcom/baidu/mobstat/r$2;

    invoke-direct {v1, p0, p2}, Lcom/baidu/mobstat/r$2;-><init>(Lcom/baidu/mobstat/r;Ljava/lang/String;)V

    .line 145
    :try_start_1a
    invoke-virtual {p1, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_21

    :catch_1f
    move-exception p1

    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_3d

    .line 149
    array-length p2, p1

    if-nez p2, :cond_27

    goto :goto_3d

    .line 155
    :cond_27
    :try_start_27
    new-instance p2, Lcom/baidu/mobstat/r$3;

    invoke-direct {p2, p0}, Lcom/baidu/mobstat/r$3;-><init>(Lcom/baidu/mobstat/r;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_30

    goto :goto_31

    .line 166
    :catch_30
    move-exception p2

    .line 165
    :goto_31
    array-length p2, p1

    const/4 v1, 0x0

    :goto_33
    if-ge v1, p2, :cond_3d

    aget-object v2, p1, v1

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_23

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 204
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/ds;->c()Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    return v1

    .line 213
    :cond_15
    :try_start_15
    sget-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception p1

    .line 217
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 64
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_2a

    .line 65
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 69
    :cond_20
    iget-object v0, p0, Lcom/baidu/mobstat/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/r$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/r$1;-><init>(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    :goto_2a
    return-void
.end method
