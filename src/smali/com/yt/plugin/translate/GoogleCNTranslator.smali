.class public Lcom/yt/plugin/translate/GoogleCNTranslator;
.super Ljava/lang/Object;
.source "GoogleCNTranslator.java"


# static fields
.field private static final HTTP_CLIENT:Lokhttp3/OkHttpClient;

.field private static final IPS:[Ljava/lang/String;

.field private static okIP:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetHTTP_CLIENT()Lokhttp3/OkHttpClient;
    .registers 1

    sget-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->HTTP_CLIENT:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "64.233.189.191"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "216.239.32.40"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "108.177.97.100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "142.251.175.90"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "142.251.171.90"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "142.251.174.90"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "74.125.196.113"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "142.251.176.90"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "108.177.126.90"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "172.217.218.90"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "142.250.204.6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "142.250.194.89"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->IPS:[Ljava/lang/String;

    .line 34
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->HTTP_CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIP()Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_50

    if-eqz v0, :cond_b

    .line 41
    const-class v1, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v1

    return-object v0

    .line 43
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 44
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/yt/plugin/translate/GoogleCNTranslator;->IPS:[Ljava/lang/String;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    array-length v3, v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_50

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_29

    aget-object v5, v2, v4

    .line 46
    :try_start_1e
    new-instance v6, Lcom/yt/plugin/translate/GoogleCNTranslator$1;

    invoke-direct {v6, v5, v0, v1}, Lcom/yt/plugin/translate/GoogleCNTranslator$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 67
    invoke-virtual {v6}, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->start()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_50

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 71
    :cond_29
    :try_start_29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_49
    .catchall {:try_start_29 .. :try_end_31} :catchall_50

    if-nez v2, :cond_41

    .line 77
    :try_start_33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 79
    sput-object v2, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_50

    const-class v0, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v0

    return-object v2

    .line 72
    :cond_41
    :try_start_41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "无可用IP"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_50

    :catch_49
    move-exception v0

    .line 75
    :try_start_4a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    const-class v1, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v1

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method private static getResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const-string v0, "[[["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 119
    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/json2/JSONArray;->getJSONArray(I)Lorg/json2/JSONArray;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 121
    :goto_18
    invoke-virtual {v0}, Lorg/json2/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 122
    invoke-virtual {v0, v2}, Lorg/json2/JSONArray;->getJSONArray(I)Lorg/json2/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 124
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse result failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :goto_45
    throw p0

    :goto_46
    goto :goto_45
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yt/plugin/translate/GoogleCNTranslator;->getIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/translate_a/single?client=gtx&dt=t&sl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&tl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&q="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 90
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 92
    const-string p1, "Host"

    const-string p2, "translate.googleapis.com"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 93
    const-string p1, "User-Agent"

    const-string p2, "Mozilla/5.0 (Linux; Android 6.0;)"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 97
    :try_start_51
    sget-object p1, Lcom/yt/plugin/translate/GoogleCNTranslator;->HTTP_CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_8e

    .line 105
    :try_start_5b
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 109
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yt/plugin/translate/GoogleCNTranslator;->getResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_89

    .line 111
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return-object p1

    .line 106
    :cond_71
    :try_start_71
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "HTTP response code: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    .line 111
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 112
    throw p1

    :catch_8e
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeout"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 100
    const/4 p1, 0x0

    sput-object p1, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;

    .line 102
    :cond_a2
    throw p0
.end method
