.class public final Lorg/antlr/v4/runtime/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;)Lorg/antlr/v4/runtime/CharStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const-string v0, "<unknown>"

    const/16 v1, 0x1000

    invoke-static {p0, v1, p1, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    invoke-static {p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, p5, v2

    if-nez v6, :cond_12

    int-to-long p5, p2

    goto :goto_19

    :cond_12
    const-wide/32 v2, 0x7fffffff

    cmp-long p2, p5, v2

    if-gtz p2, :cond_83

    :goto_19
    long-to-int p2, p5

    .line 267
    invoke-static {p2}, Lorg/antlr/v4/runtime/CodePointBuffer;->builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    move-result-object p2

    .line 268
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const/4 p5, 0x0

    :goto_2b
    if-nez p5, :cond_5c

    .line 275
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p5

    const/4 p6, -0x1

    if-ne p5, p6, :cond_36

    const/4 p5, 0x1

    goto :goto_37

    :cond_36
    const/4 p5, 0x0

    .line 277
    :goto_37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 278
    invoke-virtual {p1, v0, v1, p5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p6

    .line 282
    invoke-virtual {p6}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 283
    invoke-virtual {p6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 285
    :cond_4f
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 286
    invoke-virtual {p2, v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    goto :goto_2b

    .line 292
    :cond_5c
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p5

    if-eqz p5, :cond_71

    sget-object p5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_71

    .line 294
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 296
    :cond_71
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 297
    invoke-virtual {p2, v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 299
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->build()Lorg/antlr/v4/runtime/CodePointBuffer;

    move-result-object p1

    .line 300
    invoke-static {p1, p4}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p1
    :try_end_7f
    .catchall {:try_start_0 .. :try_end_7f} :catchall_a1

    .line 303
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-object p1

    .line 265
    :cond_83
    :try_start_83
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputSize %d larger than max %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v5

    const p4, 0x7fffffff

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a1
    .catchall {:try_start_83 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    .line 303
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_a7

    :goto_a6
    throw p1

    :goto_a7
    goto :goto_a6
.end method

.method public static fromFileName(Ljava/lang/String;)Lorg/antlr/v4/runtime/CharStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromFileName(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromPath(Ljava/nio/file/Path;)Lorg/antlr/v4/runtime/CharStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)J

    move-result-wide v5

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v7

    .line 88
    const/16 v2, 0x1000

    :try_start_d
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1f

    if-eqz v7, :cond_1e

    .line 95
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_1e
    return-object p0

    :catchall_1f
    move-exception p0

    .line 87
    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    if-eqz v7, :cond_2c

    .line 95
    :try_start_24
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    throw p1
.end method

.method public static fromReader(Ljava/io/Reader;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromReader(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromReader(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/16 v0, 0x1000

    :try_start_2
    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer;->builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    move-result-object v1

    .line 195
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 196
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 197
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 199
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    goto :goto_a

    .line 201
    :cond_1b
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->build()Lorg/antlr/v4/runtime/CodePointBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_27

    .line 204
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_27
    move-exception p1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method public static fromStream(Ljava/io/InputStream;)Lorg/antlr/v4/runtime/CharStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/CharStreams;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p0

    .line 144
    const/16 v2, 0x1000

    :try_start_6
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const-string v4, "<unknown>"

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_17

    if-eqz p0, :cond_16

    .line 151
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_16
    return-object p1

    :catchall_17
    move-exception p1

    .line 143
    :try_start_18
    throw p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p2

    if-eqz p0, :cond_24

    .line 151
    :try_start_1c
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p0

    invoke-static {p1, p0}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p2
.end method

.method public static fromString(Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 2

    .line 212
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromString(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 4

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer;->builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 226
    invoke-virtual {v1, p0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 227
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 229
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->build()Lorg/antlr/v4/runtime/CodePointBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method
