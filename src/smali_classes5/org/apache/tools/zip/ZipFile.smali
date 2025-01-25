.class public Lorg/apache/tools/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/tools/zip/ZipFile$Entry;,
        Lorg/apache/tools/zip/ZipFile$NameAndComment;,
        Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field private static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private volatile closed:Z

.field private final encoding:Ljava/lang/String;

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

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 443
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    .line 444
    invoke-static {v0}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    .line 443
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 138
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    .line 140
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    .line 1016
    sget-object v0, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 211
    invoke-static {p2}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 212
    iput-boolean p3, p0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 213
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 214
    :try_start_46
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    .line 230
    return-void

    .line 221
    :catchall_51
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    .line 224
    :try_start_55
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 229
    :goto_5a
    throw v0

    .line 225
    :catch_5b
    move-exception v1

    goto :goto_5a
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method static synthetic access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/tools/zip/ZipFile;)V
    .registers 2

    .line 261
    if-eqz p0, :cond_5

    .line 263
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 268
    :cond_5
    :goto_5
    return-void

    .line 264
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic lambda$new$1(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipEntry;)I
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1017
    if-ne p0, p1, :cond_9

    .line 1031
    :goto_8
    return v1

    .line 1021
    :cond_9
    instance-of v4, p0, Lorg/apache/tools/zip/ZipFile$Entry;

    if-eqz v4, :cond_19

    check-cast p0, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 1022
    :goto_f
    instance-of v4, p1, Lorg/apache/tools/zip/ZipFile$Entry;

    if-eqz v4, :cond_3f

    check-cast p1, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 1023
    :goto_15
    if-nez p0, :cond_1b

    move v1, v3

    .line 1024
    goto :goto_8

    :cond_19
    move-object p0, v0

    .line 1021
    goto :goto_f

    .line 1026
    :cond_1b
    if-nez p1, :cond_1f

    move v1, v2

    .line 1027
    goto :goto_8

    .line 1029
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    .line 1030
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1031
    cmp-long v0, v4, v8

    if-nez v0, :cond_37

    move v0, v1

    :goto_35
    move v1, v0

    goto :goto_8

    :cond_37
    cmp-long v0, v4, v8

    if-gez v0, :cond_3d

    move v0, v2

    goto :goto_35

    :cond_3d
    move v0, v3

    goto :goto_35

    :cond_3f
    move-object p1, v0

    goto :goto_15
.end method

.method static synthetic lambda$resolveLocalFileHeaderData$0(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 2

    .line 915
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 461
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory()V

    .line 463
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 464
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v0}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    .line 466
    sget-wide v4, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_21

    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-nez v3, :cond_38

    .line 471
    :cond_21
    :goto_21
    sget-wide v4, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_40

    .line 472
    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 473
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 474
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v0}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    goto :goto_21

    .line 467
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_40
    return-object v2
.end method

.method private positionAtCentralDirectory()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x14

    const/4 v0, 0x0

    .line 725
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 727
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 728
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_39

    const/4 v1, 0x1

    .line 729
    :goto_11
    if-eqz v1, :cond_2c

    .line 730
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 731
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 732
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 734
    :cond_2c
    if-nez v0, :cond_3b

    .line 736
    if-eqz v1, :cond_35

    .line 737
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 739
    :cond_35
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory32()V

    .line 743
    :goto_38
    return-void

    :cond_39
    move v1, v0

    .line 728
    goto :goto_11

    .line 741
    :cond_3b
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory64()V

    goto :goto_38
.end method

.method private positionAtCentralDirectory32()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 776
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 777
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 778
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 755
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 756
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 757
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 758
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 762
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 764
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 765
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 766
    return-void

    .line 759
    :cond_3f
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    const-wide/16 v2, 0x16

    const-wide/32 v4, 0x10015

    sget-object v6, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    .line 788
    if-eqz v0, :cond_f

    .line 791
    return-void

    .line 789
    :cond_f
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    .line 491
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 492
    new-instance v1, Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    invoke-direct {v1, v12}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/tools/zip/ZipFile$1;)V

    .line 494
    new-instance v2, Lorg/apache/tools/zip/ZipFile$Entry;

    invoke-direct {v2, v1}, Lorg/apache/tools/zip/ZipFile$Entry;-><init>(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)V

    .line 496
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v0

    .line 497
    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v2, v0}, Lorg/apache/tools/zip/ZipFile$Entry;->setPlatform(I)V

    .line 500
    const/4 v0, 0x4

    .line 502
    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v3, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Lorg/apache/tools/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v4

    .line 505
    if-eqz v4, :cond_120

    sget-object v0, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 506
    :goto_2f
    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V

    .line 508
    const/4 v3, 0x6

    .line 510
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setMethod(I)V

    .line 511
    const/16 v3, 0x8

    .line 513
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/tools/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v6

    .line 514
    invoke-virtual {v2, v6, v7}, Lorg/apache/tools/zip/ZipFile$Entry;->setTime(J)V

    .line 515
    const/16 v3, 0xc

    .line 517
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/tools/zip/ZipFile$Entry;->setCrc(J)V

    .line 518
    const/16 v3, 0x10

    .line 520
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/tools/zip/ZipFile$Entry;->setCompressedSize(J)V

    .line 521
    const/16 v3, 0x14

    .line 523
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/tools/zip/ZipFile$Entry;->setSize(J)V

    .line 524
    const/16 v3, 0x18

    .line 526
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 527
    const/16 v5, 0x1a

    .line 529
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v6, v5}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v5

    .line 530
    const/16 v6, 0x1c

    .line 532
    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v7, v6}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v6

    .line 533
    const/16 v7, 0x1e

    .line 535
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v8, v7}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 536
    const/16 v8, 0x20

    .line 538
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v8}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/apache/tools/zip/ZipFile$Entry;->setInternalAttributes(I)V

    .line 539
    const/16 v8, 0x22

    .line 541
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v8}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/apache/tools/zip/ZipFile$Entry;->setExternalAttributes(J)V

    .line 542
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_130

    .line 547
    new-array v3, v3, [B

    .line 548
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 549
    invoke-interface {v0, v3}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 552
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    const/16 v9, 0x26

    invoke-static {v8, v9}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 554
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v5

    cmp-long v8, v8, v10

    if-ltz v8, :cond_12a

    .line 559
    new-array v5, v5, [B

    .line 560
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 561
    invoke-virtual {v2, v5}, Lorg/apache/tools/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V

    .line 563
    invoke-direct {p0, v2, v1, v7}, Lorg/apache/tools/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$OffsetEntry;I)V

    .line 565
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v6

    cmp-long v1, v8, v10

    if-ltz v1, :cond_124

    .line 568
    new-array v1, v6, [B

    .line 569
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 570
    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    .line 572
    if-nez v4, :cond_11f

    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz v0, :cond_11f

    .line 573
    new-instance v0, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    invoke-direct {v0, v3, v1, v12}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/tools/zip/ZipFile$1;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_11f
    return-void

    .line 505
    :cond_120
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    goto/16 :goto_2f

    .line 566
    :cond_124
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 557
    :cond_12a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 545
    :cond_130
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 876
    check-cast v0, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 877
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v4

    .line 878
    invoke-static {v4}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    .line 879
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x1a

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 880
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 881
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v2

    .line 882
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 883
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v5

    move v1, v2

    .line 885
    :goto_3f
    if-lez v1, :cond_53

    .line 886
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    .line 887
    if-lez v8, :cond_4b

    .line 891
    sub-int/2addr v1, v8

    .line 892
    goto :goto_3f

    .line 888
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to skip file name in local file header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_53
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v5

    cmp-long v1, v8, v10

    if-ltz v1, :cond_c8

    .line 896
    new-array v1, v5, [B

    .line 897
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 899
    :try_start_6c
    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipFile$Entry;->setExtra([B)V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6f} :catch_a9

    .line 904
    const-wide/16 v8, 0x1a

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v4, v6, v7}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 908
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 909
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    .line 910
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v2

    .line 911
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v1

    .line 910
    invoke-static {v0, v2, v1}, Lorg/apache/tools/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;[B[B)V

    .line 914
    :cond_96
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 915
    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    sget-object v4, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda1;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 916
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 900
    :catch_a9
    move-exception v1

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid extra data in entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/zip/ZipException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 903
    throw v0

    .line 894
    :cond_c8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 918
    :cond_ce
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$OffsetEntry;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v8, 0xffffffffL

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 593
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    .line 595
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    .line 596
    if-eqz v0, :cond_5b

    .line 597
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_5c

    move v1, v2

    .line 598
    :goto_1a
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_5e

    move v4, v2

    .line 599
    :goto_23
    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_60

    move v5, v2

    .line 601
    :goto_2c
    const v6, 0xffff

    if-ne p3, v6, :cond_62

    :goto_31
    invoke-virtual {v0, v1, v4, v5, v2}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 606
    if-eqz v1, :cond_64

    .line 607
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 612
    :cond_41
    :goto_41
    if-eqz v4, :cond_73

    .line 613
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 618
    :cond_4e
    :goto_4e
    if-eqz v5, :cond_5b

    .line 619
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 623
    :cond_5b
    return-void

    :cond_5c
    move v1, v3

    .line 597
    goto :goto_1a

    :cond_5e
    move v4, v3

    .line 598
    goto :goto_23

    :cond_60
    move v5, v3

    .line 599
    goto :goto_2c

    :cond_62
    move v2, v3

    .line 601
    goto :goto_31

    .line 608
    :cond_64
    if-eqz v4, :cond_41

    .line 609
    new-instance v2, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    goto :goto_41

    .line 614
    :cond_73
    if-eqz v1, :cond_4e

    .line 615
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    goto :goto_4e
.end method

.method private skipBytes(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    const/4 v0, 0x0

    .line 839
    :goto_1
    if-ge v0, p1, :cond_15

    .line 840
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    .line 841
    if-lez v1, :cond_f

    .line 844
    add-int/2addr v0, v1

    .line 845
    goto :goto_1

    .line 842
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 846
    :cond_15
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 926
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 927
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 801
    .line 802
    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 803
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 804
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 805
    cmp-long v6, v2, v6

    if-ltz v6, :cond_2c

    .line 806
    :goto_1a
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2c

    .line 807
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 808
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    .line 809
    const/4 v7, -0x1

    if-ne v6, v7, :cond_34

    .line 827
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_33

    .line 828
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 830
    :cond_33
    return v0

    .line 812
    :cond_34
    aget-byte v7, p5, v0

    if-ne v6, v7, :cond_5a

    .line 813
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    .line 814
    aget-byte v7, p5, v1

    if-ne v6, v7, :cond_5a

    .line 815
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    .line 816
    const/4 v7, 0x2

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_5a

    .line 817
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    .line 818
    const/4 v7, 0x3

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_5a

    move v0, v1

    .line 820
    goto :goto_2c

    .line 806
    :cond_5a
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_1a
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 3

    .line 356
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

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    .line 252
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 253
    return-void
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    if-nez v0, :cond_21

    .line 412
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 412
    const-string v3, "Cleaning up unclosed %s for archive %s%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 414
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_25

    .line 417
    :cond_21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 418
    return-void

    .line 417
    :catchall_25
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 418
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 325
    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    .line 326
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public getEntries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 340
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 341
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 343
    :goto_24
    return-object v0

    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_24
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 294
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 293
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;
    .registers 3

    .line 310
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 311
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 369
    instance-of v0, p1, Lorg/apache/tools/zip/ZipFile$Entry;

    if-nez v0, :cond_6

    .line 370
    const/4 v0, 0x0

    .line 386
    :goto_5
    :sswitch_5
    return-object v0

    :cond_6
    move-object v0, p1

    .line 373
    check-cast v0, Lorg/apache/tools/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 374
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V

    .line 375
    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 378
    new-instance v0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/tools/zip/ZipFile;JJ)V

    .line 380
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_50

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unsupported compression method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :sswitch_40
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 385
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 386
    new-instance v1, Lorg/apache/tools/zip/ZipFile$1;

    invoke-direct {v1, p0, v0, v2, v2}, Lorg/apache/tools/zip/ZipFile$1;-><init>(Lorg/apache/tools/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_5

    .line 380
    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_40
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    return-object v0
.end method
