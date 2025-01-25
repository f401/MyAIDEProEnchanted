.class public Lsun/misc/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field private static b5p:[Lsun/misc/FDBigInt; = null

.field private static final big10pow:[D

.field static final bigDecimalExponent:I = 0x144

.field static final expBias:I = 0x3ff

.field static final expMask:J = 0x7ff0000000000000L

.field static final expOne:J = 0x3ff0000000000000L

.field static final expShift:I = 0x34

.field static final fractHOB:J = 0x10000000000000L

.field static final fractMask:J = 0xfffffffffffffL

.field private static hexFloatPattern:Ljava/util/regex/Pattern; = null

.field static final highbit:J = -0x8000000000000000L

.field static final highbyte:J = -0x100000000000000L

.field private static final infinity:[C

.field static final intDecimalDigits:I = 0x9

.field private static final long5pow:[J

.field static final lowbytes:J = 0xffffffffffffffL

.field static final maxDecimalDigits:I = 0xf

.field static final maxDecimalExponent:I = 0x134

.field static final maxSmallBinExp:I = 0x3e

.field private static final maxSmallTen:I

.field static final minDecimalExponent:I = -0x144

.field static final minSmallBinExp:I = -0x15

.field private static final n5bits:[I

.field private static final notANumber:[C

.field private static perThreadBuffer:Ljava/lang/ThreadLocal; = null

.field static final signMask:J = -0x8000000000000000L

.field static final singleExpBias:I = 0x7f

.field static final singleExpMask:I = 0x7f800000

.field static final singleExpShift:I = 0x17

.field static final singleFractHOB:I = 0x800000

.field static final singleFractMask:I = 0x7fffff

.field static final singleMaxDecimalDigits:I = 0x7

.field static final singleMaxDecimalExponent:I = 0x26

.field private static final singleMaxSmallTen:I

.field static final singleMinDecimalExponent:I = -0x2d

.field static final singleSignMask:I = -0x80000000

.field private static final singleSmall10pow:[F

.field private static final small10pow:[D

.field private static final small5pow:[I

.field private static final tiny10pow:[D

.field private static final zero:[C


# instance fields
.field bigIntExp:I

.field bigIntNBits:I

.field decExponent:I

.field digits:[C

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field roundDir:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x5

    .line 33
    new-instance v0, Lsun/misc/FloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    .line 1759
    const/16 v0, 0x17

    new-array v0, v0, [D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    aput-wide v2, v0, v7

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    aput-wide v2, v0, v8

    const/4 v1, 0x2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    aput-wide v2, v0, v1

    const-wide v2, 0x408f400000000000L  # 1000.0

    aput-wide v2, v0, v6

    const/4 v1, 0x4

    const-wide v2, 0x40c3880000000000L  # 10000.0

    aput-wide v2, v0, v1

    const-wide v2, 0x40f86a0000000000L  # 100000.0

    aput-wide v2, v0, v4

    const/4 v1, 0x6

    const-wide v2, 0x412e848000000000L  # 1000000.0

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x416312d000000000L  # 1.0E7

    aput-wide v2, v0, v1

    const-wide v2, 0x4197d78400000000L  # 1.0E8

    aput-wide v2, v0, v5

    const/16 v1, 0x9

    const-wide v2, 0x41cdcd6500000000L  # 1.0E9

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x4202a05f20000000L  # 1.0E10

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0x42374876e8000000L  # 1.0E11

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, 0x426d1a94a2000000L  # 1.0E12

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, 0x42a2309ce5400000L  # 1.0E13

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, 0x42d6bcc41e900000L  # 1.0E14

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, 0x430c6bf526340000L  # 1.0E15

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, 0x4341c37937e08000L  # 1.0E16

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide v2, 0x4376345785d8a000L  # 1.0E17

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide v2, 0x43abc16d674ec800L  # 1.0E18

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide v2, 0x43e158e460913d00L  # 1.0E19

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide v2, 0x4415af1d78b58c40L  # 1.0E20

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide v2, 0x444b1ae4d6e2ef50L  # 1.0E21

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide v2, 0x4480f0cf064dd592L  # 1.0E22

    aput-wide v2, v0, v1

    sput-object v0, Lsun/misc/FloatingDecimal;->small10pow:[D

    .line 1768
    const/16 v1, 0xb

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v1, v7

    const/high16 v2, 0x41200000  # 10.0f

    aput v2, v1, v8

    const/4 v2, 0x2

    const/high16 v3, 0x42c80000  # 100.0f

    aput v3, v1, v2

    const/high16 v2, 0x447a0000  # 1000.0f

    aput v2, v1, v6

    const/4 v2, 0x4

    const v3, 0x461c4000  # 10000.0f

    aput v3, v1, v2

    const v2, 0x47c35000  # 100000.0f

    aput v2, v1, v4

    const/4 v2, 0x6

    const v3, 0x49742400  # 1000000.0f

    aput v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x4b189680  # 1.0E7f

    aput v3, v1, v2

    const v2, 0x4cbebc20  # 1.0E8f

    aput v2, v1, v5

    const/16 v2, 0x9

    const v3, 0x4e6e6b28  # 1.0E9f

    aput v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x501502f9  # 1.0E10f

    aput v3, v1, v2

    sput-object v1, Lsun/misc/FloatingDecimal;->singleSmall10pow:[F

    .line 1774
    new-array v2, v4, [D

    fill-array-data v2, :array_15e

    sput-object v2, Lsun/misc/FloatingDecimal;->big10pow:[D

    .line 1776
    new-array v2, v4, [D

    fill-array-data v2, :array_176

    sput-object v2, Lsun/misc/FloatingDecimal;->tiny10pow:[D

    .line 1779
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal;->maxSmallTen:I

    .line 1780
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal;->singleMaxSmallTen:I

    .line 1782
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_18e

    sput-object v0, Lsun/misc/FloatingDecimal;->small5pow:[I

    .line 1800
    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_1ae

    sput-object v0, Lsun/misc/FloatingDecimal;->long5pow:[J

    .line 1831
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_21e

    sput-object v0, Lsun/misc/FloatingDecimal;->n5bits:[I

    .line 1861
    new-array v0, v5, [C

    fill-array-data v0, :array_258

    sput-object v0, Lsun/misc/FloatingDecimal;->infinity:[C

    .line 1862
    new-array v0, v6, [C

    fill-array-data v0, :array_264

    sput-object v0, Lsun/misc/FloatingDecimal;->notANumber:[C

    .line 1863
    new-array v0, v5, [C

    fill-array-data v0, :array_26c

    sput-object v0, Lsun/misc/FloatingDecimal;->zero:[C

    .line 1870
    const-string v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/misc/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    return-void

    .line 1774
    nop

    :array_15e
    .array-data 8
        0x4341c37937e08000L  # 1.0E16
        0x4693b8b5b5056e17L  # 1.0E32
        0x4d384f03e93ff9f5L  # 1.0E64
        0x5a827748f9301d32L  # 1.0E128
        0x75154fdd7f73bf3cL  # 1.0E256
    .end array-data

    .line 1776
    :array_176
    .array-data 8
        0x3c9cd2b297d889bcL  # 1.0E-16
        0x3949f623d5a8a733L  # 1.0E-32
        0x32a50ffd44f4a73dL  # 1.0E-64
        0x255bba08cf8c979dL  # 1.0E-128
        0xac8062864ac6f43L  # 1.0E-256
    .end array-data

    .line 1782
    :array_18e
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    .line 1800
    :array_1ae
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L  # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data

    .line 1831
    :array_21e
    .array-data 4
        0x0
        0x3
        0x5
        0x7
        0xa
        0xc
        0xe
        0x11
        0x13
        0x15
        0x18
        0x1a
        0x1c
        0x1f
        0x21
        0x23
        0x26
        0x28
        0x2a
        0x2d
        0x2f
        0x31
        0x34
        0x36
        0x38
        0x3b
        0x3d
    .end array-data

    .line 1861
    :array_258
    .array-data 2
        0x49s
        0x6es
        0x66s
        0x69s
        0x6es
        0x69s
        0x74s
        0x79s
    .end array-data

    .line 1862
    :array_264
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    .line 1863
    nop

    :array_26c
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(D)V
    .registers 16

    const-wide/high16 v10, 0x10000000000000L

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v6, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    .line 42
    iput-boolean v6, p0, Lsun/misc/FloatingDecimal;->fromHex:Z

    .line 43
    iput v6, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 408
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 414
    and-long v2, v0, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3f

    .line 415
    iput-boolean v7, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    .line 416
    xor-long/2addr v0, v4

    .line 422
    :goto_1e
    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 423
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    .line 424
    const/16 v3, 0x7ff

    if-ne v2, v3, :cond_49

    .line 425
    iput-boolean v7, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    .line 426
    cmp-long v0, v0, v8

    if-nez v0, :cond_42

    .line 427
    sget-object v0, Lsun/misc/FloatingDecimal;->infinity:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 432
    :goto_39
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    array-length v0, v0

    iput v0, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    .line 461
    :goto_3e
    return-void

    .line 418
    :cond_3f
    iput-boolean v6, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    goto :goto_1e

    .line 429
    :cond_42
    sget-object v0, Lsun/misc/FloatingDecimal;->notANumber:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 430
    iput-boolean v6, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    goto :goto_39

    .line 435
    :cond_49
    iput-boolean v6, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    .line 440
    if-nez v2, :cond_70

    .line 441
    cmp-long v3, v0, v8

    if-nez v3, :cond_5a

    .line 443
    iput v6, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 444
    sget-object v0, Lsun/misc/FloatingDecimal;->zero:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 445
    iput v7, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    goto :goto_3e

    .line 448
    :cond_5a
    :goto_5a
    and-long v4, v0, v10

    cmp-long v3, v4, v8

    if-nez v3, :cond_64

    .line 449
    shl-long/2addr v0, v7

    .line 450
    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    .line 452
    :cond_64
    add-int/lit8 v3, v2, 0x34

    add-int/lit8 v3, v3, 0x1

    .line 453
    add-int/lit8 v2, v2, 0x1

    .line 458
    :goto_6a
    add-int/lit16 v2, v2, -0x3ff

    invoke-direct {p0, v2, v0, v1, v3}, Lsun/misc/FloatingDecimal;->dtoa(IJI)V

    goto :goto_3e

    .line 455
    :cond_70
    or-long/2addr v0, v10

    .line 456
    const/16 v3, 0x35

    goto :goto_6a
.end method

.method public constructor <init>(F)V
    .registers 8

    const/high16 v5, 0x800000

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v4, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    .line 42
    iput-boolean v4, p0, Lsun/misc/FloatingDecimal;->fromHex:Z

    .line 43
    iput v4, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 468
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 474
    and-int v1, v0, v2

    if-eqz v1, :cond_3a

    .line 475
    iput-boolean v3, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    .line 476
    xor-int/2addr v0, v2

    .line 482
    :goto_1a
    const/high16 v1, 0x7f800000  # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v2, v1, 0x17

    .line 483
    const v1, 0x7fffff

    and-int/2addr v1, v0

    .line 484
    const/16 v0, 0xff

    if-ne v2, v0, :cond_44

    .line 485
    iput-boolean v3, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    .line 486
    int-to-long v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    .line 487
    sget-object v0, Lsun/misc/FloatingDecimal;->infinity:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 492
    :goto_34
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    array-length v0, v0

    iput v0, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    .line 521
    :goto_39
    return-void

    .line 478
    :cond_3a
    iput-boolean v4, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    goto :goto_1a

    .line 489
    :cond_3d
    sget-object v0, Lsun/misc/FloatingDecimal;->notANumber:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 490
    iput-boolean v4, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    goto :goto_34

    .line 495
    :cond_44
    iput-boolean v4, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    .line 500
    if-nez v2, :cond_6c

    .line 501
    if-nez v1, :cond_53

    .line 503
    iput v4, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 504
    sget-object v0, Lsun/misc/FloatingDecimal;->zero:[C

    iput-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 505
    iput v3, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    goto :goto_39

    .line 508
    :cond_53
    :goto_53
    and-int v0, v1, v5

    if-nez v0, :cond_5c

    .line 509
    shl-int/lit8 v1, v1, 0x1

    .line 510
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    .line 512
    :cond_5c
    add-int/lit8 v0, v2, 0x17

    add-int/lit8 v0, v0, 0x1

    .line 513
    add-int/lit8 v2, v2, 0x1

    .line 518
    :goto_62
    add-int/lit8 v2, v2, -0x7f

    int-to-long v4, v1

    const/16 v1, 0x1d

    shl-long/2addr v4, v1

    invoke-direct {p0, v2, v4, v5, v0}, Lsun/misc/FloatingDecimal;->dtoa(IJI)V

    goto :goto_39

    .line 515
    :cond_6c
    or-int/2addr v1, v5

    .line 516
    const/16 v0, 0x18

    goto :goto_62
.end method

.method private constructor <init>(ZI[CIZ)V
    .registers 7

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    .line 42
    iput-boolean v0, p0, Lsun/misc/FloatingDecimal;->fromHex:Z

    .line 43
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 47
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    .line 48
    iput-boolean p5, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    .line 49
    iput p2, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 50
    iput-object p3, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 51
    iput p4, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    .line 52
    return-void
.end method

.method private static big5pow(I)Lsun/misc/FDBigInt;
    .registers 6

    const-class v0, Lsun/misc/FloatingDecimal;

    monitor-enter v0

    .line 129
    :try_start_3
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    if-nez v0, :cond_1b

    .line 131
    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [Lsun/misc/FDBigInt;

    sput-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    .line 137
    :cond_d
    :goto_d
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, p0

    if-eqz v0, :cond_36

    .line 138
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    .line 162
    :goto_1a
    return-object v0

    .line 132
    :cond_1b
    :try_start_1b
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v0, v0

    if-gt v0, p0, :cond_d

    .line 133
    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [Lsun/misc/FDBigInt;

    .line 134
    sget-object v1, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    sput-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_31

    goto :goto_d

    .line 128
    :catchall_31
    move-exception v0

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    throw v0

    .line 139
    :cond_36
    :try_start_36
    sget-object v0, Lsun/misc/FloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge p0, v0, :cond_4c

    .line 140
    sget-object v1, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    new-instance v0, Lsun/misc/FDBigInt;

    sget-object v2, Lsun/misc/FloatingDecimal;->small5pow:[I

    aget v2, v2, p0

    invoke-direct {v0, v2}, Lsun/misc/FDBigInt;-><init>(I)V
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_31

    aput-object v0, v1, p0

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 141
    :cond_4c
    :try_start_4c
    sget-object v0, Lsun/misc/FloatingDecimal;->long5pow:[J

    array-length v0, v0

    if-ge p0, v0, :cond_62

    .line 142
    sget-object v1, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    new-instance v0, Lsun/misc/FDBigInt;

    sget-object v2, Lsun/misc/FloatingDecimal;->long5pow:[J

    aget-wide v2, v2, p0

    invoke-direct {v0, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_31

    aput-object v0, v1, p0

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 151
    :cond_62
    shr-int/lit8 v1, p0, 0x1

    .line 152
    sub-int v2, p0, v1

    .line 153
    :try_start_66
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, v1

    .line 154
    if-nez v0, :cond_9d

    .line 155
    invoke-static {v1}, Lsun/misc/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    move-object v1, v0

    .line 156
    :goto_71
    sget-object v0, Lsun/misc/FloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge v2, v0, :cond_86

    .line 157
    sget-object v3, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    sget-object v0, Lsun/misc/FloatingDecimal;->small5pow:[I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_31

    move-result-object v0

    aput-object v0, v3, p0

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 159
    :cond_86
    :try_start_86
    sget-object v0, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, v2

    .line 160
    if-nez v0, :cond_90

    .line 161
    invoke-static {v2}, Lsun/misc/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 162
    :cond_90
    sget-object v2, Lsun/misc/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    invoke-virtual {v1, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_31

    move-result-object v0

    aput-object v0, v2, p0

    const-class v1, Lsun/misc/FloatingDecimal;

    monitor-exit v1

    goto/16 :goto_1a

    :cond_9d
    move-object v1, v0

    goto :goto_71
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .registers 4

    .line 190
    new-instance v0, Lsun/misc/FDBigInt;

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    .line 191
    if-eqz p1, :cond_e

    .line 192
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 194
    :cond_e
    return-object v0
.end method

.method private static countBits(J)I
    .registers 12

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 101
    cmp-long v1, p0, v6

    if-nez v1, :cond_30

    .line 119
    :cond_a
    return v0

    .line 103
    :goto_b
    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    .line 104
    shl-long/2addr v2, v9

    goto :goto_b

    .line 106
    :cond_14
    :goto_14
    cmp-long v1, v2, v6

    if-lez v1, :cond_1a

    .line 107
    shl-long/2addr v2, v8

    goto :goto_14

    .line 111
    :cond_1a
    :goto_1a
    const-wide v4, 0xffffffffffffffL

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_28

    .line 112
    shl-long/2addr v2, v9

    .line 113
    add-int/lit8 v0, v0, 0x8

    goto :goto_1a

    .line 115
    :cond_28
    :goto_28
    cmp-long v1, v2, v6

    if-eqz v1, :cond_a

    .line 116
    shl-long/2addr v2, v8

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_30
    move-wide v2, p0

    goto :goto_b
.end method

.method private developLongDigits(IJJ)V
    .registers 14

    .line 312
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const-wide/16 v0, 0xa

    cmp-long v0, p4, v0

    if-ltz v0, :cond_f

    .line 313
    const-wide/16 v0, 0xa

    div-long/2addr p4, v0

    .line 312
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 314
    :cond_f
    if-eqz v2, :cond_af

    .line 315
    sget-object v0, Lsun/misc/FloatingDecimal;->long5pow:[J

    aget-wide v0, v0, v2

    shl-long v4, v0, v2

    .line 316
    div-long v0, p2, v4

    .line 318
    add-int/2addr v2, p1

    .line 319
    rem-long v6, p2, v4

    const/4 v3, 0x1

    shr-long/2addr v4, v3

    cmp-long v3, v6, v4

    if-ltz v3, :cond_ac

    .line 321
    const-wide/16 v4, 0x1

    add-long p2, v0, v4

    .line 324
    :goto_26
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6c

    .line 325
    long-to-int v5, p2

    .line 329
    const/16 v1, 0xa

    .line 330
    sget-object v0, Lsun/misc/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 331
    const/16 v3, 0x9

    .line 332
    rem-int/lit8 v4, v5, 0xa

    .line 333
    div-int/lit8 v5, v5, 0xa

    .line 334
    :goto_3e
    if-nez v4, :cond_47

    .line 335
    add-int/lit8 v2, v2, 0x1

    .line 336
    rem-int/lit8 v4, v5, 0xa

    .line 337
    div-int/lit8 v5, v5, 0xa

    goto :goto_3e

    .line 339
    :cond_47
    :goto_47
    if-eqz v5, :cond_57

    .line 340
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    rem-int/lit8 v4, v5, 0xa

    .line 343
    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_47

    .line 345
    :cond_57
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 368
    :goto_5c
    sub-int/2addr v1, v3

    .line 369
    new-array v4, v1, [C

    .line 370
    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object v4, p0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 372
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 373
    iput v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    .line 374
    return-void

    .line 349
    :cond_6c
    sget-object v0, Lsun/misc/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 351
    const/16 v3, 0x13

    .line 352
    const-wide/16 v4, 0xa

    rem-long v4, p2, v4

    long-to-int v1, v4

    .line 353
    const-wide/16 v4, 0xa

    div-long v4, p2, v4

    .line 354
    :goto_7f
    if-nez v1, :cond_8c

    .line 355
    add-int/lit8 v2, v2, 0x1

    .line 356
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v1, v6

    .line 357
    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    goto :goto_7f

    .line 359
    :cond_8c
    :goto_8c
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_a4

    .line 360
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v0, v3

    .line 361
    add-int/lit8 v2, v2, 0x1

    .line 362
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v1, v6

    .line 363
    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_8c

    .line 365
    :cond_a4
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v0, v3

    const/16 v1, 0x14

    goto :goto_5c

    :cond_ac
    move-wide p2, v0

    goto/16 :goto_26

    :cond_af
    move v2, p1

    goto/16 :goto_26
.end method

.method private doubleToBigInt(D)Lsun/misc/FDBigInt;
    .registers 14

    const-wide/high16 v8, 0x10000000000000L

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 210
    const/16 v2, 0x34

    ushr-long v2, v0, v2

    long-to-int v2, v2

    .line 211
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    .line 212
    if-lez v2, :cond_30

    .line 213
    or-long/2addr v0, v8

    .line 222
    :cond_1a
    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->countBits(J)I

    move-result v3

    .line 228
    add-int/lit16 v2, v2, -0x3ff

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lsun/misc/FloatingDecimal;->bigIntExp:I

    .line 232
    iput v3, p0, Lsun/misc/FloatingDecimal;->bigIntNBits:I

    .line 233
    new-instance v2, Lsun/misc/FDBigInt;

    rsub-int/lit8 v3, v3, 0x35

    ushr-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lsun/misc/FDBigInt;-><init>(J)V

    return-object v2

    .line 215
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 217
    :goto_32
    and-long v4, v0, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1a

    .line 218
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 219
    add-int/lit8 v2, v2, -0x1

    goto :goto_32
.end method

.method private dtoa(IJI)V
    .registers 27

    .line 533
    invoke-static/range {p2 .. p3}, Lsun/misc/FloatingDecimal;->countBits(J)I

    move-result v6

    .line 534
    const/4 v2, 0x0

    sub-int v3, v6, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 535
    const/16 v3, 0x3e

    move/from16 v0, p1

    if-gt v0, v3, :cond_50

    const/16 v3, -0x15

    move/from16 v0, p1

    if-lt v0, v3, :cond_50

    .line 539
    sget-object v3, Lsun/misc/FloatingDecimal;->long5pow:[J

    array-length v3, v3

    if-ge v2, v3, :cond_50

    sget-object v3, Lsun/misc/FloatingDecimal;->n5bits:[I

    aget v3, v3, v2

    add-int/2addr v3, v6

    const/16 v4, 0x40

    if-ge v3, v4, :cond_50

    .line 556
    if-nez v2, :cond_50

    .line 557
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_48

    .line 558
    const-wide/16 v2, 0x1

    sub-int v4, p1, p4

    add-int/lit8 v4, v4, -0x1

    shl-long v6, v2, v4

    .line 562
    :goto_37
    const/16 v2, 0x34

    move/from16 v0, p1

    if-lt v0, v2, :cond_4b

    .line 563
    add-int/lit8 v2, p1, -0x34

    shl-long v4, p2, v2

    .line 567
    :goto_41
    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lsun/misc/FloatingDecimal;->developLongDigits(IJJ)V

    .line 886
    :cond_47
    :goto_47
    return-void

    .line 560
    :cond_48
    const-wide/16 v6, 0x0

    goto :goto_37

    .line 565
    :cond_4b
    rsub-int/lit8 v2, p1, 0x34

    ushr-long v4, p2, v2

    goto :goto_41

    .line 619
    :cond_50
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide v8, -0x10000000000001L

    and-long v8, v8, p2

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 621
    move/from16 v0, p1

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v10, 0x3ff8000000000000L  # 1.5

    sub-double/2addr v4, v10

    const-wide v10, 0x3fd287a762c9bd93L  # 0.289529654

    mul-double/2addr v4, v10

    const-wide v10, 0x3fc68a288b421b8cL  # 0.176091259

    add-double/2addr v4, v10

    const-wide v10, 0x3fd34413509f79fbL  # 0.301029995663981

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v7, v4

    .line 630
    const/4 v3, 0x0

    neg-int v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 631
    add-int v3, v8, v2

    add-int v4, v3, p1

    .line 633
    const/4 v3, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 634
    add-int v3, v9, v2

    .line 636
    rsub-int/lit8 v2, v6, 0x35

    ushr-long v10, p2, v2

    .line 648
    add-int/lit8 v2, v6, -0x1

    sub-int v2, v4, v2

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 650
    sub-int/2addr v2, v5

    .line 651
    sub-int/2addr v3, v5

    .line 652
    sub-int v4, v4, p4

    sub-int/2addr v4, v5

    .line 660
    const/4 v5, 0x1

    if-ne v6, v5, :cond_a6

    .line 661
    add-int/lit8 v4, v4, -0x1

    .line 663
    :cond_a6
    if-gez v4, :cond_ab

    .line 667
    sub-int/2addr v2, v4

    .line 668
    sub-int/2addr v3, v4

    .line 669
    const/4 v4, 0x0

    .line 679
    :cond_ab
    const/16 v5, 0x12

    new-array v14, v5, [C

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 680
    sget-object v5, Lsun/misc/FloatingDecimal;->n5bits:[I

    array-length v12, v5

    if-ge v8, v12, :cond_131

    aget v5, v5, v8

    :goto_ba
    add-int/2addr v6, v2

    add-int/2addr v6, v5

    .line 701
    sget-object v5, Lsun/misc/FloatingDecimal;->n5bits:[I

    add-int/lit8 v12, v9, 0x1

    array-length v13, v5

    if-ge v12, v13, :cond_134

    add-int/lit8 v12, v9, 0x1

    aget v5, v5, v12

    :goto_c7
    add-int/lit8 v12, v3, 0x1

    add-int/2addr v5, v12

    .line 702
    const/16 v12, 0x40

    if-ge v6, v12, :cond_1fe

    const/16 v12, 0x40

    if-ge v5, v12, :cond_1fe

    .line 703
    const/16 v12, 0x20

    if-ge v6, v12, :cond_17a

    const/16 v6, 0x20

    if-ge v5, v6, :cond_17a

    .line 705
    long-to-int v5, v10

    sget-object v6, Lsun/misc/FloatingDecimal;->small5pow:[I

    aget v10, v6, v8

    mul-int/2addr v5, v10

    shl-int v2, v5, v2

    .line 706
    aget v5, v6, v9

    shl-int v9, v5, v3

    .line 707
    aget v3, v6, v8

    .line 708
    mul-int/lit8 v10, v9, 0xa

    .line 714
    const/4 v8, 0x0

    .line 715
    div-int v5, v2, v9

    .line 716
    rem-int/2addr v2, v9

    mul-int/lit8 v6, v2, 0xa

    .line 717
    shl-int v2, v3, v4

    mul-int/lit8 v4, v2, 0xa

    .line 718
    if-ge v6, v4, :cond_139

    const/4 v3, 0x1

    .line 719
    :goto_f7
    add-int v2, v6, v4

    if-le v2, v10, :cond_13b

    const/4 v2, 0x1

    .line 720
    :goto_fc
    if-nez v5, :cond_13d

    if-nez v2, :cond_13d

    .line 723
    add-int/lit8 v5, v7, -0x1

    .line 733
    :goto_102
    const/4 v7, -0x3

    if-lt v5, v7, :cond_109

    const/16 v7, 0x8

    if-lt v5, v7, :cond_146

    .line 734
    :cond_109
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v7, v4

    .line 736
    :goto_10c
    if-nez v3, :cond_150

    if-nez v2, :cond_150

    .line 737
    div-int v11, v6, v9

    .line 738
    rem-int v2, v6, v9

    mul-int/lit8 v6, v2, 0xa

    .line 739
    mul-int/lit8 v7, v7, 0xa

    .line 740
    int-to-long v2, v7

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_14c

    .line 742
    if-ge v6, v7, :cond_148

    const/4 v3, 0x1

    .line 743
    :goto_122
    add-int v2, v6, v7

    if-le v2, v10, :cond_14a

    const/4 v2, 0x1

    :goto_127
    move v4, v2

    .line 753
    :goto_128
    add-int/lit8 v2, v11, 0x30

    int-to-char v2, v2

    aput-char v2, v14, v8

    add-int/lit8 v8, v8, 0x1

    move v2, v4

    goto :goto_10c

    .line 680
    :cond_131
    mul-int/lit8 v5, v8, 0x3

    goto :goto_ba

    .line 701
    :cond_134
    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v5, v5, 0x3

    goto :goto_c7

    .line 718
    :cond_139
    const/4 v3, 0x0

    goto :goto_f7

    .line 719
    :cond_13b
    const/4 v2, 0x0

    goto :goto_fc

    .line 725
    :cond_13d
    const/4 v8, 0x0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v14, v8

    const/4 v8, 0x1

    move v5, v7

    goto :goto_102

    :cond_146
    move v7, v4

    .line 733
    goto :goto_10c

    .line 742
    :cond_148
    const/4 v3, 0x0

    goto :goto_122

    .line 743
    :cond_14a
    const/4 v2, 0x0

    goto :goto_127

    .line 750
    :cond_14c
    const/4 v2, 0x1

    const/4 v4, 0x1

    move v3, v2

    goto :goto_128

    .line 736
    :cond_150
    shl-int/lit8 v4, v6, 0x1

    sub-int/2addr v4, v10

    int-to-long v6, v4

    move v4, v3

    .line 867
    :goto_155
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 868
    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/misc/FloatingDecimal;->digits:[C

    .line 869
    move-object/from16 v0, p0

    iput v8, v0, Lsun/misc/FloatingDecimal;->nDigits:I

    .line 873
    if-eqz v2, :cond_47

    .line 874
    if-eqz v4, :cond_2a8

    .line 875
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_29d

    .line 878
    add-int/lit8 v2, v8, -0x1

    aget-char v2, v14, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_47

    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal;->roundup()V

    goto/16 :goto_47

    .line 703
    :cond_17a
    sget-object v5, Lsun/misc/FloatingDecimal;->long5pow:[J

    aget-wide v12, v5, v8

    mul-long/2addr v10, v12

    shl-long/2addr v10, v2

    .line 759
    aget-wide v12, v5, v9

    shl-long v16, v12, v3

    .line 760
    aget-wide v2, v5, v8

    .line 761
    const-wide/16 v8, 0xa

    mul-long v18, v16, v8

    .line 767
    const/4 v8, 0x0

    .line 768
    div-long v12, v10, v16

    long-to-int v5, v12

    .line 769
    rem-long v10, v10, v16

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 770
    shl-long/2addr v2, v4

    const-wide/16 v12, 0xa

    mul-long/2addr v12, v2

    .line 771
    cmp-long v2, v10, v12

    if-gez v2, :cond_1e0

    const/4 v3, 0x1

    .line 772
    :goto_19c
    add-long v20, v10, v12

    cmp-long v2, v20, v18

    if-lez v2, :cond_1e2

    const/4 v2, 0x1

    .line 773
    :goto_1a3
    if-nez v5, :cond_1e4

    if-nez v2, :cond_1e4

    .line 776
    add-int/lit8 v5, v7, -0x1

    .line 786
    :goto_1a9
    const/4 v4, -0x3

    if-lt v5, v4, :cond_1b0

    const/16 v4, 0x8

    if-lt v5, v4, :cond_1ed

    .line 787
    :cond_1b0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide v6, v10

    .line 789
    :goto_1b3
    if-nez v3, :cond_1f7

    if-nez v2, :cond_1f7

    .line 790
    div-long v2, v6, v16

    long-to-int v9, v2

    .line 791
    rem-long v2, v6, v16

    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    .line 792
    const-wide/16 v2, 0xa

    mul-long v10, v12, v2

    .line 793
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_1f3

    .line 795
    cmp-long v2, v6, v10

    if-gez v2, :cond_1ef

    const/4 v3, 0x1

    .line 796
    :goto_1ce
    add-long v12, v6, v10

    cmp-long v2, v12, v18

    if-lez v2, :cond_1f1

    const/4 v2, 0x1

    :goto_1d5
    move v4, v2

    .line 806
    :goto_1d6
    add-int/lit8 v2, v9, 0x30

    int-to-char v2, v2

    aput-char v2, v14, v8

    add-int/lit8 v8, v8, 0x1

    move v2, v4

    move-wide v12, v10

    goto :goto_1b3

    .line 771
    :cond_1e0
    const/4 v3, 0x0

    goto :goto_19c

    .line 772
    :cond_1e2
    const/4 v2, 0x0

    goto :goto_1a3

    .line 778
    :cond_1e4
    const/4 v4, 0x0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v14, v4

    const/4 v8, 0x1

    move v5, v7

    goto :goto_1a9

    :cond_1ed
    move-wide v6, v10

    .line 786
    goto :goto_1b3

    .line 795
    :cond_1ef
    const/4 v3, 0x0

    goto :goto_1ce

    .line 796
    :cond_1f1
    const/4 v2, 0x0

    goto :goto_1d5

    .line 803
    :cond_1f3
    const/4 v2, 0x1

    const/4 v4, 0x1

    move v3, v2

    goto :goto_1d6

    .line 808
    :cond_1f7
    const/4 v4, 0x1

    shl-long/2addr v6, v4

    sub-long v6, v6, v18

    move v4, v3

    goto/16 :goto_155

    .line 702
    :cond_1fe
    new-instance v5, Lsun/misc/FDBigInt;

    invoke-direct {v5, v10, v11}, Lsun/misc/FDBigInt;-><init>(J)V

    invoke-static {v5, v8, v2}, Lsun/misc/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v10

    .line 819
    invoke-static {v9, v3}, Lsun/misc/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v9

    .line 820
    invoke-static {v8, v4}, Lsun/misc/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v2

    .line 824
    invoke-virtual {v9}, Lsun/misc/FDBigInt;->normalizeMe()I

    move-result v3

    invoke-virtual {v10, v3}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 825
    invoke-virtual {v2, v3}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 826
    const/16 v3, 0xa

    invoke-virtual {v9, v3}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v11

    .line 832
    const/4 v8, 0x0

    .line 833
    invoke-virtual {v10, v9}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v4

    .line 834
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v6

    .line 835
    invoke-virtual {v10, v6}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_275

    const/4 v2, 0x1

    .line 836
    :goto_231
    invoke-virtual {v10, v6}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v3

    invoke-virtual {v3, v11}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v3

    if-lez v3, :cond_277

    const/4 v3, 0x1

    .line 837
    :goto_23c
    if-nez v4, :cond_279

    if-nez v3, :cond_279

    .line 840
    add-int/lit8 v5, v7, -0x1

    .line 850
    :goto_242
    const/4 v4, -0x3

    if-lt v5, v4, :cond_249

    const/16 v4, 0x8

    if-lt v5, v4, :cond_282

    .line 851
    :cond_249
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    .line 853
    :goto_24c
    if-nez v4, :cond_288

    if-nez v3, :cond_288

    .line 854
    invoke-virtual {v10, v9}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v4

    .line 855
    const/16 v2, 0xa

    invoke-virtual {v6, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v6

    .line 856
    invoke-virtual {v10, v6}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_284

    const/4 v2, 0x1

    .line 858
    :goto_261
    invoke-virtual {v10, v6}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v3

    invoke-virtual {v3, v11}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v3

    if-lez v3, :cond_286

    const/4 v3, 0x1

    .line 859
    :goto_26c
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v14, v8

    add-int/lit8 v8, v8, 0x1

    move v4, v2

    goto :goto_24c

    .line 835
    :cond_275
    const/4 v2, 0x0

    goto :goto_231

    .line 836
    :cond_277
    const/4 v3, 0x0

    goto :goto_23c

    .line 842
    :cond_279
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v14, v5

    const/4 v8, 0x1

    move v5, v7

    goto :goto_242

    :cond_282
    move v4, v2

    .line 850
    goto :goto_24c

    .line 856
    :cond_284
    const/4 v2, 0x0

    goto :goto_261

    .line 858
    :cond_286
    const/4 v3, 0x0

    goto :goto_26c

    .line 861
    :cond_288
    if-eqz v3, :cond_298

    if-eqz v4, :cond_298

    .line 862
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 863
    invoke-virtual {v10, v11}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    int-to-long v6, v2

    move v2, v3

    goto/16 :goto_155

    .line 861
    :cond_298
    const-wide/16 v6, 0x0

    move v2, v3

    goto/16 :goto_155

    .line 879
    :cond_29d
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_47

    .line 880
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal;->roundup()V

    goto/16 :goto_47

    .line 883
    :cond_2a8
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal;->roundup()V

    goto/16 :goto_47
.end method

.method private getChars([C)I
    .registers 10

    const/16 v7, 0x2d

    const/4 v1, 0x1

    const/16 v6, 0x30

    const/16 v5, 0x2e

    const/4 v2, 0x0

    .line 911
    .line 913
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_f9

    aput-char v7, p1, v2

    move v0, v1

    .line 914
    :goto_f
    iget-boolean v3, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    if-eqz v3, :cond_1e

    .line 915
    iget-object v1, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v3, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    add-int/2addr v0, v1

    .line 979
    :goto_1d
    return v0

    .line 918
    :cond_1e
    iget v3, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    if-lez v3, :cond_5c

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5c

    .line 920
    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 921
    iget-object v3, p0, Lsun/misc/FloatingDecimal;->digits:[C

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    add-int/2addr v0, v1

    .line 923
    iget v3, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    if-ge v1, v3, :cond_47

    .line 924
    sub-int v1, v3, v1

    .line 925
    sget-object v3, Lsun/misc/FloatingDecimal;->zero:[C

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    add-int/2addr v0, v1

    .line 927
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    .line 928
    add-int/lit8 v0, v1, 0x1

    aput-char v6, p1, v1

    goto :goto_1d

    .line 930
    :cond_47
    add-int/lit8 v2, v0, 0x1

    aput-char v5, p1, v0

    .line 931
    iget v0, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    if-ge v1, v0, :cond_57

    .line 932
    sub-int/2addr v0, v1

    .line 933
    iget-object v3, p0, Lsun/misc/FloatingDecimal;->digits:[C

    invoke-static {v3, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    add-int/2addr v0, v2

    goto :goto_1d

    .line 936
    :cond_57
    add-int/lit8 v0, v2, 0x1

    aput-char v6, p1, v2

    goto :goto_1d

    .line 939
    :cond_5c
    iget v3, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    if-gtz v3, :cond_81

    const/4 v4, -0x3

    if-le v3, v4, :cond_81

    .line 940
    add-int/lit8 v1, v0, 0x1

    aput-char v6, p1, v0

    .line 941
    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    .line 942
    if-eqz v3, :cond_76

    .line 943
    sget-object v1, Lsun/misc/FloatingDecimal;->zero:[C

    neg-int v3, v3

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    iget v1, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    sub-int/2addr v0, v1

    .line 946
    :cond_76
    iget-object v1, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v3, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    add-int/2addr v0, v1

    goto :goto_1d

    .line 949
    :cond_81
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lsun/misc/FloatingDecimal;->digits:[C

    aget-char v2, v4, v2

    aput-char v2, p1, v0

    .line 950
    add-int/lit8 v0, v3, 0x1

    aput-char v5, p1, v3

    .line 951
    iget v2, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    if-le v2, v1, :cond_b9

    .line 952
    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 957
    :goto_9b
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x45

    aput-char v2, p1, v0

    .line 959
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    if-gtz v0, :cond_be

    .line 960
    aput-char v7, p1, v1

    .line 961
    neg-int v0, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 966
    :goto_ac
    const/16 v1, 0x9

    if-gt v2, v1, :cond_c2

    .line 967
    add-int/lit8 v1, v2, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    .line 955
    :cond_b9
    aput-char v6, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 963
    :cond_be
    add-int/lit8 v2, v0, -0x1

    move v0, v1

    goto :goto_ac

    .line 968
    :cond_c2
    const/16 v1, 0x63

    if-gt v2, v1, :cond_da

    .line 969
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 970
    rem-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_1d

    .line 972
    :cond_da
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v3, v2, 0x64

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 973
    rem-int/lit8 v0, v2, 0x64

    .line 974
    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 975
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, p1, v2

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1d

    :cond_f9
    move v0, v2

    goto/16 :goto_f
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .registers 5

    const/16 v2, 0x10

    .line 2399
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2400
    const/4 v1, -0x1

    if-le v0, v1, :cond_10

    if-ge v0, v2, :cond_10

    .line 2404
    return v0

    .line 2401
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected failure of digit conversion of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;
    .registers 5

    .line 172
    if-eqz p1, :cond_d

    .line 173
    sget-object v0, Lsun/misc/FloatingDecimal;->small5pow:[I

    array-length v1, v0

    if-ge p1, v1, :cond_13

    .line 174
    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object p0

    .line 179
    :cond_d
    :goto_d
    if-eqz p2, :cond_12

    .line 180
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 182
    :cond_12
    return-object p0

    .line 176
    :cond_13
    invoke-static {p1}, Lsun/misc/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object p0

    goto :goto_d
.end method

.method static parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal;
    .registers 21

    .line 1883
    sget-object v2, Lsun/misc/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1884
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 1886
    if-eqz v2, :cond_2c2

    .line 1915
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1916
    if-eqz v2, :cond_1d

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_1d
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 1948
    :goto_1f
    const/4 v5, 0x0

    .line 1969
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 1971
    invoke-static {v4}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1972
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v5

    .line 1991
    :goto_30
    invoke-static {v7}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1992
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 1997
    const/4 v5, 0x1

    if-lt v4, v5, :cond_7a

    .line 1998
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x4

    move v7, v4

    .line 2006
    :goto_40
    if-nez v16, :cond_82

    .line 2007
    new-instance v4, Lsun/misc/FloatingDecimal;

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    move-object v2, v4

    .line 2382
    :goto_4b
    return-object v2

    .line 1916
    :cond_4c
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    goto :goto_1f

    .line 1977
    :cond_4f
    const/4 v4, 0x6

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1978
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1981
    const/4 v6, 0x7

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1982
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 1985
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1986
    if-nez v4, :cond_6e

    const-string v4, ""

    :cond_6e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v4, v5

    goto :goto_30

    .line 2000
    :cond_7a
    sub-int v4, v6, v16

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, -0x4

    move v7, v4

    goto :goto_40

    .line 2019
    :cond_82
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 2020
    if-eqz v4, :cond_92

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    :cond_92
    const/4 v4, 0x1

    move v6, v4

    .line 2023
    :goto_94
    const/16 v4, 0x9

    :try_start_96
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_9d} :catch_2b1

    move-result v4

    int-to-long v8, v4

    .line 2041
    if-eqz v6, :cond_d7

    const-wide/16 v4, 0x1

    .line 2048
    :goto_a3
    mul-long/2addr v4, v8

    int-to-long v6, v7

    add-long/2addr v4, v6

    .line 2054
    const/4 v11, 0x0

    .line 2055
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 2056
    const/4 v6, 0x0

    invoke-static {v15, v6}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    .line 2076
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_da

    .line 2077
    const-wide/16 v8, 0x0

    const/16 v13, 0x34

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2078
    const/16 v8, 0x30

    .line 2117
    :goto_bd
    const/4 v9, 0x1

    move v13, v9

    move v14, v8

    .line 2119
    :goto_c0
    move/from16 v0, v16

    if-ge v13, v0, :cond_113

    if-ltz v14, :cond_113

    .line 2121
    invoke-static {v15, v13}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    .line 2122
    shl-long/2addr v8, v14

    or-long/2addr v6, v8

    .line 2123
    add-int/lit8 v9, v14, -0x4

    .line 2120
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move v14, v9

    goto :goto_c0

    .line 2020
    :cond_d4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_94

    .line 2041
    :cond_d7
    const-wide/16 v4, -0x1

    goto :goto_a3

    .line 2080
    :cond_da
    const-wide/16 v8, 0x3

    cmp-long v8, v6, v8

    if-gtz v8, :cond_ed

    .line 2081
    const-wide/16 v8, 0x0

    const/16 v13, 0x33

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2082
    const/16 v8, 0x2f

    .line 2083
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    goto :goto_bd

    .line 2085
    :cond_ed
    const-wide/16 v8, 0x7

    cmp-long v8, v6, v8

    if-gtz v8, :cond_100

    .line 2086
    const-wide/16 v8, 0x0

    const/16 v13, 0x32

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2087
    const/16 v8, 0x2e

    .line 2088
    const-wide/16 v18, 0x2

    add-long v4, v4, v18

    goto :goto_bd

    .line 2090
    :cond_100
    const-wide/16 v8, 0xf

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2a9

    .line 2091
    const-wide/16 v8, 0x0

    const/16 v13, 0x31

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2092
    const/16 v8, 0x2d

    .line 2093
    const-wide/16 v18, 0x3

    add-long v4, v4, v18

    goto :goto_bd

    .line 2119
    :cond_113
    move/from16 v0, v16

    if-ge v13, v0, :cond_1ce

    .line 2132
    invoke-static {v15, v13}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    int-to-long v0, v8

    move-wide/from16 v18, v0

    .line 2136
    const/4 v8, -0x4

    if-eq v14, v8, :cond_1ad

    const/4 v8, -0x3

    if-eq v14, v8, :cond_189

    const/4 v8, -0x2

    if-eq v14, v8, :cond_165

    const/4 v8, -0x1

    if-ne v14, v8, :cond_15d

    .line 2140
    const-wide/16 v8, 0xe

    and-long v8, v8, v18

    const/4 v11, 0x1

    shr-long/2addr v8, v11

    or-long/2addr v8, v6

    .line 2141
    const-wide/16 v6, 0x1

    and-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-eqz v6, :cond_15b

    const/4 v6, 0x1

    :goto_13c
    move v11, v6

    .line 2166
    :goto_13d
    add-int/lit8 v6, v13, 0x1

    move v7, v6

    move v12, v10

    .line 2179
    :goto_141
    move/from16 v0, v16

    if-ge v7, v0, :cond_2e3

    if-nez v12, :cond_2e3

    .line 2180
    invoke-static {v15, v7}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 2181
    if-nez v12, :cond_156

    const-wide/16 v12, 0x0

    cmp-long v6, v18, v12

    if-eqz v6, :cond_1cc

    :cond_156
    const/4 v6, 0x1

    .line 2182
    :goto_157
    add-int/lit8 v7, v7, 0x1

    move v12, v6

    goto :goto_141

    .line 2141
    :cond_15b
    const/4 v6, 0x0

    goto :goto_13c

    .line 2169
    :cond_15d
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unexpected shift distance remainder."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2147
    :cond_165
    const-wide/16 v8, 0xc

    and-long v8, v8, v18

    const/4 v10, 0x2

    shr-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 2148
    const-wide/16 v6, 0x2

    and-long v6, v6, v18

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_185

    const/4 v7, 0x1

    .line 2149
    :goto_177
    const-wide/16 v10, 0x1

    and-long v10, v10, v18

    const-wide/16 v18, 0x0

    cmp-long v6, v10, v18

    if-eqz v6, :cond_187

    const/4 v6, 0x1

    :goto_182
    move v10, v6

    move v11, v7

    .line 2150
    goto :goto_13d

    .line 2148
    :cond_185
    const/4 v7, 0x0

    goto :goto_177

    .line 2149
    :cond_187
    const/4 v6, 0x0

    goto :goto_182

    .line 2154
    :cond_189
    const-wide/16 v8, 0x8

    and-long v8, v8, v18

    const/4 v10, 0x3

    shr-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 2156
    const-wide/16 v6, 0x4

    and-long v6, v6, v18

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1a9

    const/4 v7, 0x1

    .line 2157
    :goto_19b
    const-wide/16 v10, 0x3

    and-long v10, v10, v18

    const-wide/16 v18, 0x0

    cmp-long v6, v10, v18

    if-eqz v6, :cond_1ab

    const/4 v6, 0x1

    :goto_1a6
    move v10, v6

    move v11, v7

    .line 2158
    goto :goto_13d

    .line 2156
    :cond_1a9
    const/4 v7, 0x0

    goto :goto_19b

    .line 2157
    :cond_1ab
    const/4 v6, 0x0

    goto :goto_1a6

    .line 2163
    :cond_1ad
    const-wide/16 v8, 0x8

    and-long v8, v8, v18

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1c6

    const/4 v11, 0x1

    .line 2165
    :goto_1b8
    const-wide/16 v8, 0x7

    and-long v8, v8, v18

    const-wide/16 v18, 0x0

    cmp-long v8, v8, v18

    if-eqz v8, :cond_1c8

    const/4 v10, 0x1

    move-wide v8, v6

    goto/16 :goto_13d

    .line 2163
    :cond_1c6
    const/4 v11, 0x0

    goto :goto_1b8

    .line 2165
    :cond_1c8
    const/4 v10, 0x0

    move-wide v8, v6

    goto/16 :goto_13d

    .line 2181
    :cond_1cc
    const/4 v6, 0x0

    goto :goto_157

    :cond_1ce
    move-wide v8, v6

    move v10, v11

    .line 2192
    :goto_1d0
    const-wide/16 v6, 0x3ff

    cmp-long v6, v4, v6

    if-lez v6, :cond_1e1

    .line 2194
    new-instance v4, Lsun/misc/FloatingDecimal;

    const-wide/high16 v6, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    move-object v2, v4

    goto/16 :goto_4b

    .line 2196
    :cond_1e1
    const-wide/16 v6, 0x3ff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_24c

    const-wide/16 v6, -0x3fe

    cmp-long v6, v4, v6

    if-ltz v6, :cond_24c

    .line 2210
    const-wide/16 v6, 0x3ff

    add-long/2addr v6, v4

    const/16 v11, 0x34

    shl-long/2addr v6, v11

    const-wide/high16 v14, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr v6, v14

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v8, v14

    or-long/2addr v8, v6

    move v11, v10

    .line 2290
    :goto_1fe
    const-wide/16 v6, 0x1

    and-long/2addr v6, v8

    const-wide/16 v14, 0x0

    cmp-long v6, v6, v14

    if-nez v6, :cond_29f

    const/4 v6, 0x1

    move v10, v6

    .line 2291
    :goto_209
    if-eqz v10, :cond_20f

    if-eqz v11, :cond_20f

    if-nez v12, :cond_213

    :cond_20f
    if-nez v10, :cond_2e0

    if-eqz v11, :cond_2e0

    .line 2294
    :cond_213
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    .line 2297
    :goto_216
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    new-instance v8, Lsun/misc/FloatingDecimal;

    invoke-static {v14, v15, v2, v3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    .line 2324
    const-wide/16 v2, -0x96

    cmp-long v2, v4, v2

    if-ltz v2, :cond_246

    const-wide/16 v2, 0x7f

    cmp-long v2, v4, v2

    if-gtz v2, :cond_246

    .line 2343
    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_246

    .line 2352
    if-nez v11, :cond_23d

    if-eqz v12, :cond_246

    .line 2353
    :cond_23d
    if-eqz v10, :cond_2a3

    .line 2362
    xor-int v2, v11, v12

    if-eqz v2, :cond_246

    .line 2363
    const/4 v2, 0x1

    iput v2, v8, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 2381
    :cond_246
    :goto_246
    const/4 v2, 0x1

    iput-boolean v2, v8, Lsun/misc/FloatingDecimal;->fromHex:Z

    move-object v2, v8

    .line 2382
    goto/16 :goto_4b

    .line 2219
    :cond_24c
    const-wide/16 v6, -0x433

    cmp-long v6, v4, v6

    if-gez v6, :cond_25d

    .line 2223
    new-instance v4, Lsun/misc/FloatingDecimal;

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    move-object v2, v4

    goto/16 :goto_4b

    .line 2231
    :cond_25d
    if-nez v12, :cond_261

    if-eqz v10, :cond_299

    :cond_261
    const/4 v6, 0x1

    .line 2232
    :goto_262
    long-to-int v7, v4

    add-int/lit16 v7, v7, 0x432

    add-int/lit8 v7, v7, 0x1

    rsub-int/lit8 v10, v7, 0x35

    .line 2242
    const-wide/16 v12, 0x1

    add-int/lit8 v7, v10, -0x1

    shl-long/2addr v12, v7

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_29b

    const/4 v7, 0x1

    .line 2247
    :goto_276
    const/4 v11, 0x1

    if-le v10, v11, :cond_28b

    .line 2250
    if-nez v6, :cond_28a

    const-wide/16 v12, -0x1

    add-int/lit8 v6, v10, -0x1

    shl-long/2addr v12, v6

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_29d

    :cond_28a
    const/4 v6, 0x1

    .line 2247
    :cond_28b
    :goto_28b
    shr-long/2addr v8, v10

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    or-long/2addr v8, v10

    move v11, v7

    move v12, v6

    goto/16 :goto_1fe

    .line 2231
    :cond_299
    const/4 v6, 0x0

    goto :goto_262

    .line 2242
    :cond_29b
    const/4 v7, 0x0

    goto :goto_276

    .line 2250
    :cond_29d
    const/4 v6, 0x0

    goto :goto_28b

    .line 2290
    :cond_29f
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_209

    .line 2374
    :cond_2a3
    if-eqz v11, :cond_246

    .line 2375
    const/4 v2, -0x1

    iput v2, v8, Lsun/misc/FloatingDecimal;->roundDir:I

    goto :goto_246

    .line 2095
    :cond_2a9
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Result from digit conversion too large!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2025
    :catch_2b1
    move-exception v4

    const-wide/high16 v4, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 2039
    if-eqz v6, :cond_2bf

    .line 2040
    :goto_2b6
    new-instance v6, Lsun/misc/FloatingDecimal;

    mul-double/2addr v2, v4

    invoke-direct {v6, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    move-object v2, v6

    .line 2039
    goto/16 :goto_4b

    .line 2040
    :cond_2bf
    const-wide/16 v4, 0x0

    goto :goto_2b6

    .line 1888
    :cond_2c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For input string: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2e0
    move-wide v6, v8

    goto/16 :goto_216

    :cond_2e3
    move v10, v11

    goto/16 :goto_1d0
.end method

.method public static readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1002
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1003
    const/4 v2, 0x0

    .line 1009
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_6} :catch_18b

    move-result-object p0

    .line 1011
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 1012
    if-eqz v12, :cond_183

    .line 1013
    const/4 v4, 0x0

    .line 1014
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_44

    const/16 v0, 0x2d

    if-eq v3, v0, :cond_43

    move v11, v2

    .line 1024
    :goto_1c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1025
    const/16 v2, 0x4e

    if-eq v0, v2, :cond_28

    const/16 v2, 0x49

    if-ne v0, v2, :cond_49

    .line 1026
    :cond_28
    const/4 v2, 0x0

    .line 1027
    const/16 v3, 0x4e

    if-ne v0, v3, :cond_15f

    .line 1030
    sget-object v0, Lsun/misc/FloatingDecimal;->notANumber:[C

    .line 1031
    const/4 v2, 0x1

    .line 1037
    :goto_30
    const/4 v3, 0x0

    .line 1038
    :goto_31
    if-ge v4, v12, :cond_163

    array-length v5, v0

    if-ge v3, v5, :cond_163

    .line 1039
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-char v6, v0, v3

    if-ne v5, v6, :cond_f0

    .line 1040
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1016
    :cond_43
    const/4 v0, 0x1

    .line 1019
    :cond_44
    const/4 v4, 0x1

    .line 1020
    const/4 v2, 0x1

    move v1, v0

    move v11, v2

    goto :goto_1c

    .line 1060
    :cond_49
    const/16 v2, 0x30

    if-ne v0, v2, :cond_64

    .line 1061
    add-int/lit8 v0, v4, 0x1

    if-le v12, v0, :cond_64

    .line 1062
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1063
    const/16 v2, 0x78

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x58

    if-ne v0, v2, :cond_64

    .line 1064
    :cond_5f
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal;

    move-result-object v0

    .line 1240
    :goto_63
    return-object v0

    .line 1068
    :cond_64
    new-array v10, v12, [C

    .line 1069
    const/4 v9, 0x0

    .line 1070
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v4

    .line 1075
    :goto_6c
    if-ge v5, v12, :cond_75

    .line 1076
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_194

    .line 1134
    :cond_75
    :pswitch_75  #0x2f
    if-nez v9, :cond_144

    .line 1135
    sget-object v3, Lsun/misc/FloatingDecimal;->zero:[C

    .line 1136
    if-eqz v7, :cond_f0

    const/4 v4, 0x1

    .line 1150
    :goto_7c
    if-eqz v0, :cond_148

    .line 1151
    sub-int/2addr v6, v7

    .line 1159
    :goto_7f
    if-ge v5, v12, :cond_18e

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_8d

    const/16 v2, 0x45

    if-ne v0, v2, :cond_18e

    .line 1160
    :cond_8d
    const/4 v2, 0x1

    const/4 v0, 0x1

    .line 1161
    const/4 v9, 0x0

    .line 1162
    const/4 v10, 0x0

    .line 1164
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x2b

    if-eq v7, v11, :cond_14d

    const/16 v0, 0x2d

    if-eq v7, v0, :cond_14c

    move v0, v2

    :goto_a0
    move v2, v10

    move v7, v5

    .line 1173
    :goto_a2
    if-ge v7, v12, :cond_b5

    .line 1174
    const v10, 0xccccccc

    if-lt v9, v10, :cond_aa

    .line 1177
    const/4 v2, 0x1

    .line 1179
    :cond_aa
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1b0

    .line 1193
    add-int/lit8 v7, v10, -0x1

    .line 1197
    :cond_b5
    add-int/lit16 v10, v4, 0x144

    add-int/2addr v8, v10

    .line 1198
    if-nez v2, :cond_bc

    if-le v9, v8, :cond_15a

    .line 1211
    :cond_bc
    mul-int v2, v0, v8

    .line 1224
    :goto_be
    if-eq v7, v5, :cond_f0

    move v5, v7

    .line 1159
    :goto_c1
    if-ge v5, v12, :cond_e7

    add-int/lit8 v0, v12, -0x1

    if-ne v5, v0, :cond_f0

    .line 1233
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x66

    if-eq v0, v6, :cond_e7

    .line 1234
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_e7

    .line 1235
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x64

    if-eq v0, v6, :cond_e7

    .line 1236
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x44

    if-ne v0, v5, :cond_f0

    .line 1240
    :cond_e7
    new-instance v0, Lsun/misc/FloatingDecimal;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/misc/FloatingDecimal;-><init>(ZI[CIZ)V
    :try_end_ed
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_ed} :catch_ef

    goto/16 :goto_63

    .line 1241
    :catch_ef
    move-exception v0

    .line 1242
    :cond_f0
    :goto_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For input string: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :goto_10c
    :pswitch_10c  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    if-lez v8, :cond_117

    .line 1094
    const/16 v3, 0x30

    aput-char v3, v10, v9

    .line 1095
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_10c

    .line 1097
    :cond_117
    aput-char v2, v10, v9

    .line 1098
    add-int/lit8 v9, v9, 0x1

    move v2, v0

    move v3, v6

    move v4, v7

    .line 1113
    :goto_11e
    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move v6, v3

    move v7, v4

    goto/16 :goto_6c

    .line 1078
    :pswitch_125  #0x30
    if-lez v9, :cond_12d

    .line 1079
    add-int/lit8 v8, v8, 0x1

    move v2, v0

    move v3, v6

    move v4, v7

    goto :goto_11e

    .line 1081
    :cond_12d
    add-int/lit8 v4, v7, 0x1

    move v2, v0

    move v3, v6

    .line 1083
    goto :goto_11e

    .line 1100
    :pswitch_132  #0x2e
    if-nez v0, :cond_13c

    .line 1105
    if-eqz v11, :cond_191

    .line 1106
    add-int/lit8 v0, v5, -0x1

    .line 1108
    :goto_138
    const/4 v2, 0x1

    move v3, v0

    move v4, v7

    goto :goto_11e

    .line 1102
    :cond_13c
    :try_start_13c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "multiple points"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_144
    move-object v3, v10

    move v4, v9

    .line 1134
    goto/16 :goto_7c

    .line 1153
    :cond_148
    add-int v6, v4, v8

    goto/16 :goto_7f

    .line 1166
    :cond_14c
    const/4 v0, -0x1

    .line 1169
    :cond_14d
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_a0

    .line 1190
    :pswitch_152  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v9, v7

    move v7, v10

    .line 1191
    goto/16 :goto_a2

    .line 1215
    :cond_15a
    mul-int/2addr v0, v9

    add-int v2, v6, v0

    goto/16 :goto_be

    .line 1033
    :cond_15f
    sget-object v0, Lsun/misc/FloatingDecimal;->infinity:[C

    goto/16 :goto_30

    .line 1050
    :cond_163
    array-length v0, v0

    if-ne v3, v0, :cond_f0

    if-ne v4, v12, :cond_f0

    .line 1051
    if-eqz v2, :cond_173

    new-instance v0, Lsun/misc/FloatingDecimal;

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    goto/16 :goto_63

    .line 1052
    :cond_173
    if-eqz v1, :cond_17f

    .line 1053
    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    move-wide v2, v0

    .line 1054
    :goto_178
    new-instance v0, Lsun/misc/FloatingDecimal;

    invoke-direct {v0, v2, v3}, Lsun/misc/FloatingDecimal;-><init>(D)V

    goto/16 :goto_63

    :cond_17f
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    move-wide v2, v0

    goto :goto_178

    .line 1012
    :cond_183
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty String"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_13c .. :try_end_18b} :catch_ef

    .line 1241
    :catch_18b
    move-exception v0

    goto/16 :goto_f0

    :cond_18e
    move v2, v6

    goto/16 :goto_c1

    :cond_191
    move v0, v5

    goto :goto_138

    .line 1076
    nop

    :pswitch_data_194
    .packed-switch 0x2e
        :pswitch_132  #0000002e
        :pswitch_75  #0000002f
        :pswitch_125  #00000030
        :pswitch_10c  #00000031
        :pswitch_10c  #00000032
        :pswitch_10c  #00000033
        :pswitch_10c  #00000034
        :pswitch_10c  #00000035
        :pswitch_10c  #00000036
        :pswitch_10c  #00000037
        :pswitch_10c  #00000038
        :pswitch_10c  #00000039
    .end packed-switch

    .line 1179
    :pswitch_data_1b0
    .packed-switch 0x30
        :pswitch_152  #00000030
        :pswitch_152  #00000031
        :pswitch_152  #00000032
        :pswitch_152  #00000033
        :pswitch_152  #00000034
        :pswitch_152  #00000035
        :pswitch_152  #00000036
        :pswitch_152  #00000037
        :pswitch_152  #00000038
        :pswitch_152  #00000039
    .end packed-switch
.end method

.method private roundup()V
    .registers 5

    const/16 v3, 0x39

    .line 386
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    .line 387
    if-ne v0, v3, :cond_2b

    .line 388
    :goto_c
    if-ne v0, v3, :cond_1b

    if-lez v1, :cond_1b

    .line 389
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 390
    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    goto :goto_c

    .line 392
    :cond_1b
    if-ne v0, v3, :cond_2b

    .line 394
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 395
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput-char v2, v0, v1

    .line 401
    :goto_2a
    return-void

    .line 400
    :cond_2b
    iget-object v2, p0, Lsun/misc/FloatingDecimal;->digits:[C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    aput-char v0, v2, v1

    goto :goto_2a
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2391
    const-string v0, "^0+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ulp(DZ)D
    .registers 11

    const/16 v6, 0x34

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    .line 245
    ushr-long v0, v2, v6

    long-to-int v0, v0

    .line 247
    if-eqz p2, :cond_21

    if-lt v0, v6, :cond_21

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_21

    .line 250
    add-int/lit8 v0, v0, -0x1

    .line 252
    :cond_21
    if-le v0, v6, :cond_2f

    .line 253
    add-int/lit8 v0, v0, -0x34

    int-to-long v0, v0

    shl-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 259
    :goto_2b
    if-eqz p2, :cond_2e

    neg-double v0, v0

    .line 261
    :cond_2e
    return-wide v0

    .line 254
    :cond_2f
    if-nez v0, :cond_34

    .line 255
    const-wide/16 v0, 0x1

    goto :goto_2b

    .line 257
    :cond_34
    const-wide/16 v2, 0x1

    add-int/lit8 v0, v0, -0x1

    shl-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_2b
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)V
    .registers 6

    const/4 v3, 0x0

    .line 990
    sget-object v0, Lsun/misc/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 991
    invoke-direct {p0, v0}, Lsun/misc/FloatingDecimal;->getChars([C)I

    move-result v1

    .line 992
    instance-of v2, p1, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 993
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 997
    :cond_16
    :goto_16
    return-void

    .line 994
    :cond_17
    instance-of v2, p1, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_16

    .line 995
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, v3, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16
.end method

.method public doubleValue()D
    .registers 15

    .line 1256
    iget v0, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1262
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    sget-object v1, Lsun/misc/FloatingDecimal;->infinity:[C

    if-eq v0, v1, :cond_12

    sget-object v1, Lsun/misc/FloatingDecimal;->notANumber:[C

    if-ne v0, v1, :cond_1b

    :cond_12
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    sget-object v1, Lsun/misc/FloatingDecimal;->notANumber:[C

    if-ne v0, v1, :cond_289

    .line 1264
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 1600
    :goto_1a
    return-wide v0

    .line 1269
    :cond_1b
    iget-boolean v2, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_25

    .line 1270
    const/4 v2, 0x0

    iput v2, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 1276
    :cond_25
    iget-object v2, p0, Lsun/misc/FloatingDecimal;->digits:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    add-int/lit8 v2, v2, -0x30

    .line 1277
    const/16 v3, 0x9

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1278
    const/4 v3, 0x1

    :goto_33
    if-ge v3, v6, :cond_41

    .line 1279
    mul-int/lit8 v2, v2, 0xa

    iget-object v7, p0, Lsun/misc/FloatingDecimal;->digits:[C

    aget-char v7, v7, v3

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x30

    .line 1278
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1281
    :cond_41
    int-to-long v2, v2

    .line 1282
    :goto_42
    if-ge v6, v5, :cond_52

    .line 1283
    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    iget-object v7, p0, Lsun/misc/FloatingDecimal;->digits:[C

    aget-char v7, v7, v6

    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 1282
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 1285
    :cond_52
    long-to-double v6, v2

    .line 1286
    iget v8, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    sub-int v10, v8, v5

    .line 1293
    iget v11, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    const-wide/16 v8, 0x0

    const/16 v12, 0xf

    if-gt v11, v12, :cond_ff

    .line 1304
    if-eqz v10, :cond_67

    const-wide/16 v12, 0x0

    cmpl-double v11, v6, v12

    if-nez v11, :cond_70

    :cond_67
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_2a6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v0, v6

    goto :goto_1a

    .line 1306
    :cond_70
    if-ltz v10, :cond_cf

    .line 1307
    sget v4, Lsun/misc/FloatingDecimal;->maxSmallTen:I

    if-gt v10, v4, :cond_9d

    .line 1312
    sget-object v1, Lsun/misc/FloatingDecimal;->small10pow:[D

    aget-wide v2, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v6

    .line 1313
    iget-boolean v4, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v4, :cond_8c

    .line 1314
    aget-wide v4, v1, v10

    div-double v4, v2, v4

    .line 1315
    cmpl-double v1, v4, v6

    if-nez v1, :cond_92

    .line 1317
    :goto_8a
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 1319
    :cond_8c
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_9a

    neg-double v0, v2

    goto :goto_1a

    .line 1316
    :cond_92
    cmpg-double v0, v4, v6

    if-gez v0, :cond_98

    const/4 v0, 0x1

    goto :goto_8a

    .line 1317
    :cond_98
    const/4 v0, -0x1

    goto :goto_8a

    :cond_9a
    move-wide v0, v2

    .line 1319
    goto/16 :goto_1a

    .line 1321
    :cond_9d
    rsub-int/lit8 v0, v5, 0xf

    .line 1322
    add-int/2addr v4, v0

    if-gt v10, v4, :cond_ff

    .line 1329
    sget-object v4, Lsun/misc/FloatingDecimal;->small10pow:[D

    aget-wide v2, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v2

    .line 1330
    sub-int v2, v10, v0

    aget-wide v2, v4, v2

    mul-double/2addr v2, v6

    .line 1332
    iget-boolean v5, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v5, :cond_c0

    .line 1333
    sub-int v0, v10, v0

    aget-wide v4, v4, v0

    div-double v4, v2, v4

    .line 1334
    cmpl-double v0, v4, v6

    if-nez v0, :cond_c7

    move v0, v1

    .line 1336
    :goto_be
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 1338
    :cond_c0
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_2a9

    neg-double v0, v2

    goto/16 :goto_1a

    .line 1335
    :cond_c7
    cmpg-double v0, v4, v6

    if-gez v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_be

    .line 1336
    :cond_cd
    const/4 v0, -0x1

    goto :goto_be

    .line 1344
    :cond_cf
    sget v0, Lsun/misc/FloatingDecimal;->maxSmallTen:I

    neg-int v0, v0

    if-lt v10, v0, :cond_ff

    .line 1348
    sget-object v0, Lsun/misc/FloatingDecimal;->small10pow:[D

    neg-int v1, v10

    aget-wide v2, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v6, v2

    .line 1349
    neg-int v1, v10

    aget-wide v0, v0, v1

    mul-double/2addr v0, v2

    .line 1350
    iget-boolean v5, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v5, :cond_ed

    .line 1351
    cmpl-double v5, v0, v6

    if-nez v5, :cond_f4

    move v0, v4

    .line 1353
    :goto_eb
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 1355
    :cond_ed
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_fc

    neg-double v0, v2

    goto/16 :goto_1a

    .line 1352
    :cond_f4
    cmpg-double v0, v0, v6

    if-gez v0, :cond_fa

    const/4 v0, 0x1

    goto :goto_eb

    .line 1353
    :cond_fa
    const/4 v0, -0x1

    goto :goto_eb

    :cond_fc
    move-wide v0, v2

    .line 1355
    goto/16 :goto_1a

    .line 1293
    :cond_ff
    if-lez v10, :cond_1e7

    .line 1372
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    const/16 v1, 0x135

    if-le v0, v1, :cond_113

    .line 1377
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_10f

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto/16 :goto_1a

    :cond_10f
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    goto/16 :goto_1a

    .line 1379
    :cond_113
    and-int/lit8 v0, v10, 0xf

    if-eqz v0, :cond_2a3

    .line 1380
    sget-object v0, Lsun/misc/FloatingDecimal;->small10pow:[D

    and-int/lit8 v1, v10, 0xf

    aget-wide v0, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v6

    .line 1382
    :goto_121
    shr-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_1e4

    .line 1384
    const/4 v4, 0x0

    :goto_126
    const/4 v7, 0x1

    if-le v6, v7, :cond_137

    .line 1385
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_132

    .line 1386
    sget-object v7, Lsun/misc/FloatingDecimal;->big10pow:[D

    aget-wide v8, v7, v4

    mul-double/2addr v0, v8

    .line 1384
    :cond_132
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_126

    .line 1394
    :cond_137
    sget-object v6, Lsun/misc/FloatingDecimal;->big10pow:[D

    aget-wide v6, v6, v4

    mul-double/2addr v6, v0

    .line 1395
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 1408
    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double/2addr v0, v6

    .line 1409
    sget-object v6, Lsun/misc/FloatingDecimal;->big10pow:[D

    aget-wide v6, v6, v4

    .line 1410
    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 1411
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_158

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto/16 :goto_1a

    :cond_158
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    goto/16 :goto_1a

    .line 1413
    :cond_15c
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    :goto_161
    move-wide v8, v0

    .line 1417
    :goto_162
    new-instance v1, Lsun/misc/FDBigInt;

    iget-object v4, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-direct/range {v1 .. v6}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    .line 1474
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    iget v2, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    sub-int v2, v0, v2

    .line 1481
    :cond_171
    invoke-direct {p0, v8, v9}, Lsun/misc/FloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 1495
    if-ltz v2, :cond_245

    .line 1496
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, v2

    move v5, v4

    move v6, v2

    .line 1502
    :goto_17c
    iget v4, p0, Lsun/misc/FloatingDecimal;->bigIntExp:I

    if-ltz v4, :cond_24c

    .line 1503
    add-int/2addr v5, v4

    .line 1507
    :goto_181
    iget v4, p0, Lsun/misc/FloatingDecimal;->bigIntExp:I

    iget v10, p0, Lsun/misc/FloatingDecimal;->bigIntNBits:I

    add-int v11, v4, v10

    const/16 v12, -0x3fe

    if-gt v11, v12, :cond_24f

    .line 1515
    add-int/lit16 v4, v4, 0x3ff

    add-int/lit8 v4, v4, 0x34

    .line 1519
    :goto_18f
    add-int v10, v5, v4

    .line 1520
    add-int/2addr v4, v6

    .line 1523
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1524
    sub-int/2addr v5, v6

    .line 1528
    sub-int/2addr v10, v6

    invoke-static {v7, v3, v10}, Lsun/misc/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 1529
    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    sub-int/2addr v4, v6

    invoke-static {v10, v0, v4}, Lsun/misc/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 1547
    invoke-virtual {v7, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v4

    if-lez v4, :cond_253

    .line 1548
    const/4 v4, 0x1

    .line 1549
    invoke-virtual {v7, v0}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 1550
    iget v6, p0, Lsun/misc/FloatingDecimal;->bigIntNBits:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c9

    iget v6, p0, Lsun/misc/FloatingDecimal;->bigIntExp:I

    const/16 v7, -0x3ff

    if-le v6, v7, :cond_1c9

    .line 1555
    add-int/lit8 v5, v5, -0x1

    .line 1556
    if-gez v5, :cond_1c9

    .line 1559
    const/4 v5, 0x0

    .line 1560
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 1571
    :cond_1c9
    :goto_1c9
    invoke-static {v3, v5}, Lsun/misc/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v3

    .line 1572
    invoke-virtual {v0, v3}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v0

    if-gez v0, :cond_25f

    .line 1575
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v0, :cond_1dc

    .line 1576
    if-eqz v4, :cond_25c

    const/4 v0, -0x1

    :goto_1da
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    .line 1600
    :cond_1dc
    :goto_1dc
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_1e1

    neg-double v8, v8

    :cond_1e1
    move-wide v0, v8

    goto/16 :goto_1a

    :cond_1e4
    move-wide v8, v0

    .line 1382
    goto/16 :goto_162

    .line 1417
    :cond_1e7
    if-gez v10, :cond_29d

    .line 1418
    neg-int v4, v10

    .line 1419
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    const/16 v1, -0x145

    if-ge v0, v1, :cond_1f8

    .line 1424
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_29a

    const-wide/16 v0, 0x0

    goto/16 :goto_1a

    .line 1426
    :cond_1f8
    and-int/lit8 v0, v4, 0xf

    if-eqz v0, :cond_297

    .line 1427
    sget-object v0, Lsun/misc/FloatingDecimal;->small10pow:[D

    and-int/lit8 v1, v4, 0xf

    aget-wide v0, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v6, v0

    .line 1429
    :goto_207
    shr-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_242

    .line 1431
    const/4 v4, 0x0

    :goto_20c
    const/4 v7, 0x1

    if-le v6, v7, :cond_21d

    .line 1432
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_218

    .line 1433
    sget-object v7, Lsun/misc/FloatingDecimal;->tiny10pow:[D

    aget-wide v10, v7, v4

    mul-double/2addr v0, v10

    .line 1431
    :cond_218
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_20c

    .line 1441
    :cond_21d
    sget-object v10, Lsun/misc/FloatingDecimal;->tiny10pow:[D

    aget-wide v6, v10, v4

    mul-double/2addr v6, v0

    .line 1442
    const-wide/16 v12, 0x0

    cmpl-double v11, v6, v12

    if-nez v11, :cond_295

    .line 1455
    aget-wide v6, v10, v4

    .line 1457
    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, v10

    mul-double/2addr v0, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_23d

    .line 1458
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_23a

    const-wide/16 v8, 0x0

    :cond_23a
    move-wide v0, v8

    goto/16 :goto_1a

    .line 1460
    :cond_23d
    const-wide/16 v0, 0x1

    :goto_23f
    move-wide v8, v0

    .line 1462
    goto/16 :goto_162

    :cond_242
    move-wide v8, v0

    .line 1429
    goto/16 :goto_162

    .line 1499
    :cond_245
    neg-int v4, v2

    .line 1500
    const/4 v0, 0x0

    const/4 v6, 0x0

    move v3, v4

    move v5, v4

    goto/16 :goto_17c

    .line 1505
    :cond_24c
    sub-int/2addr v6, v4

    goto/16 :goto_181

    .line 1517
    :cond_24f
    rsub-int/lit8 v4, v10, 0x36

    goto/16 :goto_18f

    .line 1563
    :cond_253
    if-gez v4, :cond_1dc

    .line 1564
    const/4 v4, 0x0

    .line 1565
    invoke-virtual {v0, v7}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v0

    goto/16 :goto_1c9

    .line 1576
    :cond_25c
    const/4 v0, 0x1

    goto/16 :goto_1da

    .line 1579
    :cond_25f
    if-nez v0, :cond_276

    .line 1582
    invoke-static {v8, v9, v4}, Lsun/misc/FloatingDecimal;->ulp(DZ)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v0, v2

    add-double/2addr v8, v0

    .line 1584
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    if-eqz v0, :cond_1dc

    .line 1585
    if-eqz v4, :cond_274

    const/4 v0, -0x1

    :goto_270
    iput v0, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    goto/16 :goto_1dc

    :cond_274
    const/4 v0, 0x1

    goto :goto_270

    .line 1593
    :cond_276
    invoke-static {v8, v9, v4}, Lsun/misc/FloatingDecimal;->ulp(DZ)D

    move-result-wide v4

    add-double/2addr v8, v4

    .line 1594
    const-wide/16 v4, 0x0

    cmpl-double v0, v8, v4

    if-eqz v0, :cond_1dc

    const-wide/high16 v4, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v0, v8, v4

    if-nez v0, :cond_171

    goto/16 :goto_1dc

    .line 1266
    :cond_289
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_291

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto/16 :goto_1a

    :cond_291
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    goto/16 :goto_1a

    :cond_295
    move-wide v0, v6

    goto :goto_23f

    :cond_297
    move-wide v0, v6

    goto/16 :goto_207

    :cond_29a
    move-wide v0, v8

    goto/16 :goto_1a

    :cond_29d
    move-wide v8, v6

    goto/16 :goto_162

    :cond_2a0
    move-wide v0, v6

    goto/16 :goto_161

    :cond_2a3
    move-wide v0, v6

    goto/16 :goto_121

    :cond_2a6
    move-wide v0, v6

    goto/16 :goto_1a

    :cond_2a9
    move-wide v0, v2

    goto/16 :goto_1a
.end method

.method public floatValue()F
    .registers 11

    const/high16 v3, 0x7f800000  # Float.POSITIVE_INFINITY

    const/4 v4, 0x0

    .line 1616
    iget v0, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1621
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    sget-object v5, Lsun/misc/FloatingDecimal;->infinity:[C

    const/high16 v1, -0x800000  # Float.NEGATIVE_INFINITY

    if-eq v0, v5, :cond_17

    sget-object v5, Lsun/misc/FloatingDecimal;->notANumber:[C

    if-ne v0, v5, :cond_20

    .line 1622
    :cond_17
    iget-object v0, p0, Lsun/misc/FloatingDecimal;->digits:[C

    sget-object v2, Lsun/misc/FloatingDecimal;->notANumber:[C

    if-ne v0, v2, :cond_db

    .line 1623
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 1750
    :cond_1f
    :goto_1f
    return v0

    .line 1631
    :cond_20
    const/4 v5, 0x0

    aget-char v0, v0, v5

    add-int/lit8 v5, v0, -0x30

    .line 1632
    const/4 v0, 0x1

    :goto_26
    if-ge v0, v2, :cond_34

    .line 1633
    mul-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lsun/misc/FloatingDecimal;->digits:[C

    aget-char v6, v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x30

    .line 1632
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1635
    :cond_34
    int-to-float v0, v5

    .line 1636
    iget v6, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    sub-int v7, v6, v2

    .line 1643
    iget v8, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    const/4 v9, 0x7

    if-gt v8, v9, :cond_81

    .line 1654
    if-eqz v7, :cond_44

    cmpl-float v5, v0, v4

    if-nez v5, :cond_4a

    .line 1655
    :cond_44
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1656
    :cond_4a
    if-ltz v7, :cond_70

    .line 1657
    sget v5, Lsun/misc/FloatingDecimal;->singleMaxSmallTen:I

    if-gt v7, v5, :cond_5b

    .line 1662
    sget-object v1, Lsun/misc/FloatingDecimal;->singleSmall10pow:[F

    aget v1, v1, v7

    mul-float/2addr v0, v1

    .line 1663
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1665
    :cond_5b
    rsub-int/lit8 v2, v2, 0x7

    .line 1666
    add-int/2addr v5, v2

    if-gt v7, v5, :cond_b0

    .line 1673
    sget-object v1, Lsun/misc/FloatingDecimal;->singleSmall10pow:[F

    aget v3, v1, v2

    .line 1674
    mul-float/2addr v0, v3

    sub-int v2, v7, v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    .line 1675
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1681
    :cond_70
    sget v2, Lsun/misc/FloatingDecimal;->singleMaxSmallTen:I

    neg-int v2, v2

    if-lt v7, v2, :cond_b0

    .line 1685
    sget-object v1, Lsun/misc/FloatingDecimal;->singleSmall10pow:[F

    neg-int v2, v7

    aget v1, v1, v2

    div-float/2addr v0, v1

    .line 1686
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1692
    :cond_81
    if-lt v6, v8, :cond_b0

    add-int v0, v8, v6

    const/16 v6, 0xf

    if-gt v0, v6, :cond_b0

    .line 1702
    int-to-long v0, v5

    .line 1703
    :goto_8a
    iget v3, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    if-ge v2, v3, :cond_9c

    .line 1704
    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    iget-object v3, p0, Lsun/misc/FloatingDecimal;->digits:[C

    aget-char v3, v3, v2

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 1703
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 1706
    :cond_9c
    long-to-double v0, v0

    .line 1707
    iget v2, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    .line 1708
    sget-object v4, Lsun/misc/FloatingDecimal;->small10pow:[D

    sub-int/2addr v2, v3

    aget-wide v2, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 1709
    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 1710
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto/16 :goto_1f

    .line 1722
    :cond_b0
    iget v0, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    const/16 v2, 0x27

    if-le v0, v2, :cond_c0

    .line 1727
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_bd

    move v0, v1

    goto/16 :goto_1f

    :cond_bd
    move v0, v3

    goto/16 :goto_1f

    .line 1728
    :cond_c0
    const/16 v1, -0x2e

    if-ge v0, v1, :cond_cb

    .line 1733
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_c8

    :cond_c8
    move v0, v4

    goto/16 :goto_1f

    .line 1748
    :cond_cb
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->fromHex:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lsun/misc/FloatingDecimal;->mustSetRoundDir:Z

    .line 1749
    invoke-virtual {p0}, Lsun/misc/FloatingDecimal;->doubleValue()D

    move-result-wide v0

    .line 1750
    invoke-virtual {p0, v0, v1}, Lsun/misc/FloatingDecimal;->stickyRound(D)F

    move-result v0

    goto/16 :goto_1f

    .line 1625
    :cond_db
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_e2

    :goto_df
    move v0, v1

    goto/16 :goto_1f

    :cond_e2
    move v1, v3

    goto :goto_df
.end method

.method stickyRound(D)F
    .registers 12

    const-wide/high16 v6, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 275
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 276
    and-long v2, v0, v6

    .line 277
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    cmp-long v2, v2, v6

    if-nez v2, :cond_14

    .line 280
    :cond_12
    double-to-float v0, p1

    .line 283
    :goto_13
    return v0

    .line 282
    :cond_14
    iget v2, p0, Lsun/misc/FloatingDecimal;->roundDir:I

    int-to-long v2, v2

    .line 283
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_13
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .registers 5

    .line 905
    sget-object v0, Lsun/misc/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 906
    invoke-direct {p0, v0}, Lsun/misc/FloatingDecimal;->getChars([C)I

    move-result v1

    .line 907
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    .line 891
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 892
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 893
    :cond_13
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal;->isExceptional:Z

    if-eqz v1, :cond_24

    .line 894
    iget-object v1, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 901
    :goto_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1

    .line 896
    :cond_24
    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    iget-object v1, p0, Lsun/misc/FloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 898
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 899
    iget v1, p0, Lsun/misc/FloatingDecimal;->decExponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method
