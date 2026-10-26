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
    .locals 1

    .line 39
    const-string v0, "https://openrcv.baidu.com/1010/bplus.gif"

    sput-object v0, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

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
    .locals 2

    .line 53
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/baidu/mobstat/r;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/baidu/mobstat/r;

    invoke-direct {v0}, Lcom/baidu/mobstat/r;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    .line 58
    :cond_0
    const-class v0, Lcom/baidu/mobstat/r;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/r;->b:Lcom/baidu/mobstat/r;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/baidu/mobstat/r;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 96
    sget-object v0, Lcom/baidu/mobstat/y;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/r;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 107
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/baidu/mobstat/r;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-static {p1, v0}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {v1}, Lcom/baidu/mobstat/h;->b(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/mobstat/r;Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(JI)[B
    .locals 4

    .line 331
    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 334
    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 228
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 232
    invoke-static {p1, p2}, Lcom/baidu/mobstat/dj;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 235
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 236
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 237
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 238
    const-string v0, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v2, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    const-string v3, "payload"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    const-string v3, "he"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    const-string v3, "Content-Type"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "mtj_appversion"

    const-string v4, "n"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "mtj_os"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "mtj_pn"

    const-string v4, "pn"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "mtj_tg"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "mtj_ii"

    const-string v4, "ii"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "from"

    const-string v4, "from"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 259
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 260
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 265
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 266
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 274
    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/baidu/mobstat/dh$a;->a()[B

    move-result-object v0

    .line 280
    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/mobstat/dm;->a()[B

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/baidu/mobstat/dr;->a(Z[B[B)[B

    move-result-object v1

    .line 282
    array-length v5, v1

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-static {v6, v7, v5}, Lcom/baidu/mobstat/r;->a(JI)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 283
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 285
    const-string v1, "utf-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    invoke-static {v0, v5, v1}, Lcom/baidu/mobstat/dh$a;->a([B[B[B)[B

    move-result-object v0

    .line 289
    array-length v1, v0

    int-to-long v6, v1

    const/4 v1, 0x2

    invoke-static {v6, v7, v1}, Lcom/baidu/mobstat/r;->a(JI)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 294
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 296
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 297
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 299
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 300
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 302
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    if-nez v1, :cond_3

    .line 307
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 324
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 327
    :goto_4
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 271
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 305
    :catch_1
    move-exception v0

    .line 322
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 327
    const-string v0, ""

    goto :goto_4

    .line 291
    :cond_1
    :try_start_4
    const-string v0, "utf-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 315
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 305
    :catchall_0
    move-exception v0

    .line 324
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 305
    :cond_3
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Response code = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    :array_0
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    .line 263
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 264
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x3t
        -0xet
    .end array-data

    .line 265
    :array_3
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

    .line 266
    :array_4
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    .line 285
    :array_7
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

    .line 271
    :array_8
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 166
    :cond_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v2, Lcom/baidu/mobstat/r$2;

    invoke-direct {v2, p0, p2}, Lcom/baidu/mobstat/r$2;-><init>(Lcom/baidu/mobstat/r;Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 149
    array-length v1, v2

    if-eqz v1, :cond_0

    .line 155
    :try_start_1
    new-instance v1, Lcom/baidu/mobstat/r$3;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/r$3;-><init>(Lcom/baidu/mobstat/r;)V

    invoke-static {v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :goto_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 166
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    .line 204
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/ds;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/r;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/mobstat/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 217
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

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

    if-eqz p2, :cond_0

    .line 65
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/r$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/r$1;-><init>(Lcom/baidu/mobstat/r;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
