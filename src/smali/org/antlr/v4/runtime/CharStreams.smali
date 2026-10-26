.class public final Lorg/antlr/v4/runtime/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/16 v0, 0x1000

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const-string v2, "<unknown>"

    invoke-static {p0, v0, v1, v2}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 260
    invoke-static {p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    const-wide/16 v6, -0x1

    cmp-long v0, p5, v6

    if-nez v0, :cond_2

    int-to-long p5, p2

    :cond_0
    long-to-int v0, p5

    .line 267
    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer;->builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    move-result-object v5

    .line 268
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 275
    invoke-interface {p0, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    move v0, v1

    .line 277
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v6, v3, v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 282
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 285
    :cond_1
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 286
    invoke-virtual {v5, v4}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 287
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    .line 303
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    throw v0

    .line 260
    :cond_2
    const-wide/32 v6, 0x7fffffff

    cmp-long v0, p5, v6

    if-lez v0, :cond_0

    .line 265
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputSize %d larger than max %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 275
    goto :goto_1

    .line 292
    :cond_4
    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 296
    :cond_5
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 297
    invoke-virtual {v5, v4}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 299
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->build()Lorg/antlr/v4/runtime/CodePointBuffer;

    move-result-object v0

    .line 300
    invoke-static {v0, p4}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 303
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-object v0
.end method

.method public static fromFileName(Ljava/lang/String;)Lorg/antlr/v4/runtime/CharStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromFileName(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromPath(Ljava/nio/file/Path;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromPath(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)J

    move-result-wide v6

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 88
    const/16 v3, 0x1000

    :try_start_0
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p0}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 87
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    .line 95
    :try_start_2
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :goto_0
    throw v2

    :catchall_2
    move-exception v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fromReader(Ljava/io/Reader;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromReader(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromReader(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/16 v0, 0x1000

    :try_start_0
    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer;->builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    move-result-object v0

    .line 195
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 196
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->append(Ljava/nio/CharBuffer;)V

    .line 199
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 201
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->build()Lorg/antlr/v4/runtime/CodePointBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/CharStreams;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 144
    const/16 v3, 0x1000

    :try_start_0
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const-string v5, "<unknown>"

    move-object v2, p1

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lorg/antlr/v4/runtime/CharStreams;->fromChannel(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/CodePointCharStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 143
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    .line 151
    :try_start_2
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :goto_0
    throw v2

    :catchall_2
    move-exception v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 1

    .line 212
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CharStreams;->fromString(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 2

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

    move-result-object v0

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method
