.class public Lorg/apache/tools/zip/ZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;,
        Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final CFH_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final CFH_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final CFH_CRC_OFFSET:I = 0x10

.field private static final CFH_DISK_NUMBER_OFFSET:I = 0x22

.field private static final CFH_EXTERNAL_ATTRIBUTES_OFFSET:I = 0x26

.field private static final CFH_EXTRA_LENGTH_OFFSET:I = 0x1e

.field private static final CFH_FILENAME_LENGTH_OFFSET:I = 0x1c

.field private static final CFH_FILENAME_OFFSET:I = 0x2e

.field private static final CFH_GPB_OFFSET:I = 0x8

.field private static final CFH_INTERNAL_ATTRIBUTES_OFFSET:I = 0x24

.field private static final CFH_LFH_OFFSET:I = 0x2a

.field private static final CFH_METHOD_OFFSET:I = 0xa

.field private static final CFH_ORIGINAL_SIZE_OFFSET:I = 0x18

.field protected static final CFH_SIG:[B

.field private static final CFH_SIG_OFFSET:I = 0x0

.field private static final CFH_TIME_OFFSET:I = 0xc

.field private static final CFH_VERSION_MADE_BY_OFFSET:I = 0x4

.field private static final CFH_VERSION_NEEDED_OFFSET:I = 0x6

.field protected static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String;

.field public static final DEFLATED:I = 0x8

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field protected static final EOCD_SIG:[B

.field private static final LFH_COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final LFH_CRC_OFFSET:I = 0xe

.field private static final LFH_EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final LFH_FILENAME_LENGTH_OFFSET:I = 0x1a

.field private static final LFH_FILENAME_OFFSET:I = 0x1e

.field private static final LFH_GPB_OFFSET:I = 0x6

.field private static final LFH_METHOD_OFFSET:I = 0x8

.field private static final LFH_ORIGINAL_SIZE_OFFSET:I = 0x16

.field protected static final LFH_SIG:[B

.field private static final LFH_SIG_OFFSET:I = 0x0

.field private static final LFH_TIME_OFFSET:I = 0xa

.field private static final LFH_VERSION_NEEDED_OFFSET:I = 0x4

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field protected buf:[B

.field private final calendarInstance:Ljava/util/Calendar;

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field private finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private method:I

.field private final offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final oneByte:[B

.field private final raf:Ljava/io/RandomAccessFile;

.field private useUTF8Flag:Z

.field private written:J

.field private zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EMPTY:[B

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 241
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_5a

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    .line 243
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ONE:[B

    .line 1028
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->LFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    .line 1034
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->DD_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    .line 1040
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->CFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    .line 1046
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 1050
    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    .line 1054
    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    return-void

    .line 234
    :array_54
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 241
    nop

    :array_5a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 351
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    iput-boolean v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    .line 170
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 185
    iput-boolean v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 192
    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 199
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 206
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 213
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 220
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 227
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    .line 262
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 271
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 280
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    invoke-direct {v1, v2, v5}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 292
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 307
    iput-boolean v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 312
    iput-boolean v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 317
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 322
    iput-boolean v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 324
    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 331
    new-array v1, v5, [B

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    .line 354
    :try_start_63
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6a} :catch_73

    .line 355
    const-wide/16 v2, 0x0

    :try_start_6c
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_89

    move-object v0, v1

    .line 367
    :goto_70
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 368
    return-void

    .line 356
    :catch_73
    move-exception v1

    move-object v1, v0

    .line 357
    :goto_75
    if-eqz v1, :cond_8b

    .line 359
    :try_start_77
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_87

    .line 365
    :goto_7a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    goto :goto_70

    .line 360
    :catch_87
    move-exception v1

    goto :goto_7a

    .line 356
    :catch_89
    move-exception v2

    goto :goto_75

    :cond_8b
    move-object v0, v1

    goto :goto_7a
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 9

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    iput-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 185
    iput-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 192
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 213
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 220
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 227
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    .line 262
    iput-object v6, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 271
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 280
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    invoke-direct {v0, v1, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 292
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 307
    iput-boolean v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 312
    iput-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 317
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 322
    iput-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 324
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 331
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    .line 340
    iput-object v6, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 341
    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/tools/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_8

    if-nez p2, :cond_25

    .line 1166
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1168
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 1169
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1170
    new-instance v4, Lorg/apache/tools/zip/UnicodePathExtraField;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/tools/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1166
    invoke-virtual {p1, v4}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1173
    :cond_25
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1185
    :cond_31
    :goto_31
    return-void

    .line 1178
    :cond_32
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 1179
    invoke-interface {v1, v0}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1180
    :cond_40
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1181
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 1183
    new-instance v4, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, v5, v1

    invoke-direct {v4, v0, v2, v3, v1}, Lorg/apache/tools/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1181
    invoke-virtual {p1, v4}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    goto :goto_31
.end method

.method protected static adjustToLong(I)J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1564
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private checkIfNeedsZip64(Lorg/apache/tools/zip/Zip64Mode;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isZip64Required(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    .line 662
    if-eqz v0, :cond_10

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p1, v1, :cond_11

    .line 666
    :cond_10
    return v0

    .line 663
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 664
    new-instance v1, Lorg/apache/tools/zip/Zip64RequiredException;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/tools/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeEntry(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 565
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->rewriteSizesAndCrc(Z)V

    .line 568
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 570
    return-void
.end method

.method private createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0xffffffffL

    .line 1224
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1225
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1226
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 1227
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    cmp-long v0, v4, v2

    if-ltz v0, :cond_42

    :cond_2b
    const/4 v6, 0x1

    .line 1230
    :goto_2c
    if-eqz v6, :cond_34

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v0, v1, :cond_44

    .line 1239
    :cond_34
    invoke-direct {p0, p1, v4, v5, v6}, Lorg/apache/tools/zip/ZipOutputStream;->handleZip64Extra(Lorg/apache/tools/zip/ZipEntry;JZ)V

    .line 1241
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;JZ)[B

    move-result-object v0

    return-object v0

    .line 1227
    :cond_42
    const/4 v6, 0x0

    goto :goto_2c

    .line 1234
    :cond_44
    new-instance v0, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;JZ)[B
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    .line 1257
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    .line 1258
    if-nez v2, :cond_c

    .line 1259
    const-string v2, ""

    .line 1262
    :cond_c
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1263
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v2, v5

    .line 1264
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v6, v2, v6

    .line 1265
    array-length v2, v3

    .line 1266
    add-int/lit8 v7, v5, 0x2e

    add-int/2addr v2, v7

    add-int/2addr v2, v6

    new-array v7, v2, [B

    .line 1268
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v2, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v8

    iget-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v2, :cond_10e

    const/16 v2, 0x14

    :goto_41
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    const/4 v8, 0x4

    invoke-static {v2, v7, v8}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1275
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v8

    .line 1276
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 1277
    move/from16 v0, p5

    invoke-direct {p0, v8, v0}, Lorg/apache/tools/zip/ZipOutputStream;->versionNeededToExtract(IZ)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v9, v7, v10}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1278
    if-nez v2, :cond_112

    iget-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v2, :cond_112

    const/4 v2, 0x1

    :goto_67
    invoke-direct {p0, v8, v2}, Lorg/apache/tools/zip/ZipOutputStream;->getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v2

    const/16 v9, 0x8

    invoke-virtual {v2, v7, v9}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    .line 1281
    const/16 v2, 0xa

    invoke-static {v8, v7, v2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1285
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v8

    const/16 v10, 0xc

    invoke-static {v2, v8, v9, v7, v10}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 1290
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    const/16 v2, 0x10

    invoke-static {v8, v9, v7, v2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1291
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    const-wide v10, 0xffffffffL

    cmp-long v2, v8, v10

    if-gez v2, :cond_a3

    .line 1292
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v8

    const-wide v10, 0xffffffffL

    cmp-long v2, v8, v10

    if-ltz v2, :cond_115

    .line 1291
    :cond_a3
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    const/16 v8, 0x14

    invoke-virtual {v2, v7, v8}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1294
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    const/16 v8, 0x18

    invoke-virtual {v2, v7, v8}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1300
    :goto_b1
    const/16 v2, 0x1c

    invoke-static {v5, v7, v2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1303
    array-length v2, v3

    const/16 v8, 0x1e

    invoke-static {v2, v7, v8}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1305
    const/16 v2, 0x20

    invoke-static {v6, v7, v2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1308
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    const/4 v8, 0x0

    const/16 v9, 0x22

    const/4 v10, 0x2

    invoke-static {v2, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v2

    const/16 v8, 0x24

    invoke-static {v2, v7, v8}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1314
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v8

    const/16 v2, 0x26

    invoke-static {v8, v9, v7, v2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1317
    const-wide v8, 0xffffffffL

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const/16 v2, 0x2a

    invoke-static {v8, v9, v7, v2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1320
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    const/16 v9, 0x2e

    invoke-static {v2, v8, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1322
    add-int/lit8 v2, v5, 0x2e

    .line 1323
    const/4 v5, 0x0

    array-length v8, v3

    invoke-static {v3, v5, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1325
    array-length v3, v3

    .line 1328
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v2, v3

    invoke-static {v5, v4, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1329
    return-object v7

    .line 1272
    :cond_10e
    const/16 v2, 0x2d

    goto/16 :goto_41

    .line 1278
    :cond_112
    const/4 v2, 0x0

    goto/16 :goto_67

    .line 1296
    :cond_115
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    const/16 v2, 0x14

    invoke-static {v8, v9, v7, v2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1297
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v8

    const/16 v2, 0x18

    invoke-static {v8, v9, v7, v2}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_b1
.end method

.method private createLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;Z)[B
    .registers 12

    .line 1094
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v1

    .line 1095
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v0, v2

    .line 1096
    array-length v0, v1

    .line 1097
    add-int/lit8 v3, v2, 0x1e

    add-int/2addr v0, v3

    new-array v3, v0, [B

    .line 1099
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v4

    .line 1104
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    invoke-direct {p0, v4, v0}, Lorg/apache/tools/zip/ZipOutputStream;->versionNeededToExtract(IZ)I

    move-result v0

    const/4 v5, 0x4

    invoke-static {v0, v3, v5}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1107
    if-nez p3, :cond_96

    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v0, :cond_96

    const/4 v0, 0x1

    .line 1108
    :goto_33
    invoke-direct {p0, v4, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v0

    .line 1109
    const/4 v5, 0x6

    invoke-virtual {v0, v3, v5}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    .line 1112
    const/16 v0, 0x8

    invoke-static {v4, v3, v0}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1114
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v6

    const/16 v5, 0xa

    invoke-static {v0, v6, v7, v3, v5}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 1117
    const/16 v0, 0x8

    if-eq v4, v0, :cond_53

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_98

    .line 1118
    :cond_53
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x4

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    :goto_5c
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1129
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    const/16 v4, 0x12

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1130
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    const/16 v4, 0x16

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1139
    :goto_76
    const/16 v0, 0x1a

    invoke-static {v2, v3, v0}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1142
    array-length v0, v1

    const/16 v4, 0x1c

    invoke-static {v0, v3, v4}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1145
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1e

    array-length v4, v1

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    return-object v3

    .line 1107
    :cond_96
    const/4 v0, 0x0

    goto :goto_33

    .line 1120
    :cond_98
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    const/16 v0, 0xe

    invoke-static {v6, v7, v3, v0}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_5c

    .line 1131
    :cond_a2
    const/16 v0, 0x8

    if-eq v4, v0, :cond_aa

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_bb

    .line 1132
    :cond_aa
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/4 v6, 0x4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    const/4 v4, 0x0

    const/16 v5, 0x16

    const/4 v6, 0x4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_76

    .line 1135
    :cond_bb
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const/16 v0, 0x12

    invoke-static {v4, v5, v3, v0}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1136
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const/16 v0, 0x16

    invoke-static {v4, v5, v3, v0}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_76
.end method

.method private deflateUntilInputIsNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1568
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1569
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    .line 1571
    :cond_c
    return-void
.end method

.method private flushDeflater()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 591
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 592
    :goto_13
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 593
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    goto :goto_13

    .line 596
    :cond_1f
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;
    .registers 6

    .line 1650
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1c

    .line 1652
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 1653
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 1654
    :cond_1c
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 1656
    :goto_1e
    return-object v0

    :cond_1f
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    goto :goto_1e
.end method

.method private getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;
    .registers 4

    .line 1660
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1661
    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v0, :cond_13

    .line 1662
    sget-object v0, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 1661
    :goto_12
    return-object v0

    .line 1662
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    goto :goto_12
.end method

.method private getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;
    .registers 6

    const/4 v1, 0x1

    .line 1574
    new-instance v2, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v2}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    .line 1575
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    if-nez v0, :cond_c

    if-eqz p2, :cond_1a

    :cond_c
    move v0, v1

    :goto_d
    invoke-virtual {v2, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 1576
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isDeflatedToOutputStream(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1577
    invoke-virtual {v2, v1}, Lorg/apache/tools/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 1579
    :cond_19
    return-object v2

    .line 1575
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1666
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;
    .registers 4

    .line 1604
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_b

    .line 1605
    iget-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$502(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z

    .line 1607
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1608
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    .line 1610
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    .line 1612
    if-nez v0, :cond_1d

    .line 1619
    new-instance v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    invoke-direct {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1623
    :cond_1d
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->addAsFirstExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1625
    return-object v0
.end method

.method private handleSizesAndCrc(JJLorg/apache/tools/zip/Zip64Mode;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 618
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$300(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 619
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 620
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 622
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 645
    :cond_34
    :goto_34
    invoke-direct {p0, p5}, Lorg/apache/tools/zip/ZipOutputStream;->checkIfNeedsZip64(Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    return v0

    .line 623
    :cond_39
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_d7

    .line 624
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_94

    .line 632
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_34

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad size for entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 634
    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 635
    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad CRC checksum for entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 626
    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 627
    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    :cond_d7
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 641
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 642
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    goto/16 :goto_34
.end method

.method private handleZip64Extra(Lorg/apache/tools/zip/ZipEntry;JZ)V
    .registers 13

    const/4 v6, 0x0

    const-wide v4, 0xffffffffL

    .line 1342
    if-eqz p4, :cond_43

    .line 1343
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    .line 1344
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1c

    .line 1345
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_44

    .line 1346
    :cond_1c
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1347
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1353
    :goto_34
    cmp-long v1, p2, v4

    if-ltz v1, :cond_40

    .line 1354
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v1, p2, p3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1356
    :cond_40
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 1358
    :cond_43
    return-void

    .line 1350
    :cond_44
    invoke-virtual {v0, v6}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1351
    invoke-virtual {v0, v6}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    goto :goto_34
.end method

.method private hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 3

    .line 1636
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isDeflatedToOutputStream(I)Z
    .registers 3

    .line 1593
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isTooLageForZip32(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 6

    const-wide v2, 0xffffffffL

    .line 674
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 675
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    .line 674
    :goto_16
    return v0

    .line 675
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isZip64Required(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z
    .registers 4

    .line 670
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, v0, :cond_a

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isTooLageForZip32(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private preClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 573
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_1d

    .line 577
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_15

    .line 581
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$200(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 582
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EMPTY:[B

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    .line 584
    :cond_14
    return-void

    .line 578
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rewriteSizesAndCrc(Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x4

    .line 687
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 689
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 690
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 691
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_32

    if-nez p1, :cond_e0

    .line 692
    :cond_32
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 693
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 699
    :goto_54
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 701
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 702
    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v6, v3

    .line 701
    const-wide/16 v8, 0xc

    add-long/2addr v4, v8

    add-long/2addr v4, v10

    add-long/2addr v4, v6

    add-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 705
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 706
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 708
    if-nez p1, :cond_da

    .line 711
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 712
    const/16 v2, 0xa

    invoke-static {v2}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 716
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    sget-object v3, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 718
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 722
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$500(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 723
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 727
    :cond_da
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 728
    return-void

    .line 695
    :cond_e0
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 696
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_54
.end method

.method private setDefaults(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 6

    .line 786
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 787
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 790
    :cond_c
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 793
    :cond_1d
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z
    .registers 7

    const-wide v2, 0xffffffffL

    .line 845
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, v0, :cond_2b

    .line 846
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 847
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 848
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2d

    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, v0, :cond_2d

    :cond_2b
    const/4 v0, 0x1

    .line 845
    :goto_2c
    return v0

    .line 848
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected static toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1413
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;

    move-result-object v0

    return-object v0
.end method

.method protected static toDosTime(J)[B
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1428
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v0

    return-object v0
.end method

.method private validateSizeInformation(Lorg/apache/tools/zip/Zip64Mode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const-wide v4, 0xffffffffL

    const-wide/16 v2, -0x1

    .line 806
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_46

    .line 807
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6f

    .line 812
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_67

    .line 816
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 819
    :cond_46
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_62

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 820
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_66

    :cond_62
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p1, v0, :cond_77

    .line 825
    :cond_66
    return-void

    .line 813
    :cond_67
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_6f
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_77
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 823
    new-instance v1, Lorg/apache/tools/zip/Zip64RequiredException;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/tools/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private versionNeededToExtract(IZ)I
    .registers 4

    .line 1583
    if-eqz p2, :cond_5

    .line 1584
    const/16 v0, 0x2d

    .line 1588
    :goto_4
    return v0

    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isDeflatedToOutputStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1589
    const/16 v0, 0x14

    goto :goto_4

    :cond_e
    const/16 v0, 0xa

    goto :goto_4
.end method

.method private writeCentralDirectoryInChunks()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 524
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v0, 0x11170

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 527
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 528
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 529
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_34

    .line 530
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 531
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v2

    :cond_34
    move v1, v0

    .line 534
    goto :goto_10

    .line 535
    :cond_36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 536
    return-void
.end method

.method private writeCounted([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    .line 953
    return-void
.end method

.method private writeCounted([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    .line 957
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 958
    return-void
.end method

.method private writeDeflated([BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2000

    .line 969
    if-lez p3, :cond_1c

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 970
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$314(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    .line 971
    if-gt p3, v4, :cond_1d

    .line 972
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 973
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    .line 988
    :cond_1c
    :goto_1c
    return-void

    .line 975
    :cond_1d
    div-int/lit16 v1, p3, 0x2000

    .line 976
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_30

    .line 977
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v3, v0, 0x2000

    add-int/2addr v3, p2

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 979
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 981
    :cond_30
    mul-int/lit16 v0, v1, 0x2000

    .line 982
    if-ge v0, p3, :cond_1c

    .line 983
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    add-int v2, p2, v0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 984
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_1c
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 3

    .line 906
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->canHandleEntryData(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_7

    .line 1002
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->finish()V

    .line 1004
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->destroy()V

    .line 1005
    return-void
.end method

.method public closeEntry()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->preClose()V

    .line 550
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->flushDeflater()V

    .line 552
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v6

    .line 553
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$100(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v2

    .line 554
    iget-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 555
    iget-object v7, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 557
    sub-long v2, v0, v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipOutputStream;->handleSizesAndCrc(JJLorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    .line 560
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry(Z)V

    .line 561
    return-void
.end method

.method protected final deflate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 1063
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 1064
    if-lez v0, :cond_11

    .line 1065
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    invoke-direct {p0, v1, v3, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    .line 1067
    :cond_11
    return-void
.end method

.method destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 1680
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1682
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    .line 1683
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1685
    :cond_10
    return-void
.end method

.method public finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_32

    .line 508
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_b

    .line 509
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 512
    :cond_b
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 513
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralDirectoryInChunks()V

    .line 514
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 515
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeZip64CentralDirectory()V

    .line 516
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralDirectoryEnd()V

    .line 517
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 518
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 519
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    .line 521
    return-void

    .line 505
    :cond_32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 1016
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1018
    :cond_9
    return-void
.end method

.method protected getBytes(Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1443
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 1444
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1445
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 1446
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 1448
    return-object v1

    .line 1449
    :catch_1e
    move-exception v0

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .registers 2

    .line 381
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_ae

    .line 741
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_b

    .line 742
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 745
    :cond_b
    new-instance v0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;-><init>(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 746
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setDefaults(Lorg/apache/tools/zip/ZipEntry;)V

    .line 750
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v0

    .line 751
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->validateSizeInformation(Lorg/apache/tools/zip/Zip64Mode;)V

    .line 753
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->shouldAddZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 755
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    move-result-object v3

    .line 759
    sget-object v0, Lorg/apache/tools/zip/ZipEightByteInteger;->ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 760
    sget-object v1, Lorg/apache/tools/zip/ZipEightByteInteger;->ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 761
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 762
    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_b6

    .line 764
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    move-object v0, v1

    move-object v2, v1

    .line 767
    :goto_79
    invoke-virtual {v3, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 768
    invoke-virtual {v3, v2}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 769
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 772
    :cond_88
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a4

    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_a4

    .line 773
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 776
    :cond_a4
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V

    .line 777
    return-void

    .line 738
    :cond_ae
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    move-object v2, v1

    goto :goto_79
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 858
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 859
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 434
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 395
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 396
    invoke-static {p1}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 397
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_15

    invoke-static {p1}, Lorg/apache/tools/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 400
    :cond_15
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .registers 2

    .line 445
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 446
    return-void
.end method

.method public setLevel(I)V
    .registers 4

    .line 872
    const/4 v0, -0x1

    if-lt p1, v0, :cond_12

    const/16 v0, 0x9

    if-gt p1, v0, :cond_12

    .line 877
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    if-ne v0, p1, :cond_c

    .line 882
    :goto_b
    return-void

    .line 880
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 881
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    goto :goto_b

    .line 874
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMethod(I)V
    .registers 2

    .line 893
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 894
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .registers 3

    .line 422
    if-eqz p1, :cond_e

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 423
    return-void

    .line 422
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 495
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 918
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 919
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    .line 920
    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_2c

    .line 935
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V

    .line 936
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$202(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z

    .line 937
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_28

    .line 938
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeDeflated([BII)V

    .line 942
    :goto_22
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 943
    return-void

    .line 940
    :cond_28
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    goto :goto_22

    .line 933
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeCentralDirectoryEnd()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0xffff

    const-wide v4, 0xffffffffL

    .line 1369
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1372
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1373
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1376
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1377
    if-le v0, v6, :cond_23

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v2, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v1, v2, :cond_7b

    .line 1382
    :cond_23
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v2, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v1, v2, :cond_83

    .line 1387
    :cond_2f
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    .line 1389
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1390
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1393
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1394
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1397
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1399
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1400
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    .line 1401
    return-void

    .line 1379
    :cond_7b
    new-instance v0, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v1, "archive contains more than 65535 entries."

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1383
    :cond_83
    new-instance v0, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B

    move-result-object v0

    .line 1220
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1221
    return-void
.end method

.method protected writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_d

    .line 1207
    :cond_c
    :goto_c
    return-void

    .line 1198
    :cond_d
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1199
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1200
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1201
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1202
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    goto :goto_c

    .line 1204
    :cond_3a
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1205
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    goto :goto_c
.end method

.method protected writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1079
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1081
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v2, v3, :cond_17

    .line 1082
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->addUnicodeExtraFields(Lorg/apache/tools/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V

    .line 1085
    :cond_17
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->createLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    .line 1086
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 1087
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const-wide/16 v4, 0xe

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$402(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    .line 1089
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1090
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    invoke-static {v0, v2, v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$102(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    .line 1091
    return-void
.end method

.method protected final writeOut([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    .line 1532
    return-void
.end method

.method protected final writeOut([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_8

    .line 1547
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1551
    :goto_7
    return-void

    .line 1549
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7
.end method

.method protected writeZip64CentralDirectory()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0xffffffffL

    const/16 v4, 0x2d

    .line 1461
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_e

    .line 1520
    :cond_d
    :goto_d
    return-void

    .line 1465
    :cond_e
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v0, :cond_2c

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_2c

    .line 1469
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1472
    :cond_2c
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-eqz v0, :cond_d

    .line 1476
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 1478
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1481
    const-wide/16 v2, 0x2c

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1493
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1494
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1497
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1498
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1501
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    .line 1502
    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1503
    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1506
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    invoke-static {v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1507
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1512
    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1515
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1517
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1519
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ONE:[B

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    goto :goto_d
.end method
