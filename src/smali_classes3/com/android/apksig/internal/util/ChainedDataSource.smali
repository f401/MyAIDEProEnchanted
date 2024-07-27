.class public Lcom/android/apksig/internal/util/ChainedDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# instance fields
.field private final mSources:[Lcom/android/apksig/util/DataSource;

.field private final mTotalSize:J


# direct methods
.method public varargs constructor <init>([Lcom/android/apksig/util/DataSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/apksig/util/DataSource;)J
    .registers 3

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method private locateDataSource(J)Lcom/android/apksig/internal/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    move-wide v0, p1

    :goto_0
    iget-object v3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    sub-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access is out of bound, offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v4, p3

    new-instance v6, Lcom/android/apksig/internal/util/ByteBufferSink;

    invoke-direct {v6, p4}, Lcom/android/apksig/internal/util/ByteBufferSink;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/apksig/internal/util/ChainedDataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v13, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v14, v13

    const/4 v0, 0x0

    move v6, v0

    move-wide/from16 v4, p3

    move-wide/from16 v2, p1

    :goto_0
    if-ge v6, v14, :cond_1

    aget-object v1, v13, v6

    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v10

    cmp-long v0, v2, v8

    if-ltz v0, :cond_0

    sub-long v0, v2, v10

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_0

    :cond_0
    sub-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-ltz v0, :cond_2

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    :cond_1
    return-void

    :cond_2
    move-object v7, v1

    move-wide v8, v2

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    sub-long/2addr v4, v10

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Requested more than available"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v4, p3

    add-long v0, v4, p1

    iget-wide v2, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-object v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v0, v0, v1

    invoke-interface {v0, v2, v3, p3}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v1, v1, v0

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticBackport0;->m(J)I

    move-result v5

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    const-wide/16 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v0, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Requested more than available"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mTotalSize:J

    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/util/DataSource;
    .registers 16

    const-wide/16 v8, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    aget-object v0, v0, v1

    add-long v4, v2, p3

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    invoke-interface {v0, v2, v3, p3, p4}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-interface {v0, v2, v3, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v2, p1, p3

    sub-long/2addr v2, v8

    invoke-direct {p0, v2, v3}, Lcom/android/apksig/internal/util/ChainedDataSource;->locateDataSource(J)Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/apksig/internal/util/ChainedDataSource;->mSources:[Lcom/android/apksig/util/DataSource;

    if-ge v0, v3, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    aget-object v0, v1, v3

    const-wide/16 v2, 0x0

    add-long/2addr v6, v8

    invoke-interface {v0, v2, v3, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/apksig/internal/util/ChainedDataSource;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/apksig/util/DataSource;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/util/DataSource;

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/util/ChainedDataSource;-><init>([Lcom/android/apksig/util/DataSource;)V

    move-object v0, v1

    goto :goto_0
.end method
