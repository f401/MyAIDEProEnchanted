.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field static final DEFAULT_SIZE:I = 0x400

.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I

.field private reuseBuffers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    if-gez p1, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    monitor-enter p0

    :try_start_29
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private needNewBuffer(I)V
    .registers 4

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_27

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_40

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    :goto_2e
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_40
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_2e
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public reset()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_35

    :goto_1a
    monitor-exit p0

    return-void

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_35

    goto :goto_1a

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toByteArray()[B
    .registers 8

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_31

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_31

    sub-int v0, v2, v5

    if-nez v0, :cond_2e

    :cond_2c
    move-object v0, v1

    goto :goto_8

    :cond_2e
    add-int/2addr v3, v5

    move v2, v0

    goto :goto_13

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_49

    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v0, v1, v4

    if-nez v0, :cond_4c

    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    new-instance v0, Ljava/io/SequenceInputStream;

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_49

    goto :goto_a

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    move v1, v0

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public write(Ljava/io/InputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v2, v1

    :goto_12
    const/4 v4, -0x1

    if-eq v3, v4, :cond_33

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    move v0, v1

    :cond_28
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_35

    move-result v3

    goto :goto_12

    :cond_33
    monitor-exit p0

    return v2

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x0

    :cond_13
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .registers 10

    if-ltz p2, :cond_10

    array-length v0, p1

    if-gt p2, v0, :cond_10

    if-ltz p3, :cond_10

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_10

    add-int v0, p2, p3

    if-gez v0, :cond_16

    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_16
    if-nez p3, :cond_19

    :goto_18
    return-void

    :cond_19
    monitor-enter p0

    :try_start_1a
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int v2, v0, p3

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, v0, v1

    move v0, p3

    :cond_25
    :goto_25
    if-lez v0, :cond_3f

    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v0

    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    if-lez v0, :cond_25

    invoke-direct {p0, v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v1, 0x0

    goto :goto_25

    :cond_3f
    iput v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    monitor-exit p0

    goto :goto_18

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_43

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    sub-int v0, v1, v3

    if-nez v0, :cond_25

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    move v1, v0

    goto :goto_a

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
