.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .registers 3

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_29

    const/16 v3, 0x130

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_12

    :cond_29
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_41
    move v0, v1

    goto :goto_12
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .registers 3

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .registers 2

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method private static parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;",
            "Lokio/Buffer;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v8, 0x3d

    :goto_3
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_10

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    move-object v1, v0

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v2

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lokhttp3/Challenge;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2e
    invoke-static {p1, v8}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v4

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v5

    if-nez v2, :cond_60

    if-nez v5, :cond_40

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v4}, Lokhttp3/internal/http/HttpHeaders;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lokhttp3/Challenge;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_60
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v8}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    add-int/2addr v2, v4

    :goto_6a
    if-nez v0, :cond_c1

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_76
    new-instance v2, Lokhttp3/Challenge;

    invoke-direct {v2, v1, v5}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7f
    invoke-static {p1, v8}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    move v4, v2

    :goto_84
    if-eqz v4, :cond_76

    const/4 v2, 0x1

    if-gt v4, v2, :cond_f

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_bc

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v6, 0x22

    if-ne v2, v6, :cond_bc

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v2

    :goto_a3
    if-eqz v2, :cond_f

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b9
    move-object v0, v3

    move v2, v4

    goto :goto_6a

    :cond_bc
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a3

    :cond_c1
    move v4, v2

    goto :goto_84
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/internal/http/HttpHeaders;->parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_29
    return-object v1
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const p1, 0x7fffffff

    :goto_e
    return p1

    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    const/4 p1, 0x0

    goto :goto_e

    :cond_17
    long-to-int p1, v0

    goto :goto_e

    :catch_19
    move-exception v0

    goto :goto_e
.end method

.method private static readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0x1

    const/16 v8, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    if-ne v1, v8, :cond_42

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    :goto_10
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1d

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    if-ne v4, v8, :cond_2e

    invoke-virtual {v1, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_2e
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long v6, v2, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1c

    invoke-virtual {v1, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1, p0, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_10

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static readToken(Lokio/Buffer;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_19} :catch_1d

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .registers 5

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_4
.end method

.method private static repeat(CI)Ljava/lang/String;
    .registers 4

    new-array v0, p1, [C

    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static skipAll(Lokio/Buffer;B)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_15

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    if-ne v1, p1, :cond_15

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    :cond_15
    return v0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    :cond_11
    return p1

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    :cond_12
    return p1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespaceAndCommas(Lokio/Buffer;)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_22

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_16

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x1

    goto :goto_1

    :cond_16
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x9

    if-ne v1, v2, :cond_22

    :cond_1e
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    :cond_22
    return v0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v4

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_42

    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2c
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_34
    if-ge v3, v6, :cond_18

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_42
    return-object v0
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 8

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_17
    if-ge v0, v3, :cond_2d

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    goto :goto_c
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 3

    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .registers 6

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/Address$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method
