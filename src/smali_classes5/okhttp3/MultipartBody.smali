.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    new-array v0, v1, [B

    fill-array-data v0, :array_40

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_46

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_28

    if-eq v0, v4, :cond_22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    const-string v0, "%22"

    :goto_24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_28
    const-string v0, "%0D"

    goto :goto_24

    :cond_2b
    const-string v0, "%0A"

    goto :goto_24

    :cond_2e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .registers 15
    .param p1  # Lokio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_57

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v1, v0

    move-object p1, v0

    :goto_9
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_13
    if-ge v4, v5, :cond_a8

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    iget-object v6, v0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    iget-object v7, v0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    sget-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v6, :cond_5a

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v8, :cond_5a

    invoke-virtual {v6, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v9

    invoke-virtual {v6, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_57
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_9

    :cond_5a
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_73

    const-string v6, "Content-Type: "

    invoke-interface {p1, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v6

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v6}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_73
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_9c

    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v6}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_8c
    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_a4

    add-long/2addr v2, v8

    :goto_94
    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_13

    :cond_9c
    if-eqz p2, :cond_8c

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    const-wide/16 v2, -0x1

    :cond_a3
    :goto_a3
    return-wide v2

    :cond_a4
    invoke-virtual {v7, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_94

    :cond_a8
    sget-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {p1, v4}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    sget-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_a3

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    goto :goto_a3
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    goto :goto_8
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .registers 3

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    return-void
.end method
