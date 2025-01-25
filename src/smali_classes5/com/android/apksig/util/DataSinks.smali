.class public abstract Lcom/android/apksig/util/DataSinks;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDataSink(Ljava/io/OutputStream;)Lcom/android/apksig/util/DataSink;
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/util/OutputStreamDataSink;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/OutputStreamDataSink;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static asDataSink(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSink;
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public static varargs asDataSink([Ljava/security/MessageDigest;)Lcom/android/apksig/util/DataSink;
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/util/MessageDigestSink;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/MessageDigestSink;-><init>([Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static newInMemoryDataSink()Lcom/android/apksig/util/ReadableDataSink;
    .registers 1

    new-instance v0, Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-direct {v0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;-><init>()V

    return-object v0
.end method

.method public static newInMemoryDataSink(I)Lcom/android/apksig/util/ReadableDataSink;
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/util/ByteArrayDataSink;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/util/ByteArrayDataSink;-><init>(I)V

    return-object v0
.end method
