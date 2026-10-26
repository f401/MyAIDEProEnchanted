.class public Lcom/yt/plugin/translate/GoogleCNTranslator;
.super Ljava/lang/Object;
.source "GoogleCNTranslator.java"


# static fields
.field private static final HTTP_CLIENT:Lokhttp3/OkHttpClient;

.field private static final IPS:[Ljava/lang/String;

.field private static okIP:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetHTTP_CLIENT()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->HTTP_CLIENT:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

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
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIP()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 41
    const-class v1, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v1

    .line 79
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 44
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Lcom/yt/plugin/translate/GoogleCNTranslator;->IPS:[Ljava/lang/String;

    array-length v0, v3

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    array-length v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 46
    :try_start_2
    new-instance v6, Lcom/yt/plugin/translate/GoogleCNTranslator$1;

    invoke-direct {v6, v5, v1, v2}, Lcom/yt/plugin/translate/GoogleCNTranslator$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 67
    invoke-virtual {v6}, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 77
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    sput-object v0, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-class v1, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v1

    goto :goto_0

    .line 72
    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u65e0\u53ef\u7528IP"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    .line 75
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/yt/plugin/translate/GoogleCNTranslator;

    monitor-exit v1

    throw v0
.end method

.method private static getResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 116
    const-string v0, "[[["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json2/JSONArray;->getJSONArray(I)Lorg/json2/JSONArray;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 121
    :goto_0
    invoke-virtual {v2}, Lorg/json2/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 122
    invoke-virtual {v2, v0}, Lorg/json2/JSONArray;->getJSONArray(I)Lorg/json2/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json2/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse result failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    const-string v1, "&tl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 90
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 92
    const-string v1, "Host"

    const-string v2, "translate.googleapis.com"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 93
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 6.0;)"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/yt/plugin/translate/GoogleCNTranslator;->HTTP_CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/translate/GoogleCNTranslator;->getResult(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    return-object v0

    .line 106
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 111
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 112
    throw v0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x0

    sput-object v1, Lcom/yt/plugin/translate/GoogleCNTranslator;->okIP:Ljava/lang/String;

    .line 102
    :cond_1
    throw v0
.end method
