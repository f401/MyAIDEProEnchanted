.class Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkSupplier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier",
        "<",
        "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunkCounts:[I

.field private final dataSources:[Lcom/android/apksig/util/DataSource;

.field private final nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final totalChunkCount:I


# direct methods
.method private constructor <init>([Lcom/android/apksig/util/DataSource;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->dataSources:[Lcom/android/apksig/util/DataSource;

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->chunkCounts:[I

    move v0, v1

    move v2, v1

    :goto_d
    array-length v3, p1

    if-ge v2, v3, :cond_44

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    invoke-static {v4, v5, v6, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->access$1100(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2f

    iget-object v3, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->chunkCounts:[I

    long-to-int v6, v4

    aput v6, v3, v2

    int-to-long v6, v0

    add-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Number of chunks in dataSource[%d] is greater than max int."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iput v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->totalChunkCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>([Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;-><init>([Lcom/android/apksig/util/DataSource;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;
    .registers 13

    const-wide/32 v10, 0x100000

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    if-ltz v4, :cond_53

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->totalChunkCount:I

    if-lt v4, v0, :cond_12

    move-object v0, v3

    :goto_11
    return-object v0

    :cond_12
    const/4 v2, 0x0

    int-to-long v0, v4

    :goto_14
    iget-object v5, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->dataSources:[Lcom/android/apksig/util/DataSource;

    array-length v6, v5

    if-ge v2, v6, :cond_22

    iget-object v6, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->chunkCounts:[I

    aget v7, v6, v2

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gez v7, :cond_43

    :cond_22
    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    mul-long/2addr v0, v10

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    :try_start_33
    iget-object v7, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->dataSources:[Lcom/android/apksig/util/DataSource;

    aget-object v2, v7, v2

    invoke-interface {v2, v0, v1, v5, v6}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_4a

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;

    invoke-direct {v0, v4, v6, v5, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;-><init>(ILjava/nio/ByteBuffer;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V

    goto :goto_11

    :cond_43
    aget v5, v6, v2

    int-to-long v6, v5

    sub-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_4a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to read chunk"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_53
    move-object v0, v3

    goto :goto_11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->get()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;

    move-result-object v0

    return-object v0
.end method
