.class public Lorg/apache/tools/tar/TarOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TarOutputStream.java"


# static fields
.field private static final ASCII:Lorg/apache/tools/zip/ZipEncoding;

.field public static final BIGNUMBER_ERROR:I = 0x0

.field public static final BIGNUMBER_POSIX:I = 0x2

.field public static final BIGNUMBER_STAR:I = 0x1

.field public static final LONGFILE_ERROR:I = 0x0

.field public static final LONGFILE_GNU:I = 0x2

.field public static final LONGFILE_POSIX:I = 0x3

.field public static final LONGFILE_TRUNCATE:I = 0x1


# instance fields
.field private addPaxHeadersForNonAsciiNames:Z

.field protected assemBuf:[B

.field protected assemLen:I

.field private bigNumberMode:I

.field protected buffer:Lorg/apache/tools/tar/TarBuffer;

.field private closed:Z

.field protected currBytes:J

.field protected currName:Ljava/lang/String;

.field protected currSize:J

.field protected debug:Z

.field private final encoding:Lorg/apache/tools/zip/ZipEncoding;

.field private finished:Z

.field private haveUnclosedEntry:Z

.field protected longFileMode:I

.field protected oneBuf:[B

.field protected recordBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-string v0, "ASCII"

    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 103
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    .line 123
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 5

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    iput v1, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    .line 81
    iput v1, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    .line 83
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    .line 86
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    .line 89
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    .line 93
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 159
    invoke-static {p4}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 161
    new-instance v0, Lorg/apache/tools/tar/TarBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    iput-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    .line 162
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->debug:Z

    .line 163
    iput v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 164
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    .line 165
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->oneBuf:[B

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .registers 5

    .line 134
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5

    .line 113
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 114
    return-void
.end method

.method private addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_a

    cmp-long v0, p3, p5

    if-lez v0, :cond_11

    .line 570
    :cond_a
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_11
    return-void
.end method

.method private addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/tools/tar/TarEntry;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/tar/TarEntry;",
            ")V"
        }
    .end annotation

    .line 548
    const-string v3, "size"

    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v4

    const-wide v6, 0x1ffffffffL

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 550
    const-string v3, "gid"

    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getLongGroupId()J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 552
    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    const-string v3, "mtime"

    const-wide v6, 0x1ffffffffL

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 555
    const-string v3, "uid"

    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getLongUserId()J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 558
    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getDevMajor()I

    move-result v0

    int-to-long v4, v0

    const-string v3, "SCHILY.devmajor"

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 560
    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getDevMinor()I

    move-result v0

    int-to-long v4, v0

    const-string v3, "SCHILY.devminor"

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 563
    const-string v1, "mode"

    invoke-virtual {p2}, Lorg/apache/tools/tar/TarEntry;->getMode()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x1fffff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 564
    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJ)V
    .registers 14

    .line 589
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    .line 590
    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 9

    .line 597
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    cmp-long v0, p2, p4

    if-gtz v0, :cond_b

    .line 602
    return-void

    .line 598
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' is too big ( > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V
    .registers 14

    .line 593
    const-string v6, " Use STAR or POSIX extensions to overcome this limit"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    .line 594
    return-void
.end method

.method private failForBigNumbers(Lorg/apache/tools/tar/TarEntry;)V
    .registers 14

    const-wide v4, 0x1ffffffffL

    const-wide/32 v10, 0x1fffff

    .line 575
    const-string v1, "entry size"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 576
    const-string v7, "group id"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongGroupId()J

    move-result-wide v8

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V

    .line 577
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-string v1, "last modification time"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 580
    const-string v7, "user id"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongUserId()J

    move-result-wide v8

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 581
    const-string v7, "mode"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getMode()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 582
    const-string v7, "major device number"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getDevMajor()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 584
    const-string v7, "minor device number"

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getDevMinor()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 586
    return-void
.end method

.method private handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/tar/TarEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 630
    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v2, p2}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 631
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 632
    if-lt v3, v6, :cond_45

    .line 634
    iget v4, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    .line 635
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :goto_1d
    return v0

    .line 637
    :cond_1e
    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    .line 640
    new-instance v0, Lorg/apache/tools/tar/TarEntry;

    const-string v4, "././@LongLink"

    invoke-direct {v0, v4, p5}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;B)V

    .line 643
    add-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    .line 644
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarOutputStream;->transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V

    .line 645
    invoke-virtual {p0, v0}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 646
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 647
    invoke-virtual {p0, v1}, Lorg/apache/tools/tar/TarOutputStream;->write(I)V

    .line 648
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V

    :cond_45
    move v0, v1

    .line 655
    goto :goto_1d

    .line 649
    :cond_47
    if-eq v4, v0, :cond_45

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is too long ( > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1e

    aget-char v4, v2, v0

    .line 528
    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 529
    if-eqz v4, :cond_1b

    .line 530
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 533
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V
    .registers 11

    const-wide/16 v6, 0x0

    .line 659
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 661
    cmp-long v1, v2, v6

    if-ltz v1, :cond_1a

    const-wide v4, 0x1ffffffffL

    cmp-long v1, v2, v4

    if-lez v1, :cond_1f

    .line 662
    :cond_1a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 664
    :cond_1f
    invoke-virtual {p2, v0}, Lorg/apache/tools/tar/TarEntry;->setModTime(Ljava/util/Date;)V

    .line 665
    return-void
.end method

.method private writeEOFRecord()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 543
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 544
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_7

    .line 252
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->finish()V

    .line 255
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    if-nez v0, :cond_18

    .line 256
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->close()V

    .line 257
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    .line 260
    :cond_18
    return-void
.end method

.method public closeEntry()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 344
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_6d

    .line 347
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_65

    .line 350
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    if-lez v0, :cond_28

    .line 351
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    :goto_f
    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 352
    aput-byte v4, v1, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 355
    :cond_19
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 357
    iget-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 358
    iput v4, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 361
    :cond_28
    iget-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_33

    .line 367
    iput-boolean v4, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    .line 368
    return-void

    .line 362
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' closed at \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' before the \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' bytes specified in the header were written"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_6d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_1f

    .line 234
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    if-nez v0, :cond_17

    .line 237
    invoke-direct {p0}, Lorg/apache/tools/tar/TarOutputStream;->writeEOFRecord()V

    .line 238
    invoke-direct {p0}, Lorg/apache/tools/tar/TarOutputStream;->writeEOFRecord()V

    .line 239
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->flushBlock()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    .line 241
    return-void

    .line 235
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordSize()I
    .registers 2

    .line 268
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public putNextEntry(Lorg/apache/tools/tar/TarEntry;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_b1

    .line 287
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v4, "path"

    const/16 v5, 0x4c

    const-string v6, "file name"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v11

    .line 292
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLinkName()Ljava/lang/String;

    move-result-object v6

    .line 293
    const/4 v1, 0x0

    if-eqz v6, :cond_a1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 294
    const-string v8, "linkpath"

    const/16 v9, 0x4b

    const-string v10, "link name"

    move-object v4, p0

    move-object v5, p1

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lorg/apache/tools/tar/TarOutputStream;->handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/4 v0, 0x1

    .line 297
    :goto_36
    iget v4, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a3

    .line 298
    invoke-direct {p0, v3, p1}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/tools/tar/TarEntry;)V

    .line 303
    :cond_3e
    :goto_3e
    iget-boolean v4, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v4, :cond_51

    if-nez v11, :cond_51

    sget-object v4, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    .line 304
    invoke-interface {v4, v2}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 305
    const-string v4, "path"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_51
    iget-boolean v4, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v4, :cond_70

    if-nez v0, :cond_70

    .line 309
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isLink()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_63
    sget-object v0, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    .line 310
    invoke-interface {v0, v6}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 311
    const-string v0, "linkpath"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_70
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 315
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/tools/tar/TarOutputStream;->writePaxHeaders(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    :cond_79
    iget-object v3, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    iget-object v4, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_b9

    const/4 v0, 0x1

    :goto_83
    invoke-virtual {p1, v3, v4, v0}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V

    .line 320
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 324
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    .line 329
    :goto_9b
    iput-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    .line 331
    return-void

    .line 294
    :cond_a1
    const/4 v0, 0x0

    goto :goto_36

    .line 299
    :cond_a3
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    .line 300
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumbers(Lorg/apache/tools/tar/TarEntry;)V

    goto :goto_3e

    .line 327
    :cond_aa
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    goto :goto_9b

    .line 285
    :cond_b1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    move v0, v1

    goto :goto_83
.end method

.method public setAddPaxHeadersForNonAsciiNames(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 200
    return-void
.end method

.method public setBigNumberMode(I)V
    .registers 2

    .line 190
    iput p1, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    .line 191
    return-void
.end method

.method public setBufferDebug(Z)V
    .registers 3

    .line 217
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/tools/tar/TarBuffer;->setDebug(Z)V

    .line 218
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 208
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarOutputStream;->debug:Z

    .line 209
    return-void
.end method

.method public setLongFileMode(I)V
    .registers 2

    .line 178
    iput p1, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    .line 179
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

    .line 380
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->oneBuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 382
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 383
    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 396
    return-void
.end method

.method public write([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 414
    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6a

    .line 429
    iget v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    if-lez v1, :cond_38

    .line 430
    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    add-int v3, v1, p3

    array-length v4, v2

    if-lt v3, v4, :cond_4c

    .line 431
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 433
    iget-object v4, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    invoke-static {v4, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v1, v2}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 439
    iget-wide v4, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 440
    add-int/2addr p2, v3

    .line 441
    sub-int/2addr p3, v3

    .line 442
    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 458
    :cond_38
    :goto_38
    if-lez p3, :cond_4b

    .line 459
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v0, v0

    if-ge p3, v0, :cond_59

    .line 460
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    iget v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 476
    :cond_4b
    return-void

    .line 444
    :cond_4c
    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    add-int/2addr p2, p3

    .line 448
    iget v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    move p3, v0

    .line 449
    goto :goto_38

    .line 468
    :cond_59
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([BI)V

    .line 470
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v0, v0

    .line 472
    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 473
    sub-int/2addr p3, v0

    .line 474
    add-int/2addr p2, v0

    .line 475
    goto :goto_38

    .line 415
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to write \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' bytes exceeds size in header of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' bytes for entry \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writePaxHeaders(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/tar/TarEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./PaxHeaders.X/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/tools/tar/TarOutputStream;->stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_24

    .line 486
    const/16 v1, 0x63

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_24
    :goto_24
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 493
    :cond_37
    new-instance v6, Lorg/apache/tools/tar/TarEntry;

    const/16 v1, 0x78

    invoke-direct {v6, v0, v1}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;B)V

    .line 495
    invoke-direct {p0, p1, v6}, Lorg/apache/tools/tar/TarOutputStream;->transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V

    .line 497
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 498
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 500
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    move-object v5, v4

    .line 506
    :goto_9d
    if-eq v2, v3, :cond_ca

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 514
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v4, v2

    move v2, v3

    move v3, v4

    goto :goto_9d

    .line 516
    :cond_ca
    invoke-virtual {v7, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_4e

    .line 518
    :cond_ce
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 519
    array-length v1, v0

    int-to-long v2, v1

    invoke-virtual {v6, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    .line 520
    invoke-virtual {p0, v6}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 521
    invoke-virtual {p0, v0}, Lorg/apache/tools/tar/TarOutputStream;->write([B)V

    .line 522
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V

    .line 523
    return-void
.end method
