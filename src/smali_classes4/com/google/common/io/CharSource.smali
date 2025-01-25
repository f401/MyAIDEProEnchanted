.class public abstract Lcom/google/common/io/CharSource;
.super Ljava/lang/Object;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/CharSource$AsByteSource;,
        Lcom/google/common/io/CharSource$CharSequenceCharSource;,
        Lcom/google/common/io/CharSource$ConcatenatedCharSource;,
        Lcom/google/common/io/CharSource$EmptyCharSource;,
        Lcom/google/common/io/CharSource$StringCharSource;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$ConcatenatedCharSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/CharSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .line 384
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lcom/google/common/io/CharSource;)Lcom/google/common/io/CharSource;
    .registers 2

    .line 400
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/Reader;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 170
    move-wide v0, v2

    .line 172
    :goto_3
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p1, v4, v5}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_12

    .line 173
    add-long/2addr v0, v4

    goto :goto_3

    .line 175
    :cond_12
    return-wide v0
.end method

.method public static empty()Lcom/google/common/io/CharSource;
    .registers 1

    .line 422
    invoke-static {}, Lcom/google/common/io/CharSource$EmptyCharSource;->access$000()Lcom/google/common/io/CharSource$EmptyCharSource;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Lcom/google/common/io/CharSource;
    .registers 2

    .line 411
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/common/io/CharSource$StringCharSource;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;
    .registers 3

    .line 85
    new-instance v0, Lcom/google/common/io/CharSource$AsByteSource;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharSource$AsByteSource;-><init>(Lcom/google/common/io/CharSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public copyTo(Lcom/google/common/io/CharSink;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 214
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 215
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 216
    invoke-static {v0, v1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_23

    move-result-wide v0

    .line 220
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 216
    return-wide v0

    .line 217
    :catchall_23
    move-exception v0

    .line 218
    :try_start_24
    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 220
    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 221
    throw v0
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 192
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 193
    invoke-static {v0, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    move-result-wide v2

    .line 197
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 193
    return-wide v2

    .line 194
    :catchall_19
    move-exception v0

    .line 195
    :try_start_1a
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 197
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 198
    throw v0
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

    .line 335
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->lengthIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 337
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1e

    move v0, v1

    .line 342
    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    .line 337
    goto :goto_1d

    .line 339
    :cond_20
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v3

    .line 341
    :try_start_24
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 342
    invoke-virtual {v0}, Ljava/io/Reader;->read()I
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3c

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3a

    .line 346
    :goto_35
    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    move v0, v1

    .line 342
    goto :goto_1d

    :cond_3a
    move v1, v2

    goto :goto_35

    .line 343
    :catchall_3c
    move-exception v0

    .line 344
    :try_start_3d
    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_42

    .line 346
    :catchall_42
    move-exception v0

    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    .line 347
    throw v0
.end method

.method public length()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->lengthIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 155
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 161
    :goto_14
    return-wide v0

    .line 158
    :cond_15
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 160
    :try_start_19
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 161
    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource;->countBySkipping(Ljava/io/Reader;)J
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2b

    move-result-wide v0

    .line 165
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    goto :goto_14

    .line 162
    :catchall_2b
    move-exception v0

    .line 163
    :try_start_2c
    invoke-virtual {v2, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_31

    .line 165
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 166
    throw v0
.end method

.method public lengthIfKnown()Lcom/google/common/base/Optional;
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

    .line 129
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/BufferedReader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    .line 108
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/BufferedReader;

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public abstract openStream()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 232
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 233
    invoke-static {v0}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    move-result-object v0

    .line 237
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 233
    return-object v0

    .line 234
    :catchall_16
    move-exception v0

    .line 235
    :try_start_17
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 237
    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 238
    throw v0
.end method

.method public readFirstLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 253
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 255
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/BufferedReader;

    .line 256
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    move-result-object v0

    .line 260
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 256
    return-object v0

    .line 257
    :catchall_16
    move-exception v0

    .line 258
    :try_start_17
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 260
    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 261
    throw v0
.end method

.method public readLines()Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 278
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/BufferedReader;

    .line 279
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 281
    :goto_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 282
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_12

    .line 285
    :catchall_1c
    move-exception v0

    .line 286
    :try_start_1d
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_22

    .line 288
    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 289
    throw v0

    .line 284
    :cond_27
    :try_start_27
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_1c

    move-result-object v0

    .line 288
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 284
    return-object v0
.end method

.method public readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/LineProcessor",
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
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 314
    invoke-static {v0, p1}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
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
