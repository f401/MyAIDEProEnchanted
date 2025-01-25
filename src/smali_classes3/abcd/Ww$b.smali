.class Labcd/Ww$b;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/Sw;)V
    .registers 2

    invoke-direct {p0}, Labcd/Ww$b;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 8

    if-eqz p1, :cond_8d

    if-eqz p2, :cond_85

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const-string v3, "chunked"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v2

    :cond_23
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_84

    array-length v3, v0

    if-eq v3, v1, :cond_2f

    goto :goto_84

    :cond_2f
    aget-object v0, v0, v2

    :try_start_31
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_39} :catch_83

    if-gez v0, :cond_3c

    return v2

    :cond_3c
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    :cond_4e
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7b

    :try_start_54
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_59
    :goto_59
    invoke-interface {p1}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {p1}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    return v2

    :cond_6c
    const-string v4, "Keep-Alive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_72
    .catch Lorg/apache/http/ParseException; {:try_start_54 .. :try_end_72} :catch_79

    if-eqz v3, :cond_59

    const/4 v0, 0x1

    goto :goto_59

    :cond_76
    if-eqz v0, :cond_7b

    return v1

    :catch_79
    move-exception p1

    return v2

    :cond_7b
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, p1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :catch_83
    move-exception p1

    :cond_84
    :goto_84
    return v2

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP response may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method
