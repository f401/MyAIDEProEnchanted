.class final Lcom/google/common/io/ByteSource$SlicedByteSource;
.super Lcom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlicedByteSource"
.end annotation


# instance fields
.field final length:J

.field final offset:J

.field final this$0:Lcom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/ByteSource;JJ)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    iput-object p1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 486
    cmp-long v0, p2, v4

    if-ltz v0, :cond_21

    move v0, v1

    :goto_e
    const-string v3, "offset (%s) may not be negative"

    invoke-static {v0, v3, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 487
    cmp-long v0, p4, v4

    if-ltz v0, :cond_23

    :goto_17
    const-string v0, "length (%s) may not be negative"

    invoke-static {v1, v0, p4, p5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 488
    iput-wide p2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    .line 489
    iput-wide p4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 490
    return-void

    :cond_21
    move v0, v2

    .line 486
    goto :goto_e

    :cond_23
    move v1, v2

    .line 487
    goto :goto_17
.end method

.method private sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_30

    .line 506
    :try_start_8
    invoke-static {p1, v0, v1}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    move-result-wide v0

    .line 515
    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_30

    .line 519
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 520
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 523
    :goto_1d
    return-object v0

    .line 507
    :catchall_1e
    move-exception v0

    .line 508
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 509
    invoke-virtual {v1, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 511
    :try_start_26
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    .line 513
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 514
    throw v0

    .line 523
    :cond_30
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {p1, v0, v1}, Lcom/google/common/io/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1d
.end method


# virtual methods
.method public isEmpty()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-super {p0}, Lcom/google/common/io/ByteSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openBufferedStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 543
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 544
    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 545
    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 547
    :goto_2b
    return-object v0

    :cond_2c
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_2b
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    cmp-long v0, p1, v4

    if-ltz v0, :cond_28

    move v0, v1

    :goto_9
    const-string v3, "offset (%s) may not be negative"

    invoke-static {v0, v3, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 529
    cmp-long v0, p3, v4

    if-ltz v0, :cond_2a

    :goto_12
    const-string v0, "length (%s) may not be negative"

    invoke-static {v1, v0, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 530
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 531
    iget-object v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    add-long/2addr v4, p1

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/google/common/io/ByteSource;->slice(JJ)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0

    :cond_28
    move v0, v2

    .line 528
    goto :goto_9

    :cond_2a
    move v1, v2

    .line 529
    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".slice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
