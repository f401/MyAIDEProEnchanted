.class public Lcom/yt/plugin/translate/HttpUtils$Request;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yt/plugin/translate/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final post:Z

.field private final postData:Ljava/lang/StringBuilder;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->headers:Ljava/util/Map;

    .line 34
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->charset:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->url:Ljava/lang/String;

    .line 38
    iput-boolean p2, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->post:Z

    if-eqz p2, :cond_1a

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    iput-object p1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->postData:Ljava/lang/StringBuilder;

    .line 40
    const-string p1, "User-Agent"

    const-string p2, "Mozilla/5.0 (Linux; Android 6.0;)"

    invoke-virtual {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/yt/plugin/translate/HttpUtils$Request-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/yt/plugin/translate/HttpUtils$Request;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    iget-boolean v1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->post:Z

    if-eqz v1, :cond_14

    const-string v1, "POST"

    goto :goto_16

    :cond_14
    const-string v1, "GET"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    iget-boolean v1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->post:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    iget-object v1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 77
    :cond_4e
    iget-boolean v1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->post:Z

    if-eqz v1, :cond_6b

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->postData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6b
    return-object v0
.end method

.method public execute()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_34

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_34

    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    const v2, 0x19000

    new-array v2, v2, [B

    .line 94
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2a

    .line 95
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 97
    :cond_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->charset:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTP response code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v1

    :goto_49
    goto :goto_48
.end method

.method public executeToJson()Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    new-instance v0, Lorg/json2/JSONObject;

    invoke-virtual {p0}, Lcom/yt/plugin/translate/HttpUtils$Request;->execute()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json2/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json2/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 108
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public formData(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->postData:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 55
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->headers:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 57
    :cond_12
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->postData:Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->postData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->charset:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/yt/plugin/translate/HttpUtils$Request;->charset:Ljava/lang/String;

    return-object p0
.end method
