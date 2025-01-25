.class public Lorg/apache/tools/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 48
    new-instance v0, Lorg/apache/tools/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/tools/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static computeCheckSum([B)J
    .registers 7

    .line 557
    const-wide/16 v0, 0x0

    .line 559
    array-length v3, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_f

    aget-byte v4, p0, v2

    .line 560
    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 563
    :cond_f
    return-wide v0
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .registers 10

    .line 242
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 244
    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "Invalid byte %s at offset %d in \'%s\' len=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .registers 10

    const/4 v0, 0x0

    .line 514
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 516
    array-length v2, v1

    .line 517
    add-int v3, p3, p4

    sub-int/2addr v3, v2

    .line 518
    invoke-static {v1, v0, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    if-eqz p5, :cond_14

    const/16 v0, 0xff

    :cond_14
    int-to-byte v1, v0

    .line 520
    add-int/lit8 v0, p3, 0x1

    :goto_17
    if-ge v0, v3, :cond_1e

    .line 521
    aput-byte v1, p2, v0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 523
    :cond_1e
    return-void
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .registers 9

    .line 541
    add-int/lit8 v0, p4, -0x2

    .line 542
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 544
    add-int v1, v0, p3

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 545
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 547
    add-int v0, p3, p4

    return v0
.end method

.method private static formatLongBinary(J[BIIZ)V
    .registers 14

    const-wide/16 v6, 0x1

    .line 492
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v2, v0, 0x8

    .line 493
    shl-long v4, v6, v2

    .line 494
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 495
    cmp-long v3, v0, v4

    if-gez v3, :cond_2d

    .line 499
    if-eqz p5, :cond_1b

    .line 500
    const/16 v3, 0xff

    shl-int v2, v3, v2

    int-to-long v2, v2

    .line 502
    sub-long/2addr v4, v6

    xor-long/2addr v0, v4

    or-long/2addr v0, v2

    add-long/2addr v0, v6

    .line 504
    :cond_1b
    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    move-wide v4, v0

    :goto_20
    if-lt v2, p3, :cond_51

    .line 505
    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 506
    const/16 v0, 0x8

    shr-long/2addr v4, v0

    .line 504
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_20

    .line 496
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " is too large for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " byte field."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_51
    return-void
.end method

.method public static formatLongOctalBytes(J[BII)I
    .registers 7

    .line 445
    add-int/lit8 v0, p4, -0x1

    .line 447
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 448
    add-int/2addr v0, p3

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 450
    add-int v0, p3, p4

    return v0
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .registers 11

    .line 473
    const/16 v0, 0x8

    if-ne p4, v0, :cond_19

    const-wide/32 v0, 0x1fffff

    .line 475
    :goto_7
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1f

    const/4 v5, 0x1

    .line 476
    :goto_e
    if-nez v5, :cond_21

    cmp-long v0, p0, v0

    if-gtz v0, :cond_21

    .line 477
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v0

    .line 486
    :goto_18
    return v0

    .line 473
    :cond_19
    const-wide v0, 0x1ffffffffL

    goto :goto_7

    .line 475
    :cond_1f
    const/4 v5, 0x0

    goto :goto_e

    .line 480
    :cond_21
    const/16 v0, 0x9

    if-ge p4, v0, :cond_2c

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 481
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    :cond_2c
    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 483
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    .line 485
    if-eqz v5, :cond_3d

    const/16 v0, 0xff

    :goto_37
    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 486
    add-int v0, p3, p4

    goto :goto_18

    .line 485
    :cond_3d
    const/16 v0, 0x80

    goto :goto_37
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .registers 6

    .line 320
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 323
    :goto_6
    return v0

    .line 321
    :catch_7
    move-exception v0

    .line 323
    :try_start_8
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v0

    goto :goto_6

    .line 325
    :catch_f
    move-exception v0

    .line 327
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 354
    invoke-interface {p4, p0}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 355
    :goto_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v2, p3, :cond_1c

    if-lez v1, :cond_1c

    .line 356
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_9

    .line 358
    :cond_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 359
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 362
    :goto_31
    if-ge v0, p3, :cond_3a

    .line 363
    add-int v1, p2, v0

    aput-byte v3, p1, v1

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 366
    :cond_3a
    add-int v0, p2, p3

    return v0
.end method

.method public static formatOctalBytes(J[BII)I
    .registers 9

    .line 420
    add-int/lit8 v0, p4, -0x2

    .line 421
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 423
    add-int v1, v0, p3

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 424
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 426
    add-int v0, p3, p4

    return v0
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .registers 15

    const/16 v9, 0x30

    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    .line 380
    add-int/lit8 v1, p4, -0x1

    .line 382
    cmp-long v0, p0, v6

    if-nez v0, :cond_19

    .line 383
    add-int/lit8 v0, v1, -0x1

    add-int/2addr v1, p3

    aput-byte v9, p2, v1

    .line 399
    :cond_10
    :goto_10
    if-ltz v0, :cond_58

    .line 400
    add-int v1, p3, v0

    aput-byte v9, p2, v1

    .line 399
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_19
    move-wide v2, p0

    move v0, v1

    .line 386
    :goto_1b
    if-ltz v0, :cond_31

    cmp-long v1, v2, v6

    if-eqz v1, :cond_31

    .line 388
    add-int v1, p3, v0

    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    .line 389
    ushr-long/2addr v2, v8

    .line 386
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 392
    :cond_31
    cmp-long v1, v2, v6

    if-eqz v1, :cond_10

    .line 393
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%d=%s will not fit in octal number buffer of length %d"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_58
    return-void
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .registers 9

    const/4 v4, 0x0

    .line 203
    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [B

    .line 204
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 206
    if-eqz p3, :cond_21

    .line 208
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    .line 210
    :cond_21
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_31

    .line 215
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    if-eqz p3, :cond_30

    neg-long v0, v0

    :cond_30
    return-wide v0

    .line 211
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At offset %d, %d byte binary number exceeds maximum signed long value"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseBinaryLong([BIIZ)J
    .registers 14

    const-wide/16 v8, 0x1

    const/4 v2, 0x1

    .line 182
    const/16 v0, 0x9

    if-ge p2, v0, :cond_32

    .line 187
    const-wide/16 v0, 0x0

    .line 188
    :goto_9
    if-ge v2, p2, :cond_19

    .line 189
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 191
    :cond_19
    if-eqz p3, :cond_2e

    .line 193
    add-int/lit8 v2, p2, -0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-long/2addr v0, v8

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    const-wide/high16 v6, 0x4020000000000000L  # 8.0

    mul-double/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v2, v8

    xor-long/2addr v0, v2

    .line 196
    :cond_2e
    if-eqz p3, :cond_31

    neg-long v0, v0

    :cond_31
    return-wide v0

    .line 183
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At offset %d, %d byte binary number exceeds maximum signed long value"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseBoolean([BI)Z
    .registers 4

    const/4 v0, 0x1

    .line 229
    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static parseName([BII)Ljava/lang/String;
    .registers 5

    .line 261
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 264
    :goto_6
    return-object v0

    .line 262
    :catch_7
    move-exception v0

    .line 264
    :try_start_8
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_6

    .line 265
    :catch_f
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    :goto_0
    if-lez p2, :cond_a

    .line 291
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_17

    .line 295
    :cond_a
    if-lez p2, :cond_1a

    .line 296
    new-array v0, p2, [B

    .line 297
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-interface {p3, v0}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_16
    return-object v0

    .line 290
    :cond_17
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 300
    :cond_1a
    const-string v0, ""

    goto :goto_16
.end method

.method public static parseOctal([BII)J
    .registers 11

    const-wide/16 v0, 0x0

    const/16 v5, 0x20

    .line 104
    .line 105
    add-int v4, p1, p2

    .line 108
    const/4 v2, 0x2

    if-lt p2, v2, :cond_47

    .line 112
    aget-byte v2, p0, p1

    if-nez v2, :cond_63

    .line 147
    :cond_d
    return-wide v0

    .line 117
    :goto_e
    if-ge v2, v4, :cond_17

    .line 118
    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_17

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 129
    :cond_17
    add-int/lit8 v3, v4, -0x1

    aget-byte v3, p0, v3

    .line 130
    :goto_1b
    if-ge v2, v4, :cond_28

    if-eqz v3, :cond_21

    if-ne v3, v5, :cond_28

    .line 131
    :cond_21
    add-int/lit8 v4, v4, -0x1

    .line 132
    add-int/lit8 v3, v4, -0x1

    aget-byte v3, p0, v3

    goto :goto_1b

    .line 135
    :cond_28
    :goto_28
    if-ge v2, v4, :cond_d

    .line 136
    aget-byte v3, p0, v2

    .line 138
    const/16 v5, 0x30

    if-lt v3, v5, :cond_3d

    const/16 v5, 0x37

    if-gt v3, v5, :cond_3d

    .line 142
    const/4 v5, 0x3

    shl-long/2addr v0, v5

    add-int/lit8 v3, v3, -0x30

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_28

    .line 139
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v2, v3}, Lorg/apache/tools/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be at least 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    move v2, p1

    goto :goto_e
.end method

.method public static parseOctalOrBinary([BII)J
    .registers 5

    .line 169
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b

    .line 170
    invoke-static {p0, p1, p2}, Lorg/apache/tools/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v0

    .line 176
    :goto_a
    return-wide v0

    .line 172
    :cond_b
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 173
    :goto_11
    const/16 v1, 0x9

    if-ge p2, v1, :cond_1c

    .line 174
    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide v0

    goto :goto_a

    .line 172
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    .line 176
    :cond_1c
    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide v0

    goto :goto_a
.end method
