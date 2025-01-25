.class public Lcom/android/apksig/internal/util/VerityTreeBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CHUNK_SIZE:I = 0x1000

.field private static final DIGEST_PARALLELISM:I

.field private static final JCA_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final MAX_OUTSTANDING_CHUNKS:I = 0x4

.field private static final MAX_PREFETCH_CHUNKS:I = 0x400

.field private static final MIN_CHUNKS_PER_WORKER:I = 0x8


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMd:Ljava/security/MessageDigest;

.field private final mSalt:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x20

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->DIGEST_PARALLELISM:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v2, Lcom/android/apksig/internal/util/VerityTreeBuilder;->DIGEST_PARALLELISM:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mSalt:[B

    invoke-static {}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->getNewMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mMd:Ljava/security/MessageDigest;

    return-void
.end method

.method private static calculateLevelOffset(JI)[I
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v8, 0x1000

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-static {p0, p1, v8, v9}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->divideRoundup(JJ)J

    move-result-wide v4

    int-to-long v6, p2

    mul-long p0, v4, v6

    invoke-static {p0, p1, v8, v9}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->divideRoundup(JJ)J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v1, p0, v8

    if-gtz v1, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [I

    aput v0, v3, v0

    :goto_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    add-int/lit8 v1, v0, 0x1

    aget v4, v3, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    add-int/2addr v0, v4

    aput v0, v3, v1

    move v0, v1

    goto :goto_29

    :cond_4e
    return-object v3
.end method

.method private cloneMessageDigest()Ljava/security/MessageDigest;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    :try_start_a
    invoke-static {}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->getNewMessageDigest()Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_8

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain an instance of a previously available message digest"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private digestDataByChunks(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v10

    const-wide/16 v2, 0x1000

    invoke-static {v10, v11, v2, v3}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->divideRoundup(JJ)J

    move-result-wide v2

    long-to-int v12, v2

    div-int/lit8 v2, v12, 0x8

    sget v3, Lcom/android/apksig/internal/util/VerityTreeBuilder;->DIGEST_PARALLELISM:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    new-array v6, v12, [[B

    new-instance v7, Ljava/util/concurrent/Phaser;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/concurrent/Phaser;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-wide v8, v2

    :goto_23
    cmp-long v2, v8, v10

    if-gez v2, :cond_5f

    const-wide/32 v2, 0x400000

    add-long/2addr v2, v8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v2, v8

    long-to-int v2, v2

    int-to-long v14, v2

    const-wide/16 v16, 0x1000

    invoke-static/range {v14 .. v17}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->divideRoundup(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    mul-int/lit16 v3, v13, 0x1000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v2, v4}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v2, Lcom/android/apksig/internal/util/VerityTreeBuilder$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/apksig/internal/util/VerityTreeBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/apksig/internal/util/VerityTreeBuilder;Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V

    invoke-virtual {v7}, Ljava/util/concurrent/Phaser;->register()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/2addr v5, v13

    add-long v2, v8, v14

    move-wide v8, v2

    goto :goto_23

    :cond_5f
    invoke-virtual {v7}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    const/4 v2, 0x0

    :goto_63
    if-ge v2, v12, :cond_71

    aget-object v3, v6, v2

    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4, v5}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_71
    return-void
.end method

.method private static divideRoundup(JJ)J
    .registers 8

    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method private static getNewMessageDigest()Ljava/security/MessageDigest;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private saltedDigest(Ljava/nio/ByteBuffer;)[B
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mMd:Ljava/security/MessageDigest;

    invoke-direct {p0, v0, p1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->saltedDigest(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method private saltedDigest(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)[B
    .registers 4

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mSalt:[B

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    :cond_a
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method private static slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public generateVerityTree(Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x1000

    iget-object v0, p0, Lcom/android/apksig/internal/util/VerityTreeBuilder;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->calculateLevelOffset(JI)[I

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_67

    aget v0, v3, v1

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lcom/android/apksig/internal/util/ByteBufferSink;

    aget v7, v3, v5

    invoke-static {v4, v0, v7}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/apksig/internal/util/ByteBufferSink;-><init>(Ljava/nio/ByteBuffer;)V

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    if-ne v1, v0, :cond_51

    invoke-direct {p0, p1, v6}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->digestDataByChunks(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V

    move-object v0, p1

    :goto_37
    invoke-interface {v0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->divideRoundup(JJ)J

    move-result-wide v8

    int-to-long v10, v2

    mul-long/2addr v8, v10

    rem-long/2addr v8, v12

    long-to-int v0, v8

    if-lez v0, :cond_4d

    rsub-int v0, v0, 0x1000

    new-array v5, v0, [B

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    :cond_4d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d

    :cond_51
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    aget v5, v3, v5

    add-int/lit8 v7, v1, 0x2

    aget v7, v3, v7

    invoke-static {v0, v5, v7}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->digestDataByChunks(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V

    goto :goto_37

    :cond_67
    return-object v4
.end method

.method public generateVerityTreeRootHash(Lcom/android/apksig/util/DataSource;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->generateVerityTree(Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->getRootHashFromTree(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public generateVerityTreeRootHash(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_47

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {p3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {p3, v6, v7, v3, v2}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v2, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    new-instance v0, Lcom/android/apksig/internal/util/ChainedDataSource;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/apksig/util/DataSource;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/util/ChainedDataSource;-><init>([Lcom/android/apksig/util/DataSource;)V

    invoke-virtual {p0, v0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->generateVerityTreeRootHash(Lcom/android/apksig/util/DataSource;)[B

    move-result-object v0

    return-object v0

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block size not a multiple of 4096: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRootHashFromTree(Ljava/nio/ByteBuffer;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->saltedDigest(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$digestDataByChunks$0$VerityTreeBuilder(Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->cloneMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_1b

    add-int/lit16 v1, v0, 0x1000

    invoke-static {p1, v0, v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->saltedDigest(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_9

    :cond_1b
    invoke-virtual {p4}, Ljava/util/concurrent/Phaser;->arriveAndDeregister()I

    return-void
.end method
