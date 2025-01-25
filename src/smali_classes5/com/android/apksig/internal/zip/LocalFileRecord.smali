.class public Lcom/android/apksig/internal/zip/LocalFileRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;
    }
.end annotation


# static fields
.field private static final COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final CRC32_OFFSET:I = 0xe

.field private static final DATA_DESCRIPTOR_SIGNATURE:I = 0x8074b50

.field private static final DATA_DESCRIPTOR_SIZE_BYTES_WITHOUT_SIGNATURE:I = 0xc

.field private static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field private static final EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final GP_FLAGS_OFFSET:I = 0x6

.field private static final HEADER_SIZE_BYTES:I = 0x1e

.field private static final NAME_LENGTH_OFFSET:I = 0x1a

.field private static final NAME_OFFSET:I = 0x1e

.field private static final RECORD_SIGNATURE:I = 0x4034b50

.field private static final UNCOMPRESSED_SIZE_OFFSET:I = 0x16


# instance fields
.field private final mDataCompressed:Z

.field private final mDataSize:J

.field private final mDataStartOffset:I

.field private final mExtra:Ljava/nio/ByteBuffer;

.field private final mName:Ljava/lang/String;

.field private final mNameSizeBytes:I

.field private final mSize:J

.field private final mStartOffsetInArchive:J

.field private final mUncompressedDataSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/zip/LocalFileRecord;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/nio/ByteBuffer;JJIJZJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mNameSizeBytes:I

    iput-object p3, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mExtra:Ljava/nio/ByteBuffer;

    iput-wide p4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mStartOffsetInArchive:J

    iput-wide p6, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mSize:J

    iput p8, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataStartOffset:I

    iput-wide p9, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataSize:J

    iput-boolean p11, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataCompressed:Z

    iput-wide p12, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mUncompressedDataSize:J

    return-void
.end method

.method public static getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)Lcom/android/apksig/internal/zip/LocalFileRecord;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JZZ)Lcom/android/apksig/internal/zip/LocalFileRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JZZ)Lcom/android/apksig/internal/zip/LocalFileRecord;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getNameSizeBytes()I

    move-result v6

    add-int/lit8 v4, v6, 0x1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v8

    int-to-long v10, v4

    add-long/2addr v10, v8

    cmp-long v7, v10, p2

    if-gtz v7, :cond_2be

    :try_start_14
    move-object/from16 v0, p0

    invoke-interface {v0, v8, v9, v4}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_2a6

    move-result-object v10

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const v7, 0x4034b50

    if-ne v4, v7, :cond_27c

    const/4 v4, 0x6

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    and-int/lit8 v11, v4, 0x8

    const/4 v15, 0x0

    if-eqz v11, :cond_ed

    const/4 v4, 0x1

    :goto_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getGpFlags()S

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_f0

    const/4 v7, 0x1

    :goto_3c
    if-ne v4, v7, :cond_255

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getCrc32()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getCompressedSize()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getUncompressedSize()J

    move-result-wide v16

    if-nez v4, :cond_6a

    const/16 v4, 0xe

    invoke-static {v10, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v20

    cmp-long v4, v20, v18

    if-nez v4, :cond_147

    const/16 v4, 0x12

    invoke-static {v10, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v18

    cmp-long v4, v18, v13

    if-nez v4, :cond_11e

    const/16 v4, 0x16

    invoke-static {v10, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v18

    cmp-long v4, v18, v16

    if-nez v4, :cond_f3

    :cond_6a
    const/16 v4, 0x1a

    invoke-static {v10, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v12

    if-gt v12, v6, :cond_229

    const/16 v4, 0x1e

    invoke-static {v10, v4, v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_205

    const/16 v4, 0x1c

    invoke-static {v10, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v20

    const-wide/16 v18, 0x1e

    add-long v18, v18, v8

    int-to-long v0, v12

    move-wide/from16 v22, v0

    add-long v22, v22, v18

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v24, v18, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getCompressionMethod()S

    move-result v4

    if-eqz v4, :cond_9b

    const/4 v15, 0x1

    :cond_9b
    if-eqz v15, :cond_172

    :goto_9d
    add-long v18, v24, v13

    cmp-long v4, v18, p2

    if-gtz v4, :cond_1d0

    sget-object v7, Lcom/android/apksig/internal/zip/LocalFileRecord;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_b3

    if-lez v20, :cond_b3

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v7

    :cond_b3
    if-eqz p5, :cond_1cc

    if-eqz v11, :cond_1cc

    const-wide/16 v10, 0xc

    add-long v10, v10, v18

    cmp-long v4, v10, p2

    if-gtz v4, :cond_1a1

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2, v4}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const v21, 0x8074b50

    move/from16 v0, v21

    if-ne v4, v0, :cond_e2

    const-wide/16 v22, 0x4

    add-long v10, v10, v22

    cmp-long v4, v10, p2

    if-gtz v4, :cond_176

    :cond_e2
    :goto_e2
    new-instance v4, Lcom/android/apksig/internal/zip/LocalFileRecord;

    sub-long/2addr v10, v8

    add-int/lit8 v12, v12, 0x1e

    add-int v12, v12, v20

    invoke-direct/range {v4 .. v17}, Lcom/android/apksig/internal/zip/LocalFileRecord;-><init>(Ljava/lang/String;ILjava/nio/ByteBuffer;JJIJZJ)V

    return-object v4

    :cond_ed
    const/4 v4, 0x0

    goto/16 :goto_33

    :cond_f0
    const/4 v7, 0x0

    goto/16 :goto_3c

    :cond_f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uncompressed size mismatch between Local File Header and Central Directory for entry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". LFH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compressed size mismatch between Local File Header and Central Directory for entry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". LFH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CRC-32 mismatch between Local File Header and Central Directory for entry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". LFH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_172
    move-wide/from16 v13, v16

    goto/16 :goto_9d

    :cond_176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data Descriptor of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlaps with Central Directory. Data Descriptor end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data Descriptor of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlaps with Central Directory. Data Descriptor end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1cc
    move-wide/from16 v10, v18

    goto/16 :goto_e2

    :cond_1d0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local File Header data of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlaps with Central Directory. LFH data start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", LFH data end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Name mismatch between Local File Header and Central Directory. LFH: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", CD: \""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Name mismatch between Local File Header and Central Directory for entry"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". LFH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes, CD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Descriptor presence mismatch between Local File Header and Central Directory for entry "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". LFH: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", CD: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_27c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a Local File Header record for entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Signature: 0x"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_2a6
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read Local File Header of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_2be
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local File Header of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " extends beyond start of Central Directory. LFH end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", CD start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getUncompressedSize()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getUncompressedSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    new-instance v1, Lcom/android/apksig/internal/util/ByteBufferSink;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/util/ByteBufferSink;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JLcom/android/apksig/util/DataSink;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static outputRecordWithDeflateCompressedData(Ljava/lang/String;II[BJJLcom/android/apksig/util/DataSink;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v2, 0x4034b50

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v1, p2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v1, p4, p5}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    array-length v2, p3

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    invoke-static {v1, p6, p7}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    array-length v2, v0

    invoke-static {v1, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v1, v5}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p8, v1}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    array-length v0, p3

    int-to-long v0, v0

    array-length v4, p3

    invoke-interface {p8, p3, v5, v4}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    add-long/2addr v0, v2

    return-wide v0

    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JLcom/android/apksig/util/DataSink;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;JZZ)Lcom/android/apksig/internal/zip/LocalFileRecord;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V

    return-void
.end method


# virtual methods
.method public getDataStartOffsetInRecord()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataStartOffset:I

    return v0
.end method

.method public getExtra()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mExtra:Ljava/nio/ByteBuffer;

    goto :goto_e
.end method

.method public getExtraFieldStartOffsetInsideRecord()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mNameSizeBytes:I

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mSize:J

    return-wide v0
.end method

.method public getStartOffsetInArchive()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mStartOffsetInArchive:J

    return-wide v0
.end method

.method public isDataCompressed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataCompressed:Z

    return v0
.end method

.method public outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getSize()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v2

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    return-wide v4
.end method

.method public outputRecordWithModifiedExtra(Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSink;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtraFieldStartOffsetInsideRecord()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int v4, v2, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/android/apksig/util/DataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v2, 0x1c

    invoke-static {v4, v2, v3}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt16(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v8, v2

    invoke-interface {p3, v4}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getSize()J

    move-result-wide v2

    iget v4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataStartOffset:I

    int-to-long v6, v4

    sub-long v4, v2, v6

    add-long v2, v0, v6

    move-object v1, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v0, v8, v4

    return-wide v0
.end method

.method public outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mStartOffsetInArchive:J

    iget v2, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataStartOffset:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    :try_start_6
    iget-boolean v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataCompressed:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_8} :catch_82

    if-eqz v0, :cond_ac

    :try_start_a
    new-instance v6, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;

    const/4 v0, 0x0

    invoke-direct {v6, p2, v0}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;-><init>(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/internal/zip/LocalFileRecord$1;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_5b

    :try_start_10
    iget-wide v4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataSize:J

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->getOutputByteCount()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mUncompressedDataSize:J
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_54

    cmp-long v2, v0, v2

    if-nez v2, :cond_24

    :try_start_20
    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_5b

    :goto_23
    return-void

    :cond_24
    :try_start_24
    new-instance v2, Lcom/android/apksig/zip/ZipFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected size of uncompressed data of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mUncompressedDataSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes, actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_b8

    :goto_5a
    :try_start_5a
    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/util/zip/DataFormatException;

    if-eqz v1, :cond_ab

    new-instance v1, Lcom/android/apksig/zip/ZipFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data of entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " malformed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_82} :catch_82

    :catch_82
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read data of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataCompressed:Z

    if-eqz v0, :cond_b5

    const-string v0, "compressed"

    :goto_94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entry "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_ab
    :try_start_ab
    throw v0

    :cond_ac
    iget-wide v4, p0, Lcom/android/apksig/internal/zip/LocalFileRecord;->mDataSize:J

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b3} :catch_82

    goto/16 :goto_23

    :cond_b5
    const-string v0, "uncompressed"

    goto :goto_94

    :catchall_b8
    move-exception v1

    goto :goto_5a
.end method
