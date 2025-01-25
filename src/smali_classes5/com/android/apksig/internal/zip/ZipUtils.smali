.class public abstract Lcom/android/apksig/internal/zip/ZipUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;
    }
.end annotation


# static fields
.field public static final COMPRESSION_METHOD_DEFLATED:S = 0x8s

.field public static final COMPRESSION_METHOD_STORED:S = 0x0s

.field public static final GP_FLAG_DATA_DESCRIPTOR_USED:S = 0x8s

.field public static final GP_FLAG_EFS:S = 0x800s

.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_CENTRAL_DIR_TOTAL_RECORD_COUNT_OFFSET:I = 0xa

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deflate(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1f
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v4, v2, v0, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/util/zip/Deflater;

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-virtual {v7, v2, v0, v3}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->finish()V

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    :goto_42
    invoke-virtual {v7}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v7, v0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_42

    :cond_50
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v1

    goto :goto_1f

    :cond_57
    new-instance v0, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;-><init>(IJ[B)V

    return-object v0
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .registers 7

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_d

    :cond_b
    const/4 v0, -0x1

    :cond_c
    return v0

    :cond_d
    add-int/lit8 v2, v0, -0x16

    const v0, 0xffff

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-gt v1, v3, :cond_b

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x6054b50

    if-ne v4, v5, :cond_2d

    add-int/lit8 v4, v0, 0x14

    invoke-static {p0, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-eq v4, v1, :cond_c

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18
.end method

.method public static findZipEndOfCentralDirectoryRecord(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->findZipEndOfCentralDirectoryRecord(Lcom/android/apksig/util/DataSource;I)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    if-nez v0, :cond_b

    const v0, 0xffff

    invoke-static {p0, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->findZipEndOfCentralDirectoryRecord(Lcom/android/apksig/util/DataSource;I)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    goto :goto_b
.end method

.method private static findZipEndOfCentralDirectoryRecord(Lcom/android/apksig/util/DataSource;I)Lcom/android/apksig/internal/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "I)",
            "Lcom/android/apksig/internal/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x16

    if-ltz p1, :cond_46

    const v0, 0xffff

    if-gt p1, v0, :cond_46

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_13

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    int-to-long v2, p1

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x16

    int-to-long v4, v2

    sub-long/2addr v0, v4

    invoke-interface {p0, v0, v1, v2}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/apksig/internal/zip/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v4, v3

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    goto :goto_12

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxCommentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getUnsignedInt16(Ljava/nio/ByteBuffer;)I
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedInt32(Ljava/nio/ByteBuffer;)J
    .registers 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 6

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .registers 3

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .registers 3

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p0, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryTotalRecordCount(Ljava/nio/ByteBuffer;)I
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-static {p0, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static putUnsignedInt16(Ljava/nio/ByteBuffer;I)V
    .registers 4

    if-ltz p1, :cond_c

    const v0, 0xffff

    if-gt p1, v0, :cond_c

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uint16 value of out range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static putUnsignedInt32(Ljava/nio/ByteBuffer;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uint32 value of out range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static setUnsignedInt16(Ljava/nio/ByteBuffer;II)V
    .registers 5

    if-ltz p2, :cond_c

    const v0, 0xffff

    if-gt p2, v0, :cond_c

    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uint16 value of out range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_14

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_14

    long-to-int v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uint32 value of out range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .registers 4

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0, p1, p2}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method
