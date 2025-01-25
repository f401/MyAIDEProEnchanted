.class public abstract Lcom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/ByteSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 399
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lcom/google/common/io/ByteSource;)Lcom/google/common/io/ByteSource;
    .registers 2

    .line 415
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 223
    move-wide v0, v2

    .line 225
    :goto_3
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, v4, v5}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_10

    .line 226
    add-long/2addr v0, v4

    goto :goto_3

    .line 228
    :cond_10
    return-wide v0
.end method

.method public static empty()Lcom/google/common/io/ByteSource;
    .registers 1

    .line 434
    sget-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-object v0
.end method

.method public static wrap([B)Lcom/google/common/io/ByteSource;
    .registers 2

    .line 425
    new-instance v0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 3

    .line 79
    new-instance v0, Lcom/google/common/io/ByteSource$AsCharSource;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public contentEquals(Lcom/google/common/io/ByteSource;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 340
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v3

    .line 343
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v4

    .line 345
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v5

    .line 347
    :try_start_10
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 348
    invoke-virtual {p1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 350
    :cond_24
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v0, v3, v6, v7}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 351
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v1, v4, v7, v8}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 352
    if-ne v6, v7, :cond_38

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_45

    move-result v7

    if-nez v7, :cond_3d

    .line 353
    :cond_38
    invoke-virtual {v5}, Lcom/google/common/io/Closer;->close()V

    move v0, v2

    .line 355
    :goto_3c
    return v0

    .line 354
    :cond_3d
    :try_start_3d
    array-length v7, v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_45

    if-eq v6, v7, :cond_24

    .line 355
    invoke-virtual {v5}, Lcom/google/common/io/Closer;->close()V

    const/4 v0, 0x1

    goto :goto_3c

    .line 358
    :catchall_45
    move-exception v0

    .line 359
    :try_start_46
    invoke-virtual {v5, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4b

    .line 361
    :catchall_4b
    move-exception v0

    invoke-virtual {v5}, Lcom/google/common/io/Closer;->close()V

    .line 362
    throw v0
.end method

.method public copyTo(Lcom/google/common/io/ByteSink;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 267
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 268
    invoke-virtual {p1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 269
    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_23

    move-result-wide v0

    .line 273
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 269
    return-wide v0

    .line 270
    :catchall_23
    move-exception v0

    .line 271
    :try_start_24
    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 273
    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 274
    throw v0
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 245
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 246
    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    move-result-wide v2

    .line 250
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 246
    return-wide v2

    .line 247
    :catchall_19
    move-exception v0

    .line 248
    :try_start_1a
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 250
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 251
    throw v0
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 330
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 140
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1e

    move v0, v1

    .line 145
    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    .line 140
    goto :goto_1d

    .line 142
    :cond_20
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v3

    .line 144
    :try_start_24
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 145
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3c

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3a

    .line 149
    :goto_35
    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    move v0, v1

    .line 145
    goto :goto_1d

    :cond_3a
    move v1, v2

    goto :goto_35

    .line 146
    :catchall_3c
    move-exception v0

    .line 147
    :try_start_3d
    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_42

    .line 149
    :catchall_42
    move-exception v0

    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    .line 150
    throw v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/BufferedInputStream;

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 313
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 314
    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    move-result-object v0

    .line 318
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 314
    return-object v0

    .line 315
    :catchall_19
    move-exception v0

    .line 316
    :try_start_1a
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 318
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 319
    throw v0
.end method

.method public read()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 285
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 286
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 288
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;J)[B
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2f

    move-result-object v0

    .line 293
    :goto_26
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 287
    return-object v0

    .line 289
    :cond_2a
    :try_start_2a
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    move-result-object v0

    goto :goto_26

    .line 290
    :catchall_2f
    move-exception v0

    .line 291
    :try_start_30
    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_35

    .line 293
    :catchall_35
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 294
    throw v0
.end method

.method public size()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 194
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 210
    :goto_14
    return-wide v0

    .line 197
    :cond_15
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 199
    :try_start_19
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 200
    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_30
    .catchall {:try_start_19 .. :try_end_26} :catchall_2b

    move-result-wide v0

    .line 204
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    goto :goto_14

    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 205
    throw v0

    .line 201
    :catch_30
    move-exception v0

    .line 204
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 205
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 209
    :try_start_38
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 210
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->exhaust(Ljava/io/InputStream;)J
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_4a

    move-result-wide v0

    .line 214
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    goto :goto_14

    .line 211
    :catchall_4a
    move-exception v0

    .line 212
    :try_start_4b
    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_50

    .line 214
    :catchall_50
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 215
    throw v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .registers 12

    .line 121
    new-instance v0, Lcom/google/common/io/ByteSource$SlicedByteSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lcom/google/common/io/ByteSource;JJ)V

    return-object v0
.end method
