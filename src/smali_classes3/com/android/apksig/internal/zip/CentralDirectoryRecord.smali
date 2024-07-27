.class public Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;
    }
.end annotation


# static fields
.field public static final BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final GP_FLAGS_OFFSET:I = 0x8

.field private static final HEADER_SIZE_BYTES:I = 0x2e

.field private static final LOCAL_FILE_HEADER_OFFSET_OFFSET:I = 0x2a

.field private static final NAME_OFFSET:I = 0x2e

.field private static final RECORD_SIGNATURE:I = 0x2014b50


# instance fields
.field private final mCompressedSize:J

.field private final mCompressionMethod:S

.field private final mCrc32:J

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mGpFlags:S

.field private final mLastModificationDate:I

.field private final mLastModificationTime:I

.field private final mLocalFileHeaderOffset:J

.field private final mName:Ljava/lang/String;

.field private final mNameSizeBytes:I

.field private final mUncompressedSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;-><init>(Lcom/android/apksig/internal/zip/CentralDirectoryRecord$1;)V

    sput-object v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    int-to-short v1, p3

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    iput p5, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    iput p4, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    iput-wide p6, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    iput-wide p8, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    iput-wide p10, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    iput-wide p12, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLocalFileHeaderOffset:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    return-void
.end method

.method public static createWithDeflateCompressedData(Ljava/lang/String;IIJJJJ)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .registers 30

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v2, v6

    add-int/lit8 v2, v2, 0x2e

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v2, 0x2014b50

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/16 v2, 0x14

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/16 v2, 0x800

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    move-wide/from16 v0, p3

    invoke-static {v3, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    array-length v2, v6

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v0, p9

    invoke-static {v3, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    const/16 v4, 0x800

    const/16 v5, 0x8

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move-object/from16 v16, p0

    invoke-direct/range {v2 .. v17}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", limit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static getName(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v0, p2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_0
    new-array v1, p2, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public static getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x2e

    if-lt v4, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const v6, 0x2014b50

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v19

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v18

    add-int/lit8 v16, v4, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v20, v19, 0x2e

    add-int v5, v5, v20

    add-int v5, v5, v18

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_0

    add-int/lit8 v18, v4, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    add-int/2addr v4, v5

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-direct/range {v4 .. v19}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v4

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input too short. Need: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes, available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/nio/BufferUnderflowException;

    invoke-direct {v6}, Ljava/nio/BufferUnderflowException;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a Central Directory record. Signature: 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input too short. Need at least: 46 bytes, available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/nio/BufferUnderflowException;

    invoke-direct {v6}, Ljava/nio/BufferUnderflowException;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public createWithModifiedLocalFileHeaderOffset(J)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .registers 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x2a

    move-wide/from16 v0, p1

    invoke-static {v3, v2, v0, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    new-instance v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    move/from16 v17, v0

    move-wide/from16 v14, p1

    invoke-direct/range {v2 .. v17}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v2
.end method

.method public getCompressedSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()S
    .registers 2

    iget-short v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    return v0
.end method

.method public getCrc32()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    return-wide v0
.end method

.method public getGpFlags()S
    .registers 2

    iget-short v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    return v0
.end method

.method public getLastModificationDate()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    return v0
.end method

.method public getLastModificationTime()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    return v0
.end method

.method public getLocalFileHeaderOffset()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLocalFileHeaderOffset:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSizeBytes()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    return v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getUncompressedSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    return-wide v0
.end method
