.class Lorg/apache/tools/zip/NioZipEncoding;
.super Ljava/lang/Object;
.source "NioZipEncoding.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipEncoding;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/tools/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 51
    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .registers 4

    .line 57
    iget-object v0, p0, Lorg/apache/tools/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 58
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 59
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 61
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/tools/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 115
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 116
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 117
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 9

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lorg/apache/tools/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 70
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 71
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 73
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 74
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    :cond_26
    :goto_26
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_7d

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v3, v4, v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 84
    :cond_3d
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v1, v6, :cond_58

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 86
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    .line 85
    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v1, v6

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_58
    move v1, v2

    .line 89
    :goto_59
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    if-ge v1, v6, :cond_26

    .line 90
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    invoke-static {v0, v6}, Lorg/apache/tools/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 93
    :cond_69
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 95
    invoke-static {v0, v2}, Lorg/apache/tools/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_26

    .line 97
    :cond_74
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 99
    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 105
    :cond_7d
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->prepareBufferForRead(Ljava/nio/Buffer;)V

    .line 107
    return-object v0
.end method
