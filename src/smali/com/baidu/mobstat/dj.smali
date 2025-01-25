.class public final Lcom/baidu/mobstat/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/net/Proxy;

.field private static final b:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.172"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mobstat/dj;->a:Ljava/net/Proxy;

    .line 29
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.200"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mobstat/dj;->b:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 55
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/baidu/mobstat/dj;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 58
    new-instance p1, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1b
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 63
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_16
    move-exception p0

    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw p0

    .line 66
    :catch_1b
    move-exception p0

    .line 63
    :cond_1c
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    .line 66
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 94
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 98
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_6f

    :cond_26
    if-eqz p1, :cond_6e

    .line 100
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 101
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    :cond_39
    const-string p0, ""

    .line 104
    :goto_3b
    const-string p1, "cmwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "uniwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "3gwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_65

    .line 106
    :cond_54
    const-string p1, "ctwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 107
    sget-object p0, Lcom/baidu/mobstat/dj;->b:Ljava/net/Proxy;

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_6f

    .line 105
    :cond_65
    :goto_65
    sget-object p0, Lcom/baidu/mobstat/dj;->a:Ljava/net/Proxy;

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_6f

    :cond_6e
    const/4 p0, 0x0

    :goto_6f
    if-nez p0, :cond_77

    .line 112
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 115
    :cond_77
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 116
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_9

    const p3, 0x8000

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 43
    :goto_a
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 44
    new-instance p0, Ljava/io/ByteArrayInputStream;

    const-string p1, "utf-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_23
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_24

    :catchall_1e
    move-exception p0

    .line 48
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_23
    move-exception p0

    :goto_24
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 2

    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    invoke-static {p0, v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const v0, 0xc350

    invoke-static {p0, p1, v0, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_8

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :catch_8
    move-exception p0

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_26

    .line 132
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WARNING] not have permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please add it in AndroidManifest.xml according our developer doc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;)V

    :cond_26
    return p0
.end method
