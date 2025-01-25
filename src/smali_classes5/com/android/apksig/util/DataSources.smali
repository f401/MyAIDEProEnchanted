.class public abstract Lcom/android/apksig/util/DataSources;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;
    .registers 2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/channels/FileChannel;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public static asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;
    .registers 6

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/channels/FileChannel;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public static asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static asDataSource(Ljava/nio/channels/FileChannel;)Lcom/android/apksig/util/DataSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/android/apksig/internal/util/FileChannelDataSource;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static asDataSource(Ljava/nio/channels/FileChannel;JJ)Lcom/android/apksig/util/DataSource;
    .registers 12

    if-eqz p0, :cond_b

    new-instance v0, Lcom/android/apksig/internal/util/FileChannelDataSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
