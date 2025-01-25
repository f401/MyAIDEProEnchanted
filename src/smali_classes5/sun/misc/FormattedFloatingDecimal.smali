.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


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

.field decExponentRounded:I

.field digits:[C

.field private form:Lsun/misc/FormattedFloatingDecimal$Form;

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field precision:I

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
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    .line 1933
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

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    .line 1942
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

    sput-object v1, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    .line 1948
    new-array v2, v4, [D

    fill-array-data v2, :array_15e

    sput-object v2, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    .line 1950
    new-array v2, v4, [D

    fill-array-data v2, :array_176

    sput-object v2, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    .line 1953
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    .line 1954
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    .line 1956
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_18e

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    .line 1974
    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_1ae

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    .line 2005
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_21e

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    .line 2035
    new-array v0, v5, [C

    fill-array-data v0, :array_258

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    .line 2036
    new-array v0, v6, [C

    fill-array-data v0, :array_264

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    .line 2037
    new-array v0, v5, [C

    fill-array-data v0, :array_26c

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    .line 2044
    const-string v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    return-void

    .line 1948
    nop

    :array_15e
    .array-data 8
        0x4341c37937e08000L  # 1.0E16
        0x4693b8b5b5056e17L  # 1.0E32
        0x4d384f03e93ff9f5L  # 1.0E64
        0x5a827748f9301d32L  # 1.0E128
        0x75154fdd7f73bf3cL  # 1.0E256
    .end array-data

    .line 1950
    :array_176
    .array-data 8
        0x3c9cd2b297d889bcL  # 1.0E-16
        0x3949f623d5a8a733L  # 1.0E-32
        0x32a50ffd44f4a73dL  # 1.0E-64
        0x255bba08cf8c979dL  # 1.0E-128
        0xac8062864ac6f43L  # 1.0E-256
    .end array-data

    .line 1956
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

    .line 1974
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

    .line 2005
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

    .line 2035
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

    .line 2036
    :array_264
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    .line 2037
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
    .registers 6

    .line 470
    const v0, 0x7fffffff

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 471
    return-void
.end method

.method public constructor <init>(DILsun/misc/FormattedFloatingDecimal$Form;)V
    .registers 14

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 475
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 480
    iput p3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 481
    iput-object p4, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 484
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    .line 485
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 486
    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    .line 492
    :goto_23
    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    long-to-int v3, v2

    .line 493
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    .line 494
    const/16 v2, 0x7ff

    if-ne v3, v2, :cond_53

    .line 495
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 496
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 497
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 502
    :goto_41
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    array-length v0, v0

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 531
    :goto_46
    return-void

    .line 488
    :cond_47
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_23

    .line 499
    :cond_4b
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_41

    .line 505
    :cond_53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 510
    if-nez v3, :cond_83

    .line 511
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_69

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 514
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 515
    const/4 v0, 0x1

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    goto :goto_46

    .line 518
    :cond_69
    :goto_69
    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_77

    .line 519
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 520
    add-int/lit8 v3, v3, -0x1

    goto :goto_69

    .line 522
    :cond_77
    add-int/lit8 v2, v3, 0x34

    add-int/lit8 v2, v2, 0x1

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 528
    :goto_7d
    add-int/lit16 v3, v3, -0x3ff

    invoke-direct {p0, v3, v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    goto :goto_46

    .line 525
    :cond_83
    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v0, v4

    .line 526
    const/16 v2, 0x35

    goto :goto_7d
.end method

.method public constructor <init>(F)V
    .registers 4

    .line 538
    const v0, 0x7fffffff

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-direct {p0, p1, v0, v1}, Lsun/misc/FormattedFloatingDecimal;-><init>(FILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 539
    return-void
.end method

.method public constructor <init>(FILsun/misc/FormattedFloatingDecimal$Form;)V
    .registers 10

    const/high16 v5, 0x800000

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    iput-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 542
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 547
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 548
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 551
    and-int v1, v0, v2

    if-eqz v1, :cond_3e

    .line 552
    iput-boolean v3, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 553
    xor-int/2addr v0, v2

    .line 559
    :goto_1e
    const/high16 v1, 0x7f800000  # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v2, v1, 0x17

    .line 560
    const v1, 0x7fffff

    and-int/2addr v0, v1

    .line 561
    const/16 v1, 0xff

    if-ne v2, v1, :cond_48

    .line 562
    iput-boolean v3, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 563
    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_41

    .line 564
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 569
    :goto_38
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    array-length v0, v0

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 598
    :goto_3d
    return-void

    .line 555
    :cond_3e
    iput-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_1e

    .line 566
    :cond_41
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 567
    iput-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    goto :goto_38

    .line 572
    :cond_48
    iput-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 577
    if-nez v2, :cond_70

    .line 578
    if-nez v0, :cond_57

    .line 580
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 581
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 582
    iput v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    goto :goto_3d

    .line 585
    :cond_57
    :goto_57
    and-int v1, v0, v5

    if-nez v1, :cond_60

    .line 586
    shl-int/lit8 v0, v0, 0x1

    .line 587
    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 589
    :cond_60
    add-int/lit8 v1, v2, 0x17

    add-int/lit8 v1, v1, 0x1

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 595
    :goto_66
    add-int/lit8 v2, v2, -0x7f

    int-to-long v4, v0

    const/16 v0, 0x1d

    shl-long/2addr v4, v0

    invoke-direct {p0, v2, v4, v5, v1}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    goto :goto_3d

    .line 592
    :cond_70
    or-int/2addr v0, v5

    .line 593
    const/16 v1, 0x18

    goto :goto_66
.end method

.method private constructor <init>(ZI[CIZILsun/misc/FormattedFloatingDecimal$Form;)V
    .registers 9

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 43
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    .line 44
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 53
    iput-boolean p1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    .line 54
    iput-boolean p5, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    .line 55
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 56
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 57
    iput p4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 58
    iput p6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    .line 59
    iput-object p7, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 60
    return-void
.end method

.method private applyPrecision(I)[C
    .registers 9

    const/16 v6, 0x35

    const/16 v5, 0x31

    const/16 v4, 0x39

    const/4 v1, 0x0

    .line 426
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    new-array v3, v0, [C

    move v0, v1

    .line 427
    :goto_c
    array-length v2, v3

    if-ge v0, v2, :cond_16

    const/16 v2, 0x30

    aput-char v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 429
    :cond_16
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge p1, v0, :cond_1c

    if-gez p1, :cond_25

    .line 431
    :cond_1c
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 462
    :goto_24
    return-object v0

    .line 434
    :cond_25
    if-nez p1, :cond_31

    .line 437
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v0, v0, v1

    if-lt v0, v6, :cond_2f

    .line 438
    aput-char v5, v3, v1

    :cond_2f
    move-object v0, v3

    .line 440
    goto :goto_24

    .line 444
    :cond_31
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v2, v0, p1

    .line 445
    if-lt v2, v6, :cond_57

    if-lez p1, :cond_57

    .line 446
    add-int/lit8 v2, p1, -0x1

    aget-char v0, v0, v2

    .line 447
    if-ne v0, v4, :cond_64

    .line 448
    :goto_3f
    if-ne v0, v4, :cond_4a

    if-lez v2, :cond_4a

    .line 449
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    goto :goto_3f

    .line 451
    :cond_4a
    if-ne v0, v4, :cond_50

    .line 453
    aput-char v5, v3, v1

    move-object v0, v3

    .line 454
    goto :goto_24

    :cond_50
    move v1, v2

    .line 447
    :goto_51
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    aput-char v0, v3, v1

    move p1, v1

    .line 459
    :cond_57
    :goto_57
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_62

    .line 460
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v0, v0, p1

    aput-char v0, v3, p1

    goto :goto_57

    :cond_62
    move-object v0, v3

    .line 462
    goto :goto_24

    :cond_64
    move v1, v2

    goto :goto_51
.end method

.method private static big5pow(I)Lsun/misc/FDBigInt;
    .registers 6

    const-class v0, Lsun/misc/FormattedFloatingDecimal;

    monitor-enter v0

    .line 137
    :try_start_3
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    if-nez v0, :cond_1b

    .line 139
    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [Lsun/misc/FDBigInt;

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    .line 145
    :cond_d
    :goto_d
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, p0

    if-eqz v0, :cond_36

    .line 146
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    .line 170
    :goto_1a
    return-object v0

    .line 140
    :cond_1b
    :try_start_1b
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v0, v0

    if-gt v0, p0, :cond_d

    .line 141
    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [Lsun/misc/FDBigInt;

    .line 142
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_31

    goto :goto_d

    .line 136
    :catchall_31
    move-exception v0

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    throw v0

    .line 147
    :cond_36
    :try_start_36
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge p0, v0, :cond_4c

    .line 148
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    new-instance v0, Lsun/misc/FDBigInt;

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v2, v2, p0

    invoke-direct {v0, v2}, Lsun/misc/FDBigInt;-><init>(I)V
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_31

    aput-object v0, v1, p0

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 149
    :cond_4c
    :try_start_4c
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    array-length v0, v0

    if-ge p0, v0, :cond_62

    .line 150
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    new-instance v0, Lsun/misc/FDBigInt;

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v2, v2, p0

    invoke-direct {v0, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_31

    aput-object v0, v1, p0

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 159
    :cond_62
    shr-int/lit8 v1, p0, 0x1

    .line 160
    sub-int v2, p0, v1

    .line 161
    :try_start_66
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, v1

    .line 162
    if-nez v0, :cond_9d

    .line 163
    invoke-static {v1}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    move-object v1, v0

    .line 164
    :goto_71
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v0, v0

    if-ge v2, v0, :cond_86

    .line 165
    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_31

    move-result-object v0

    aput-object v0, v3, p0

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    goto :goto_1a

    .line 167
    :cond_86
    :try_start_86
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    aget-object v0, v0, v2

    .line 168
    if-nez v0, :cond_90

    .line 169
    invoke-static {v2}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 170
    :cond_90
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    invoke-virtual {v1, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_31

    move-result-object v0

    aput-object v0, v2, p0

    const-class v1, Lsun/misc/FormattedFloatingDecimal;

    monitor-exit v1

    goto/16 :goto_1a

    :cond_9d
    move-object v1, v0

    goto :goto_71
.end method

.method private checkExponent(I)I
    .registers 6

    const/4 v0, 0x0

    .line 413
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge p1, v1, :cond_7

    if-gez p1, :cond_a

    .line 414
    :cond_7
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 420
    :goto_9
    return v0

    :cond_a
    move v1, v0

    .line 416
    :goto_b
    if-ge v1, p1, :cond_1b

    .line 417
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v2, v2, v1

    const/16 v3, 0x39

    if-eq v2, v3, :cond_18

    .line 419
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    goto :goto_9

    .line 416
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 420
    :cond_1b
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v2, v2, p1

    const/16 v3, 0x35

    if-lt v2, v3, :cond_26

    const/4 v0, 0x1

    :cond_26
    add-int/2addr v0, v1

    goto :goto_9
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .registers 4

    .line 198
    new-instance v0, Lsun/misc/FDBigInt;

    invoke-static {p0}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    .line 199
    if-eqz p1, :cond_e

    .line 200
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 202
    :cond_e
    return-object v0
.end method

.method private static countBits(J)I
    .registers 12

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 109
    cmp-long v1, p0, v6

    if-nez v1, :cond_30

    .line 127
    :cond_a
    return v0

    .line 111
    :goto_b
    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    .line 112
    shl-long/2addr v2, v9

    goto :goto_b

    .line 114
    :cond_14
    :goto_14
    cmp-long v1, v2, v6

    if-lez v1, :cond_1a

    .line 115
    shl-long/2addr v2, v8

    goto :goto_14

    .line 119
    :cond_1a
    :goto_1a
    const-wide v4, 0xffffffffffffffL

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_28

    .line 120
    shl-long/2addr v2, v9

    .line 121
    add-int/lit8 v0, v0, 0x8

    goto :goto_1a

    .line 123
    :cond_28
    :goto_28
    cmp-long v1, v2, v6

    if-eqz v1, :cond_a

    .line 124
    shl-long/2addr v2, v8

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_30
    move-wide v2, p0

    goto :goto_b
.end method

.method private developLongDigits(IJJ)V
    .registers 14

    .line 320
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const-wide/16 v0, 0xa

    cmp-long v0, p4, v0

    if-ltz v0, :cond_f

    .line 321
    const-wide/16 v0, 0xa

    div-long/2addr p4, v0

    .line 320
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 322
    :cond_f
    if-eqz v2, :cond_af

    .line 323
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v0, v0, v2

    shl-long v4, v0, v2

    .line 324
    div-long v0, p2, v4

    .line 326
    add-int/2addr v2, p1

    .line 327
    rem-long v6, p2, v4

    const/4 v3, 0x1

    shr-long/2addr v4, v3

    cmp-long v3, v6, v4

    if-ltz v3, :cond_ac

    .line 329
    const-wide/16 v4, 0x1

    add-long p2, v0, v4

    .line 332
    :goto_26
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_6c

    .line 333
    long-to-int v5, p2

    .line 337
    const/16 v1, 0xa

    .line 338
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 339
    const/16 v3, 0x9

    .line 340
    rem-int/lit8 v4, v5, 0xa

    .line 341
    div-int/lit8 v5, v5, 0xa

    .line 342
    :goto_3e
    if-nez v4, :cond_47

    .line 343
    add-int/lit8 v2, v2, 0x1

    .line 344
    rem-int/lit8 v4, v5, 0xa

    .line 345
    div-int/lit8 v5, v5, 0xa

    goto :goto_3e

    .line 347
    :cond_47
    :goto_47
    if-eqz v5, :cond_57

    .line 348
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 349
    add-int/lit8 v2, v2, 0x1

    .line 350
    rem-int/lit8 v4, v5, 0xa

    .line 351
    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_47

    .line 353
    :cond_57
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 376
    :goto_5c
    sub-int/2addr v1, v3

    .line 377
    new-array v4, v1, [C

    .line 378
    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 380
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 381
    iput v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 382
    return-void

    .line 357
    :cond_6c
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 359
    const/16 v3, 0x13

    .line 360
    const-wide/16 v4, 0xa

    rem-long v4, p2, v4

    long-to-int v1, v4

    .line 361
    const-wide/16 v4, 0xa

    div-long v4, p2, v4

    .line 362
    :goto_7f
    if-nez v1, :cond_8c

    .line 363
    add-int/lit8 v2, v2, 0x1

    .line 364
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v1, v6

    .line 365
    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    goto :goto_7f

    .line 367
    :cond_8c
    :goto_8c
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_a4

    .line 368
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, v0, v3

    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 370
    const-wide/16 v6, 0xa

    rem-long v6, v4, v6

    long-to-int v1, v6

    .line 371
    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_8c

    .line 373
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

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 218
    const/16 v2, 0x34

    ushr-long v2, v0, v2

    long-to-int v2, v2

    .line 219
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    .line 220
    if-lez v2, :cond_30

    .line 221
    or-long/2addr v0, v8

    .line 230
    :cond_1a
    invoke-static {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    move-result v3

    .line 236
    add-int/lit16 v2, v2, -0x3ff

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    .line 240
    iput v3, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    .line 241
    new-instance v2, Lsun/misc/FDBigInt;

    rsub-int/lit8 v3, v3, 0x35

    ushr-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lsun/misc/FDBigInt;-><init>(J)V

    return-object v2

    .line 223
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 225
    :goto_32
    and-long v4, v0, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1a

    .line 226
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 227
    add-int/lit8 v2, v2, -0x1

    goto :goto_32
.end method

.method private dtoa(IJI)V
    .registers 25

    .line 610
    invoke-static/range {p2 .. p3}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    move-result v7

    .line 611
    const/4 v2, 0x0

    sub-int v3, v7, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 612
    const/16 v3, 0x3e

    move/from16 v0, p1

    if-gt v0, v3, :cond_50

    const/16 v3, -0x15

    move/from16 v0, p1

    if-lt v0, v3, :cond_50

    .line 616
    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    array-length v3, v3

    if-ge v2, v3, :cond_50

    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    aget v3, v3, v2

    add-int/2addr v3, v7

    const/16 v4, 0x40

    if-ge v3, v4, :cond_50

    .line 633
    if-nez v2, :cond_50

    .line 634
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_48

    .line 635
    const-wide/16 v2, 0x1

    sub-int v4, p1, p4

    add-int/lit8 v4, v4, -0x1

    shl-long v6, v2, v4

    .line 639
    :goto_37
    const/16 v2, 0x34

    move/from16 v0, p1

    if-lt v0, v2, :cond_4b

    .line 640
    add-int/lit8 v2, p1, -0x34

    shl-long v4, p2, v2

    .line 644
    :goto_41
    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lsun/misc/FormattedFloatingDecimal;->developLongDigits(IJJ)V

    .line 963
    :cond_47
    :goto_47
    return-void

    .line 637
    :cond_48
    const-wide/16 v6, 0x0

    goto :goto_37

    .line 642
    :cond_4b
    rsub-int/lit8 v2, p1, 0x34

    ushr-long v4, p2, v2

    goto :goto_41

    .line 696
    :cond_50
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide v8, -0x10000000000001L

    and-long v8, v8, p2

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 698
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

    double-to-int v6, v4

    .line 707
    const/4 v3, 0x0

    neg-int v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 708
    add-int v3, v8, v2

    add-int v4, v3, p1

    .line 710
    const/4 v3, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 711
    add-int v3, v9, v2

    .line 713
    rsub-int/lit8 v2, v7, 0x35

    ushr-long v10, p2, v2

    .line 725
    add-int/lit8 v2, v7, -0x1

    sub-int v2, v4, v2

    .line 726
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 727
    sub-int/2addr v2, v5

    .line 728
    sub-int/2addr v3, v5

    .line 729
    sub-int v4, v4, p4

    sub-int/2addr v4, v5

    .line 737
    const/4 v5, 0x1

    if-ne v7, v5, :cond_a6

    .line 738
    add-int/lit8 v4, v4, -0x1

    .line 740
    :cond_a6
    if-gez v4, :cond_ab

    .line 744
    sub-int/2addr v2, v4

    .line 745
    sub-int/2addr v3, v4

    .line 746
    const/4 v4, 0x0

    .line 756
    :cond_ab
    const/16 v5, 0x12

    new-array v12, v5, [C

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 757
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    array-length v13, v5

    if-ge v8, v13, :cond_139

    aget v5, v5, v8

    :goto_ba
    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 778
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    add-int/lit8 v13, v9, 0x1

    array-length v14, v5

    if-ge v13, v14, :cond_13d

    add-int/lit8 v13, v9, 0x1

    aget v5, v5, v13

    :goto_c7
    add-int/lit8 v13, v3, 0x1

    add-int/2addr v5, v13

    .line 779
    const/16 v13, 0x40

    if-ge v7, v13, :cond_212

    const/16 v13, 0x40

    if-ge v5, v13, :cond_212

    .line 780
    const/16 v13, 0x20

    if-ge v7, v13, :cond_186

    const/16 v7, 0x20

    if-ge v5, v7, :cond_186

    .line 782
    long-to-int v5, v10

    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    aget v10, v7, v8

    mul-int/2addr v5, v10

    shl-int/2addr v5, v2

    .line 783
    aget v2, v7, v9

    shl-int v9, v2, v3

    .line 784
    aget v3, v7, v8

    .line 785
    mul-int/lit8 v11, v9, 0xa

    .line 791
    const/4 v2, 0x0

    .line 792
    div-int v10, v5, v9

    .line 793
    rem-int/2addr v5, v9

    mul-int/lit8 v7, v5, 0xa

    .line 794
    shl-int/2addr v3, v4

    mul-int/lit8 v8, v3, 0xa

    .line 795
    if-ge v7, v8, :cond_142

    const/4 v4, 0x1

    .line 796
    :goto_f5
    add-int v3, v7, v8

    if-le v3, v11, :cond_144

    const/4 v5, 0x1

    .line 797
    :goto_fa
    if-nez v10, :cond_146

    if-nez v5, :cond_146

    .line 800
    add-int/lit8 v3, v6, -0x1

    .line 810
    :goto_100
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v10, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v6, v10, :cond_10f

    const/4 v6, -0x3

    if-ge v6, v3, :cond_10f

    const/16 v6, 0x8

    if-lt v3, v6, :cond_14f

    .line 811
    :cond_10f
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v7

    move v10, v2

    .line 813
    :goto_113
    if-nez v4, :cond_15a

    if-nez v5, :cond_15a

    .line 814
    div-int v13, v6, v9

    .line 815
    rem-int v2, v6, v9

    mul-int/lit8 v6, v2, 0xa

    .line 816
    mul-int/lit8 v7, v8, 0xa

    .line 817
    int-to-long v4, v7

    const-wide/16 v14, 0x0

    cmp-long v2, v4, v14

    if-lez v2, :cond_156

    .line 819
    if-ge v6, v7, :cond_152

    const/4 v4, 0x1

    .line 820
    :goto_129
    add-int v2, v6, v7

    if-le v2, v11, :cond_154

    const/4 v2, 0x1

    :goto_12e
    move v5, v2

    .line 830
    :goto_12f
    add-int/lit8 v2, v13, 0x30

    int-to-char v2, v2

    aput-char v2, v12, v10

    add-int/lit8 v2, v10, 0x1

    move v8, v7

    move v10, v2

    goto :goto_113

    .line 757
    :cond_139
    mul-int/lit8 v5, v8, 0x3

    goto/16 :goto_ba

    .line 778
    :cond_13d
    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v5, v5, 0x3

    goto :goto_c7

    .line 795
    :cond_142
    const/4 v4, 0x0

    goto :goto_f5

    .line 796
    :cond_144
    const/4 v5, 0x0

    goto :goto_fa

    .line 802
    :cond_146
    const/4 v2, 0x0

    add-int/lit8 v3, v10, 0x30

    int-to-char v3, v3

    aput-char v3, v12, v2

    const/4 v2, 0x1

    move v3, v6

    goto :goto_100

    :cond_14f
    move v6, v7

    move v10, v2

    .line 810
    goto :goto_113

    .line 819
    :cond_152
    const/4 v4, 0x0

    goto :goto_129

    .line 820
    :cond_154
    const/4 v2, 0x0

    goto :goto_12e

    .line 827
    :cond_156
    const/4 v2, 0x1

    const/4 v5, 0x1

    move v4, v2

    goto :goto_12f

    .line 813
    :cond_15a
    shl-int/lit8 v2, v6, 0x1

    sub-int/2addr v2, v11

    int-to-long v8, v2

    move v2, v5

    move v7, v4

    move v6, v3

    .line 944
    :goto_161
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 945
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 946
    move-object/from16 v0, p0

    iput v10, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    .line 950
    if-eqz v2, :cond_47

    .line 951
    if-eqz v7, :cond_2c8

    .line 952
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_2bd

    .line 955
    add-int/lit8 v2, v10, -0x1

    aget-char v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_47

    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    goto/16 :goto_47

    .line 780
    :cond_186
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    aget-wide v14, v5, v8

    mul-long/2addr v10, v14

    shl-long/2addr v10, v2

    .line 836
    aget-wide v14, v5, v9

    shl-long/2addr v14, v3

    .line 837
    aget-wide v16, v5, v8

    .line 838
    const-wide/16 v2, 0xa

    mul-long v18, v14, v2

    .line 844
    const/4 v2, 0x0

    .line 845
    div-long v8, v10, v14

    long-to-int v5, v8

    .line 846
    rem-long v8, v10, v14

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    .line 847
    shl-long v10, v16, v4

    const-wide/16 v16, 0xa

    mul-long v10, v10, v16

    .line 848
    cmp-long v3, v8, v10

    if-gez v3, :cond_1f3

    const/4 v3, 0x1

    .line 849
    :goto_1a9
    add-long v16, v8, v10

    cmp-long v4, v16, v18

    if-lez v4, :cond_1f5

    const/4 v4, 0x1

    .line 850
    :goto_1b0
    if-nez v5, :cond_1f7

    if-nez v4, :cond_1f7

    .line 853
    add-int/lit8 v6, v6, -0x1

    .line 863
    :goto_1b6
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v7, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v7, :cond_1c5

    const/4 v5, -0x3

    if-ge v5, v6, :cond_1c5

    const/16 v5, 0x8

    if-lt v6, v5, :cond_1ff

    .line 864
    :cond_1c5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    .line 866
    :goto_1c8
    if-nez v3, :cond_209

    if-nez v4, :cond_209

    .line 867
    div-long v2, v8, v14

    long-to-int v7, v2

    .line 868
    rem-long v2, v8, v14

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v2

    .line 869
    const-wide/16 v2, 0xa

    mul-long/2addr v10, v2

    .line 870
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_205

    .line 872
    cmp-long v2, v8, v10

    if-gez v2, :cond_201

    const/4 v3, 0x1

    .line 873
    :goto_1e2
    add-long v16, v8, v10

    cmp-long v2, v16, v18

    if-lez v2, :cond_203

    const/4 v2, 0x1

    :goto_1e9
    move v4, v2

    .line 883
    :goto_1ea
    add-int/lit8 v2, v7, 0x30

    int-to-char v2, v2

    aput-char v2, v12, v5

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1c8

    .line 848
    :cond_1f3
    const/4 v3, 0x0

    goto :goto_1a9

    .line 849
    :cond_1f5
    const/4 v4, 0x0

    goto :goto_1b0

    .line 855
    :cond_1f7
    const/4 v2, 0x0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v12, v2

    const/4 v2, 0x1

    goto :goto_1b6

    :cond_1ff
    move v5, v2

    .line 863
    goto :goto_1c8

    .line 872
    :cond_201
    const/4 v3, 0x0

    goto :goto_1e2

    .line 873
    :cond_203
    const/4 v2, 0x0

    goto :goto_1e9

    .line 880
    :cond_205
    const/4 v4, 0x1

    const/4 v2, 0x1

    move v3, v2

    goto :goto_1ea

    .line 866
    :cond_209
    const/4 v2, 0x1

    shl-long/2addr v8, v2

    sub-long v8, v8, v18

    move v2, v4

    move v7, v3

    move v10, v5

    .line 886
    goto/16 :goto_161

    .line 779
    :cond_212
    new-instance v5, Lsun/misc/FDBigInt;

    invoke-direct {v5, v10, v11}, Lsun/misc/FDBigInt;-><init>(J)V

    invoke-static {v5, v8, v2}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v11

    .line 896
    invoke-static {v9, v3}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v9

    .line 897
    invoke-static {v8, v4}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v2

    .line 901
    invoke-virtual {v9}, Lsun/misc/FDBigInt;->normalizeMe()I

    move-result v3

    invoke-virtual {v11, v3}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 902
    invoke-virtual {v2, v3}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 903
    const/16 v3, 0xa

    invoke-virtual {v9, v3}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v8

    .line 909
    const/4 v3, 0x0

    .line 910
    invoke-virtual {v11, v9}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v5

    .line 911
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 912
    invoke-virtual {v11, v7}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_293

    const/4 v2, 0x1

    .line 913
    :goto_245
    invoke-virtual {v11, v7}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v4

    invoke-virtual {v4, v8}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v4

    if-lez v4, :cond_295

    const/4 v4, 0x1

    .line 914
    :goto_250
    if-nez v5, :cond_297

    if-nez v4, :cond_297

    .line 917
    add-int/lit8 v6, v6, -0x1

    .line 927
    :goto_256
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v10, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v10, :cond_265

    const/4 v5, -0x3

    if-ge v5, v6, :cond_265

    const/16 v5, 0x8

    if-lt v6, v5, :cond_29f

    .line 928
    :cond_265
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    move v10, v3

    .line 930
    :goto_269
    if-nez v5, :cond_2a6

    if-nez v4, :cond_2a6

    .line 931
    invoke-virtual {v11, v9}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    move-result v4

    .line 932
    const/16 v2, 0xa

    invoke-virtual {v7, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 933
    invoke-virtual {v11, v7}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    if-gez v2, :cond_2a2

    const/4 v2, 0x1

    .line 935
    :goto_27e
    invoke-virtual {v11, v7}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v3

    if-lez v3, :cond_2a4

    const/4 v3, 0x1

    .line 936
    :goto_289
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v12, v10

    add-int/lit8 v10, v10, 0x1

    move v4, v3

    move v5, v2

    goto :goto_269

    .line 912
    :cond_293
    const/4 v2, 0x0

    goto :goto_245

    .line 913
    :cond_295
    const/4 v4, 0x0

    goto :goto_250

    .line 919
    :cond_297
    const/4 v3, 0x0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v12, v3

    const/4 v3, 0x1

    goto :goto_256

    :cond_29f
    move v5, v2

    move v10, v3

    .line 927
    goto :goto_269

    .line 933
    :cond_2a2
    const/4 v2, 0x0

    goto :goto_27e

    .line 935
    :cond_2a4
    const/4 v3, 0x0

    goto :goto_289

    .line 938
    :cond_2a6
    if-eqz v4, :cond_2b7

    if-eqz v5, :cond_2b7

    .line 939
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 940
    invoke-virtual {v11, v8}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v2

    int-to-long v8, v2

    move v2, v4

    move v7, v5

    goto/16 :goto_161

    .line 938
    :cond_2b7
    const-wide/16 v8, 0x0

    move v2, v4

    move v7, v5

    goto/16 :goto_161

    .line 956
    :cond_2bd
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_47

    .line 957
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    goto/16 :goto_47

    .line 960
    :cond_2c8
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    goto/16 :goto_47
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .registers 5

    const/16 v2, 0x10

    .line 2573
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2574
    const/4 v1, -0x1

    if-le v0, v1, :cond_10

    if-ge v0, v2, :cond_10

    .line 2578
    return v0

    .line 2575
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unxpected failure of digit converstion of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
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

    .line 180
    if-eqz p1, :cond_d

    .line 181
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    array-length v1, v0

    if-ge p1, v1, :cond_13

    .line 182
    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    move-result-object p0

    .line 187
    :cond_d
    :goto_d
    if-eqz p2, :cond_12

    .line 188
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 190
    :cond_12
    return-object p0

    .line 184
    :cond_13
    invoke-static {p1}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object p0

    goto :goto_d
.end method

.method static parseHexString(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal;
    .registers 21

    .line 2057
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2058
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 2060
    if-eqz v2, :cond_2c2

    .line 2089
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 2090
    if-eqz v2, :cond_1d

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_1d
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 2122
    :goto_1f
    const/4 v5, 0x0

    .line 2143
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 2145
    invoke-static {v4}, Lsun/misc/FormattedFloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2146
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v5

    .line 2165
    :goto_30
    invoke-static {v7}, Lsun/misc/FormattedFloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2166
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 2171
    const/4 v5, 0x1

    if-lt v4, v5, :cond_7a

    .line 2172
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x4

    move v7, v4

    .line 2180
    :goto_40
    if-nez v16, :cond_82

    .line 2181
    new-instance v4, Lsun/misc/FormattedFloatingDecimal;

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    move-object v2, v4

    .line 2556
    :goto_4b
    return-object v2

    .line 2090
    :cond_4c
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    goto :goto_1f

    .line 2151
    :cond_4f
    const/4 v4, 0x6

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/FormattedFloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2152
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2155
    const/4 v6, 0x7

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 2156
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 2159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2160
    if-nez v4, :cond_6e

    const-string v4, ""

    :cond_6e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v4, v5

    goto :goto_30

    .line 2174
    :cond_7a
    sub-int v4, v6, v16

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, -0x4

    move v7, v4

    goto :goto_40

    .line 2193
    :cond_82
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 2194
    if-eqz v4, :cond_92

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    :cond_92
    const/4 v4, 0x1

    move v6, v4

    .line 2197
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

    .line 2215
    if-eqz v6, :cond_d7

    const-wide/16 v4, 0x1

    .line 2222
    :goto_a3
    mul-long/2addr v4, v8

    int-to-long v6, v7

    add-long/2addr v4, v6

    .line 2228
    const/4 v11, 0x0

    .line 2229
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 2230
    const/4 v6, 0x0

    invoke-static {v15, v6}, Lsun/misc/FormattedFloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    .line 2250
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_da

    .line 2251
    const-wide/16 v8, 0x0

    const/16 v13, 0x34

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2252
    const/16 v8, 0x30

    .line 2291
    :goto_bd
    const/4 v9, 0x1

    move v13, v9

    move v14, v8

    .line 2293
    :goto_c0
    move/from16 v0, v16

    if-ge v13, v0, :cond_113

    if-ltz v14, :cond_113

    .line 2295
    invoke-static {v15, v13}, Lsun/misc/FormattedFloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    .line 2296
    shl-long/2addr v8, v14

    or-long/2addr v6, v8

    .line 2297
    add-int/lit8 v9, v14, -0x4

    .line 2294
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move v14, v9

    goto :goto_c0

    .line 2194
    :cond_d4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_94

    .line 2215
    :cond_d7
    const-wide/16 v4, -0x1

    goto :goto_a3

    .line 2254
    :cond_da
    const-wide/16 v8, 0x3

    cmp-long v8, v6, v8

    if-gtz v8, :cond_ed

    .line 2255
    const-wide/16 v8, 0x0

    const/16 v13, 0x33

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2256
    const/16 v8, 0x2f

    .line 2257
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    goto :goto_bd

    .line 2259
    :cond_ed
    const-wide/16 v8, 0x7

    cmp-long v8, v6, v8

    if-gtz v8, :cond_100

    .line 2260
    const-wide/16 v8, 0x0

    const/16 v13, 0x32

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2261
    const/16 v8, 0x2e

    .line 2262
    const-wide/16 v18, 0x2

    add-long v4, v4, v18

    goto :goto_bd

    .line 2264
    :cond_100
    const-wide/16 v8, 0xf

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2a9

    .line 2265
    const-wide/16 v8, 0x0

    const/16 v13, 0x31

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    .line 2266
    const/16 v8, 0x2d

    .line 2267
    const-wide/16 v18, 0x3

    add-long v4, v4, v18

    goto :goto_bd

    .line 2293
    :cond_113
    move/from16 v0, v16

    if-ge v13, v0, :cond_1ce

    .line 2306
    invoke-static {v15, v13}, Lsun/misc/FormattedFloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    int-to-long v0, v8

    move-wide/from16 v18, v0

    .line 2310
    const/4 v8, -0x4

    if-eq v14, v8, :cond_1ad

    const/4 v8, -0x3

    if-eq v14, v8, :cond_189

    const/4 v8, -0x2

    if-eq v14, v8, :cond_165

    const/4 v8, -0x1

    if-ne v14, v8, :cond_15d

    .line 2314
    const-wide/16 v8, 0xe

    and-long v8, v8, v18

    const/4 v11, 0x1

    shr-long/2addr v8, v11

    or-long/2addr v8, v6

    .line 2315
    const-wide/16 v6, 0x1

    and-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-eqz v6, :cond_15b

    const/4 v6, 0x1

    :goto_13c
    move v11, v6

    .line 2340
    :goto_13d
    add-int/lit8 v6, v13, 0x1

    move v7, v6

    move v12, v10

    .line 2353
    :goto_141
    move/from16 v0, v16

    if-ge v7, v0, :cond_2e3

    if-nez v12, :cond_2e3

    .line 2354
    invoke-static {v15, v7}, Lsun/misc/FormattedFloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 2355
    if-nez v12, :cond_156

    const-wide/16 v12, 0x0

    cmp-long v6, v18, v12

    if-eqz v6, :cond_1cc

    :cond_156
    const/4 v6, 0x1

    .line 2356
    :goto_157
    add-int/lit8 v7, v7, 0x1

    move v12, v6

    goto :goto_141

    .line 2315
    :cond_15b
    const/4 v6, 0x0

    goto :goto_13c

    .line 2343
    :cond_15d
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unexpected shift distance remainder."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2321
    :cond_165
    const-wide/16 v8, 0xc

    and-long v8, v8, v18

    const/4 v10, 0x2

    shr-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 2322
    const-wide/16 v6, 0x2

    and-long v6, v6, v18

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_185

    const/4 v7, 0x1

    .line 2323
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

    .line 2324
    goto :goto_13d

    .line 2322
    :cond_185
    const/4 v7, 0x0

    goto :goto_177

    .line 2323
    :cond_187
    const/4 v6, 0x0

    goto :goto_182

    .line 2328
    :cond_189
    const-wide/16 v8, 0x8

    and-long v8, v8, v18

    const/4 v10, 0x3

    shr-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 2330
    const-wide/16 v6, 0x4

    and-long v6, v6, v18

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1a9

    const/4 v7, 0x1

    .line 2331
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

    .line 2332
    goto :goto_13d

    .line 2330
    :cond_1a9
    const/4 v7, 0x0

    goto :goto_19b

    .line 2331
    :cond_1ab
    const/4 v6, 0x0

    goto :goto_1a6

    .line 2337
    :cond_1ad
    const-wide/16 v8, 0x8

    and-long v8, v8, v18

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1c6

    const/4 v11, 0x1

    .line 2339
    :goto_1b8
    const-wide/16 v8, 0x7

    and-long v8, v8, v18

    const-wide/16 v18, 0x0

    cmp-long v8, v8, v18

    if-eqz v8, :cond_1c8

    const/4 v10, 0x1

    move-wide v8, v6

    goto/16 :goto_13d

    .line 2337
    :cond_1c6
    const/4 v11, 0x0

    goto :goto_1b8

    .line 2339
    :cond_1c8
    const/4 v10, 0x0

    move-wide v8, v6

    goto/16 :goto_13d

    .line 2355
    :cond_1cc
    const/4 v6, 0x0

    goto :goto_157

    :cond_1ce
    move-wide v8, v6

    move v10, v11

    .line 2366
    :goto_1d0
    const-wide/16 v6, 0x3ff

    cmp-long v6, v4, v6

    if-lez v6, :cond_1e1

    .line 2368
    new-instance v4, Lsun/misc/FormattedFloatingDecimal;

    const-wide/high16 v6, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    move-object v2, v4

    goto/16 :goto_4b

    .line 2370
    :cond_1e1
    const-wide/16 v6, 0x3ff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_24c

    const-wide/16 v6, -0x3fe

    cmp-long v6, v4, v6

    if-ltz v6, :cond_24c

    .line 2384
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

    .line 2464
    :goto_1fe
    const-wide/16 v6, 0x1

    and-long/2addr v6, v8

    const-wide/16 v14, 0x0

    cmp-long v6, v6, v14

    if-nez v6, :cond_29f

    const/4 v6, 0x1

    move v10, v6

    .line 2465
    :goto_209
    if-eqz v10, :cond_20f

    if-eqz v11, :cond_20f

    if-nez v12, :cond_213

    :cond_20f
    if-nez v10, :cond_2e0

    if-eqz v11, :cond_2e0

    .line 2468
    :cond_213
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    .line 2471
    :goto_216
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    new-instance v8, Lsun/misc/FormattedFloatingDecimal;

    invoke-static {v14, v15, v2, v3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    .line 2498
    const-wide/16 v2, -0x96

    cmp-long v2, v4, v2

    if-ltz v2, :cond_246

    const-wide/16 v2, 0x7f

    cmp-long v2, v4, v2

    if-gtz v2, :cond_246

    .line 2517
    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_246

    .line 2526
    if-nez v11, :cond_23d

    if-eqz v12, :cond_246

    .line 2527
    :cond_23d
    if-eqz v10, :cond_2a3

    .line 2536
    xor-int v2, v11, v12

    if-eqz v2, :cond_246

    .line 2537
    const/4 v2, 0x1

    iput v2, v8, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 2555
    :cond_246
    :goto_246
    const/4 v2, 0x1

    iput-boolean v2, v8, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    move-object v2, v8

    .line 2556
    goto/16 :goto_4b

    .line 2393
    :cond_24c
    const-wide/16 v6, -0x433

    cmp-long v6, v4, v6

    if-gez v6, :cond_25d

    .line 2397
    new-instance v4, Lsun/misc/FormattedFloatingDecimal;

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    invoke-direct {v4, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    move-object v2, v4

    goto/16 :goto_4b

    .line 2405
    :cond_25d
    if-nez v12, :cond_261

    if-eqz v10, :cond_299

    :cond_261
    const/4 v6, 0x1

    .line 2406
    :goto_262
    long-to-int v7, v4

    add-int/lit16 v7, v7, 0x432

    add-int/lit8 v7, v7, 0x1

    rsub-int/lit8 v10, v7, 0x35

    .line 2416
    const-wide/16 v12, 0x1

    add-int/lit8 v7, v10, -0x1

    shl-long/2addr v12, v7

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_29b

    const/4 v7, 0x1

    .line 2421
    :goto_276
    const/4 v11, 0x1

    if-le v10, v11, :cond_28b

    .line 2424
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

    .line 2421
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

    .line 2405
    :cond_299
    const/4 v6, 0x0

    goto :goto_262

    .line 2416
    :cond_29b
    const/4 v7, 0x0

    goto :goto_276

    .line 2424
    :cond_29d
    const/4 v6, 0x0

    goto :goto_28b

    .line 2464
    :cond_29f
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_209

    .line 2548
    :cond_2a3
    if-eqz v11, :cond_246

    .line 2549
    const/4 v2, -0x1

    iput v2, v8, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    goto :goto_246

    .line 2269
    :cond_2a9
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Result from digit converstion too large!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2199
    :catch_2b1
    move-exception v4

    const-wide/high16 v4, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 2213
    if-eqz v6, :cond_2bf

    .line 2214
    :goto_2b6
    new-instance v6, Lsun/misc/FormattedFloatingDecimal;

    mul-double/2addr v2, v4

    invoke-direct {v6, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    move-object v2, v6

    .line 2213
    goto/16 :goto_4b

    .line 2214
    :cond_2bf
    const-wide/16 v4, 0x0

    goto :goto_2b6

    .line 2062
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

.method public static readJavaFormatString(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1176
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1177
    const/4 v2, 0x0

    .line 1183
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_6} :catch_190

    move-result-object p0

    .line 1185
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 1186
    if-eqz v12, :cond_188

    .line 1187
    const/4 v4, 0x0

    .line 1188
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_44

    const/16 v0, 0x2d

    if-eq v3, v0, :cond_43

    move v11, v2

    .line 1198
    :goto_1c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1199
    const/16 v2, 0x4e

    if-eq v0, v2, :cond_28

    const/16 v2, 0x49

    if-ne v0, v2, :cond_49

    .line 1200
    :cond_28
    const/4 v2, 0x0

    .line 1201
    const/16 v3, 0x4e

    if-ne v0, v3, :cond_164

    .line 1204
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    .line 1205
    const/4 v2, 0x1

    .line 1211
    :goto_30
    const/4 v3, 0x0

    .line 1212
    :goto_31
    if-ge v4, v12, :cond_168

    array-length v5, v0

    if-ge v3, v5, :cond_168

    .line 1213
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-char v6, v0, v3

    if-ne v5, v6, :cond_f5

    .line 1214
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1190
    :cond_43
    const/4 v0, 0x1

    .line 1193
    :cond_44
    const/4 v4, 0x1

    .line 1194
    const/4 v2, 0x1

    move v1, v0

    move v11, v2

    goto :goto_1c

    .line 1234
    :cond_49
    const/16 v2, 0x30

    if-ne v0, v2, :cond_64

    .line 1235
    add-int/lit8 v0, v4, 0x1

    if-le v12, v0, :cond_64

    .line 1236
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1237
    const/16 v2, 0x78

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x58

    if-ne v0, v2, :cond_64

    .line 1238
    :cond_5f
    invoke-static {p0}, Lsun/misc/FormattedFloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v0

    .line 1414
    :goto_63
    return-object v0

    .line 1242
    :cond_64
    new-array v10, v12, [C

    .line 1243
    const/4 v9, 0x0

    .line 1244
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v4

    .line 1249
    :goto_6c
    if-ge v5, v12, :cond_75

    .line 1250
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_198

    .line 1308
    :cond_75
    :pswitch_75  #0x2f
    if-nez v9, :cond_149

    .line 1309
    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    .line 1310
    if-eqz v7, :cond_f5

    const/4 v4, 0x1

    .line 1324
    :goto_7c
    if-eqz v0, :cond_14d

    .line 1325
    sub-int/2addr v6, v7

    .line 1333
    :goto_7f
    if-ge v5, v12, :cond_193

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_8d

    const/16 v2, 0x45

    if-ne v0, v2, :cond_193

    .line 1334
    :cond_8d
    const/4 v2, 0x1

    const/4 v0, 0x1

    .line 1335
    const/4 v9, 0x0

    .line 1336
    const/4 v10, 0x0

    .line 1338
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x2b

    if-eq v7, v11, :cond_152

    const/16 v0, 0x2d

    if-eq v7, v0, :cond_151

    move v0, v2

    :goto_a0
    move v2, v10

    move v7, v5

    .line 1347
    :goto_a2
    if-ge v7, v12, :cond_b5

    .line 1348
    const v10, 0xccccccc

    if-lt v9, v10, :cond_aa

    .line 1351
    const/4 v2, 0x1

    .line 1353
    :cond_aa
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1b4

    .line 1367
    add-int/lit8 v7, v10, -0x1

    .line 1371
    :cond_b5
    add-int/lit16 v10, v4, 0x144

    add-int/2addr v8, v10

    .line 1372
    if-nez v2, :cond_bc

    if-le v9, v8, :cond_15f

    .line 1385
    :cond_bc
    mul-int v2, v0, v8

    .line 1398
    :goto_be
    if-eq v7, v5, :cond_f5

    move v5, v7

    .line 1333
    :goto_c1
    if-ge v5, v12, :cond_e7

    add-int/lit8 v0, v12, -0x1

    if-ne v5, v0, :cond_f5

    .line 1407
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x66

    if-eq v0, v6, :cond_e7

    .line 1408
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_e7

    .line 1409
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x64

    if-eq v0, v6, :cond_e7

    .line 1410
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x44

    if-ne v0, v5, :cond_f5

    .line 1414
    :cond_e7
    new-instance v0, Lsun/misc/FormattedFloatingDecimal;

    const/4 v5, 0x0

    const v6, 0x7fffffff

    sget-object v7, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-direct/range {v0 .. v7}, Lsun/misc/FormattedFloatingDecimal;-><init>(ZI[CIZILsun/misc/FormattedFloatingDecimal$Form;)V
    :try_end_f2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_f2} :catch_f4

    goto/16 :goto_63

    .line 1415
    :catch_f4
    move-exception v0

    .line 1416
    :cond_f5
    :goto_f5
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

    .line 1267
    :goto_111
    :pswitch_111  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    if-lez v8, :cond_11c

    .line 1268
    const/16 v3, 0x30

    aput-char v3, v10, v9

    .line 1269
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_111

    .line 1271
    :cond_11c
    aput-char v2, v10, v9

    .line 1272
    add-int/lit8 v9, v9, 0x1

    move v2, v0

    move v3, v6

    move v4, v7

    .line 1287
    :goto_123
    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move v6, v3

    move v7, v4

    goto/16 :goto_6c

    .line 1252
    :pswitch_12a  #0x30
    if-lez v9, :cond_132

    .line 1253
    add-int/lit8 v8, v8, 0x1

    move v2, v0

    move v3, v6

    move v4, v7

    goto :goto_123

    .line 1255
    :cond_132
    add-int/lit8 v4, v7, 0x1

    move v2, v0

    move v3, v6

    .line 1257
    goto :goto_123

    .line 1274
    :pswitch_137  #0x2e
    if-nez v0, :cond_141

    .line 1279
    if-eqz v11, :cond_196

    .line 1280
    add-int/lit8 v0, v5, -0x1

    .line 1282
    :goto_13d
    const/4 v2, 0x1

    move v3, v0

    move v4, v7

    goto :goto_123

    .line 1276
    :cond_141
    :try_start_141
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "multiple points"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_149
    move-object v3, v10

    move v4, v9

    .line 1308
    goto/16 :goto_7c

    .line 1327
    :cond_14d
    add-int v6, v4, v8

    goto/16 :goto_7f

    .line 1340
    :cond_151
    const/4 v0, -0x1

    .line 1343
    :cond_152
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_a0

    .line 1364
    :pswitch_157  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v9, v7

    move v7, v10

    .line 1365
    goto/16 :goto_a2

    .line 1389
    :cond_15f
    mul-int/2addr v0, v9

    add-int v2, v6, v0

    goto/16 :goto_be

    .line 1207
    :cond_164
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    goto/16 :goto_30

    .line 1224
    :cond_168
    array-length v0, v0

    if-ne v3, v0, :cond_f5

    if-ne v4, v12, :cond_f5

    .line 1225
    if-eqz v2, :cond_178

    new-instance v0, Lsun/misc/FormattedFloatingDecimal;

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    invoke-direct {v0, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    goto/16 :goto_63

    .line 1226
    :cond_178
    if-eqz v1, :cond_184

    .line 1227
    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    move-wide v2, v0

    .line 1228
    :goto_17d
    new-instance v0, Lsun/misc/FormattedFloatingDecimal;

    invoke-direct {v0, v2, v3}, Lsun/misc/FormattedFloatingDecimal;-><init>(D)V

    goto/16 :goto_63

    :cond_184
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    move-wide v2, v0

    goto :goto_17d

    .line 1186
    :cond_188
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty String"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_190
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_141 .. :try_end_190} :catch_f4

    .line 1415
    :catch_190
    move-exception v0

    goto/16 :goto_f5

    :cond_193
    move v2, v6

    goto/16 :goto_c1

    :cond_196
    move v0, v5

    goto :goto_13d

    .line 1250
    :pswitch_data_198
    .packed-switch 0x2e
        :pswitch_137  #0000002e
        :pswitch_75  #0000002f
        :pswitch_12a  #00000030
        :pswitch_111  #00000031
        :pswitch_111  #00000032
        :pswitch_111  #00000033
        :pswitch_111  #00000034
        :pswitch_111  #00000035
        :pswitch_111  #00000036
        :pswitch_111  #00000037
        :pswitch_111  #00000038
        :pswitch_111  #00000039
    .end packed-switch

    .line 1353
    :pswitch_data_1b4
    .packed-switch 0x30
        :pswitch_157  #00000030
        :pswitch_157  #00000031
        :pswitch_157  #00000032
        :pswitch_157  #00000033
        :pswitch_157  #00000034
        :pswitch_157  #00000035
        :pswitch_157  #00000036
        :pswitch_157  #00000037
        :pswitch_157  #00000038
        :pswitch_157  #00000039
    .end packed-switch
.end method

.method private roundup()V
    .registers 5

    const/16 v3, 0x39

    .line 394
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    .line 395
    if-ne v0, v3, :cond_2b

    .line 396
    :goto_c
    if-ne v0, v3, :cond_1b

    if-lez v1, :cond_1b

    .line 397
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 398
    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    goto :goto_c

    .line 400
    :cond_1b
    if-ne v0, v3, :cond_2b

    .line 402
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 403
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput-char v2, v0, v1

    .line 409
    :goto_2a
    return-void

    .line 408
    :cond_2b
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    aput-char v0, v2, v1

    goto :goto_2a
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2565
    const-string v0, "^0+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ulp(DZ)D
    .registers 11

    const/16 v6, 0x34

    .line 252
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    .line 253
    ushr-long v0, v2, v6

    long-to-int v0, v0

    .line 255
    if-eqz p2, :cond_21

    if-lt v0, v6, :cond_21

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_21

    .line 258
    add-int/lit8 v0, v0, -0x1

    .line 260
    :cond_21
    if-le v0, v6, :cond_2f

    .line 261
    add-int/lit8 v0, v0, -0x34

    int-to-long v0, v0

    shl-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 267
    :goto_2b
    if-eqz p2, :cond_2e

    neg-double v0, v0

    .line 269
    :cond_2e
    return-wide v0

    .line 262
    :cond_2f
    if-nez v0, :cond_34

    .line 263
    const-wide/16 v0, 0x1

    goto :goto_2b

    .line 265
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

    .line 1164
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 1165
    invoke-virtual {p0, v0}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    move-result v1

    .line 1166
    instance-of v2, p1, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 1167
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1171
    :cond_16
    :goto_16
    return-void

    .line 1168
    :cond_17
    instance-of v2, p1, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_16

    .line 1169
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, v3, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16
.end method

.method public doubleValue()D
    .registers 15

    .line 1430
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1436
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    if-eq v0, v1, :cond_12

    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v0, v1, :cond_1b

    :cond_12
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v0, v1, :cond_289

    .line 1438
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 1774
    :goto_1a
    return-wide v0

    .line 1443
    :cond_1b
    iget-boolean v2, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_25

    .line 1444
    const/4 v2, 0x0

    iput v2, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1450
    :cond_25
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    add-int/lit8 v2, v2, -0x30

    .line 1451
    const/16 v3, 0x9

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1452
    const/4 v3, 0x1

    :goto_33
    if-ge v3, v6, :cond_41

    .line 1453
    mul-int/lit8 v2, v2, 0xa

    iget-object v7, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v7, v7, v3

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x30

    .line 1452
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1455
    :cond_41
    int-to-long v2, v2

    .line 1456
    :goto_42
    if-ge v6, v5, :cond_52

    .line 1457
    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    iget-object v7, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v7, v7, v6

    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 1456
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 1459
    :cond_52
    long-to-double v6, v2

    .line 1460
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    sub-int v10, v8, v5

    .line 1467
    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const-wide/16 v8, 0x0

    const/16 v12, 0xf

    if-gt v11, v12, :cond_ff

    .line 1478
    if-eqz v10, :cond_67

    const-wide/16 v12, 0x0

    cmpl-double v11, v6, v12

    if-nez v11, :cond_70

    :cond_67
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_2a6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v0, v6

    goto :goto_1a

    .line 1480
    :cond_70
    if-ltz v10, :cond_cf

    .line 1481
    sget v4, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    if-gt v10, v4, :cond_9d

    .line 1486
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v2, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v6

    .line 1487
    iget-boolean v4, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v4, :cond_8c

    .line 1488
    aget-wide v4, v1, v10

    div-double v4, v2, v4

    .line 1489
    cmpl-double v1, v4, v6

    if-nez v1, :cond_92

    .line 1491
    :goto_8a
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1493
    :cond_8c
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_9a

    neg-double v0, v2

    goto :goto_1a

    .line 1490
    :cond_92
    cmpg-double v0, v4, v6

    if-gez v0, :cond_98

    const/4 v0, 0x1

    goto :goto_8a

    .line 1491
    :cond_98
    const/4 v0, -0x1

    goto :goto_8a

    :cond_9a
    move-wide v0, v2

    .line 1493
    goto/16 :goto_1a

    .line 1495
    :cond_9d
    rsub-int/lit8 v0, v5, 0xf

    .line 1496
    add-int/2addr v4, v0

    if-gt v10, v4, :cond_ff

    .line 1503
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    aget-wide v2, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v2

    .line 1504
    sub-int v2, v10, v0

    aget-wide v2, v4, v2

    mul-double/2addr v2, v6

    .line 1506
    iget-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v5, :cond_c0

    .line 1507
    sub-int v0, v10, v0

    aget-wide v4, v4, v0

    div-double v4, v2, v4

    .line 1508
    cmpl-double v0, v4, v6

    if-nez v0, :cond_c7

    move v0, v1

    .line 1510
    :goto_be
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1512
    :cond_c0
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_2a9

    neg-double v0, v2

    goto/16 :goto_1a

    .line 1509
    :cond_c7
    cmpg-double v0, v4, v6

    if-gez v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_be

    .line 1510
    :cond_cd
    const/4 v0, -0x1

    goto :goto_be

    .line 1518
    :cond_cf
    sget v0, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    neg-int v0, v0

    if-lt v10, v0, :cond_ff

    .line 1522
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    neg-int v1, v10

    aget-wide v2, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v6, v2

    .line 1523
    neg-int v1, v10

    aget-wide v0, v0, v1

    mul-double/2addr v0, v2

    .line 1524
    iget-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v5, :cond_ed

    .line 1525
    cmpl-double v5, v0, v6

    if-nez v5, :cond_f4

    move v0, v4

    .line 1527
    :goto_eb
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1529
    :cond_ed
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_fc

    neg-double v0, v2

    goto/16 :goto_1a

    .line 1526
    :cond_f4
    cmpg-double v0, v0, v6

    if-gez v0, :cond_fa

    const/4 v0, 0x1

    goto :goto_eb

    .line 1527
    :cond_fa
    const/4 v0, -0x1

    goto :goto_eb

    :cond_fc
    move-wide v0, v2

    .line 1529
    goto/16 :goto_1a

    .line 1467
    :cond_ff
    if-lez v10, :cond_1e7

    .line 1546
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v1, 0x135

    if-le v0, v1, :cond_113

    .line 1551
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_10f

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto/16 :goto_1a

    :cond_10f
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    goto/16 :goto_1a

    .line 1553
    :cond_113
    and-int/lit8 v0, v10, 0xf

    if-eqz v0, :cond_2a3

    .line 1554
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    and-int/lit8 v1, v10, 0xf

    aget-wide v0, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v6

    .line 1556
    :goto_121
    shr-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_1e4

    .line 1558
    const/4 v4, 0x0

    :goto_126
    const/4 v7, 0x1

    if-le v6, v7, :cond_137

    .line 1559
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_132

    .line 1560
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v8, v7, v4

    mul-double/2addr v0, v8

    .line 1558
    :cond_132
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_126

    .line 1568
    :cond_137
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v6, v6, v4

    mul-double/2addr v6, v0

    .line 1569
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 1582
    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    div-double/2addr v0, v6

    .line 1583
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    aget-wide v6, v6, v4

    .line 1584
    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 1585
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_158

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto/16 :goto_1a

    :cond_158
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    goto/16 :goto_1a

    .line 1587
    :cond_15c
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    :goto_161
    move-wide v8, v0

    .line 1591
    :goto_162
    new-instance v1, Lsun/misc/FDBigInt;

    iget-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-direct/range {v1 .. v6}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    .line 1648
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int v2, v0, v2

    .line 1655
    :cond_171
    invoke-direct {p0, v8, v9}, Lsun/misc/FormattedFloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 1669
    if-ltz v2, :cond_245

    .line 1670
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, v2

    move v5, v4

    move v6, v2

    .line 1676
    :goto_17c
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    if-ltz v4, :cond_24c

    .line 1677
    add-int/2addr v5, v4

    .line 1681
    :goto_181
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    add-int v11, v4, v10

    const/16 v12, -0x3fe

    if-gt v11, v12, :cond_24f

    .line 1689
    add-int/lit16 v4, v4, 0x3ff

    add-int/lit8 v4, v4, 0x34

    .line 1693
    :goto_18f
    add-int v10, v5, v4

    .line 1694
    add-int/2addr v4, v6

    .line 1697
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1698
    sub-int/2addr v5, v6

    .line 1702
    sub-int/2addr v10, v6

    invoke-static {v7, v3, v10}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v7

    .line 1703
    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    sub-int/2addr v4, v6

    invoke-static {v10, v0, v4}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 1721
    invoke-virtual {v7, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v4

    if-lez v4, :cond_253

    .line 1722
    const/4 v4, 0x1

    .line 1723
    invoke-virtual {v7, v0}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v0

    .line 1724
    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c9

    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    const/16 v7, -0x3ff

    if-le v6, v7, :cond_1c9

    .line 1729
    add-int/lit8 v5, v5, -0x1

    .line 1730
    if-gez v5, :cond_1c9

    .line 1733
    const/4 v5, 0x0

    .line 1734
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 1745
    :cond_1c9
    :goto_1c9
    invoke-static {v3, v5}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    move-result-object v3

    .line 1746
    invoke-virtual {v0, v3}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    move-result v0

    if-gez v0, :cond_25f

    .line 1749
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v0, :cond_1dc

    .line 1750
    if-eqz v4, :cond_25c

    const/4 v0, -0x1

    :goto_1da
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    .line 1774
    :cond_1dc
    :goto_1dc
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_1e1

    neg-double v8, v8

    :cond_1e1
    move-wide v0, v8

    goto/16 :goto_1a

    :cond_1e4
    move-wide v8, v0

    .line 1556
    goto/16 :goto_162

    .line 1591
    :cond_1e7
    if-gez v10, :cond_29d

    .line 1592
    neg-int v4, v10

    .line 1593
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v1, -0x145

    if-ge v0, v1, :cond_1f8

    .line 1598
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_29a

    const-wide/16 v0, 0x0

    goto/16 :goto_1a

    .line 1600
    :cond_1f8
    and-int/lit8 v0, v4, 0xf

    if-eqz v0, :cond_297

    .line 1601
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    and-int/lit8 v1, v4, 0xf

    aget-wide v0, v0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v6, v0

    .line 1603
    :goto_207
    shr-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_242

    .line 1605
    const/4 v4, 0x0

    :goto_20c
    const/4 v7, 0x1

    if-le v6, v7, :cond_21d

    .line 1606
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_218

    .line 1607
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    aget-wide v10, v7, v4

    mul-double/2addr v0, v10

    .line 1605
    :cond_218
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_20c

    .line 1615
    :cond_21d
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    aget-wide v6, v10, v4

    mul-double/2addr v6, v0

    .line 1616
    const-wide/16 v12, 0x0

    cmpl-double v11, v6, v12

    if-nez v11, :cond_295

    .line 1629
    aget-wide v6, v10, v4

    .line 1631
    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, v10

    mul-double/2addr v0, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_23d

    .line 1632
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_23a

    const-wide/16 v8, 0x0

    :cond_23a
    move-wide v0, v8

    goto/16 :goto_1a

    .line 1634
    :cond_23d
    const-wide/16 v0, 0x1

    :goto_23f
    move-wide v8, v0

    .line 1636
    goto/16 :goto_162

    :cond_242
    move-wide v8, v0

    .line 1603
    goto/16 :goto_162

    .line 1673
    :cond_245
    neg-int v4, v2

    .line 1674
    const/4 v0, 0x0

    const/4 v6, 0x0

    move v3, v4

    move v5, v4

    goto/16 :goto_17c

    .line 1679
    :cond_24c
    sub-int/2addr v6, v4

    goto/16 :goto_181

    .line 1691
    :cond_24f
    rsub-int/lit8 v4, v10, 0x36

    goto/16 :goto_18f

    .line 1737
    :cond_253
    if-gez v4, :cond_1dc

    .line 1738
    const/4 v4, 0x0

    .line 1739
    invoke-virtual {v0, v7}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    move-result-object v0

    goto/16 :goto_1c9

    .line 1750
    :cond_25c
    const/4 v0, 0x1

    goto/16 :goto_1da

    .line 1753
    :cond_25f
    if-nez v0, :cond_276

    .line 1756
    invoke-static {v8, v9, v4}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v0, v2

    add-double/2addr v8, v0

    .line 1758
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    if-eqz v0, :cond_1dc

    .line 1759
    if-eqz v4, :cond_274

    const/4 v0, -0x1

    :goto_270
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    goto/16 :goto_1dc

    :cond_274
    const/4 v0, 0x1

    goto :goto_270

    .line 1767
    :cond_276
    invoke-static {v8, v9, v4}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    move-result-wide v4

    add-double/2addr v8, v4

    .line 1768
    const-wide/16 v4, 0x0

    cmpl-double v0, v8, v4

    if-eqz v0, :cond_1dc

    const-wide/high16 v4, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v0, v8, v4

    if-nez v0, :cond_171

    goto/16 :goto_1dc

    .line 1440
    :cond_289
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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

    .line 1790
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1795
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    const/high16 v1, -0x800000  # Float.NEGATIVE_INFINITY

    if-eq v0, v5, :cond_17

    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v0, v5, :cond_20

    .line 1796
    :cond_17
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    if-ne v0, v2, :cond_db

    .line 1797
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 1924
    :cond_1f
    :goto_1f
    return v0

    .line 1805
    :cond_20
    const/4 v5, 0x0

    aget-char v0, v0, v5

    add-int/lit8 v5, v0, -0x30

    .line 1806
    const/4 v0, 0x1

    :goto_26
    if-ge v0, v2, :cond_34

    .line 1807
    mul-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v6, v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x30

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1809
    :cond_34
    int-to-float v0, v5

    .line 1810
    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    sub-int v7, v6, v2

    .line 1817
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    const/4 v9, 0x7

    if-gt v8, v9, :cond_81

    .line 1828
    if-eqz v7, :cond_44

    cmpl-float v5, v0, v4

    if-nez v5, :cond_4a

    .line 1829
    :cond_44
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1830
    :cond_4a
    if-ltz v7, :cond_70

    .line 1831
    sget v5, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    if-gt v7, v5, :cond_5b

    .line 1836
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    aget v1, v1, v7

    mul-float/2addr v0, v1

    .line 1837
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1839
    :cond_5b
    rsub-int/lit8 v2, v2, 0x7

    .line 1840
    add-int/2addr v5, v2

    if-gt v7, v5, :cond_b0

    .line 1847
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    aget v3, v1, v2

    .line 1848
    mul-float/2addr v0, v3

    sub-int v2, v7, v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    .line 1849
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1855
    :cond_70
    sget v2, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    neg-int v2, v2

    if-lt v7, v2, :cond_b0

    .line 1859
    sget-object v1, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    neg-int v2, v7

    aget v1, v1, v2

    div-float/2addr v0, v1

    .line 1860
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto :goto_1f

    .line 1866
    :cond_81
    if-lt v6, v8, :cond_b0

    add-int v0, v8, v6

    const/16 v6, 0xf

    if-gt v0, v6, :cond_b0

    .line 1876
    int-to-long v0, v5

    .line 1877
    :goto_8a
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge v2, v3, :cond_9c

    .line 1878
    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    aget-char v3, v3, v2

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 1877
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 1880
    :cond_9c
    long-to-double v0, v0

    .line 1881
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 1882
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    sub-int/2addr v2, v3

    aget-wide v2, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 1883
    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 1884
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_1f

    neg-float v0, v0

    goto/16 :goto_1f

    .line 1896
    :cond_b0
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    const/16 v2, 0x27

    if-le v0, v2, :cond_c0

    .line 1901
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_bd

    move v0, v1

    goto/16 :goto_1f

    :cond_bd
    move v0, v3

    goto/16 :goto_1f

    .line 1902
    :cond_c0
    const/16 v1, -0x2e

    if-ge v0, v1, :cond_cb

    .line 1907
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_c8

    :cond_c8
    move v0, v4

    goto/16 :goto_1f

    .line 1922
    :cond_cb
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    .line 1923
    invoke-virtual {p0}, Lsun/misc/FormattedFloatingDecimal;->doubleValue()D

    move-result-wide v0

    .line 1924
    invoke-virtual {p0, v0, v1}, Lsun/misc/FormattedFloatingDecimal;->stickyRound(D)F

    move-result v0

    goto/16 :goto_1f

    .line 1799
    :cond_db
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_e2

    :goto_df
    move v0, v1

    goto/16 :goto_1f

    :cond_e2
    move v1, v3

    goto :goto_df
.end method

.method public getChars([C)I
    .registers 12

    const/16 v9, 0x2d

    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    .line 1003
    iget-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v0, :cond_1ef

    aput-char v9, p1, v2

    move v0, v1

    .line 1004
    :goto_f
    iget-boolean v3, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    if-eqz v3, :cond_1e

    .line 1005
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/2addr v0, v1

    .line 1150
    :cond_1d
    :goto_1d
    return v0

    .line 1008
    :cond_1e
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    .line 1009
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    .line 1010
    sget-object v5, Lsun/misc/FormattedFloatingDecimal$2;->$SwitchMap$sun$misc$FormattedFloatingDecimal$Form:[I

    iget-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v6}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v1, :cond_37

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8e

    const/4 v6, 0x4

    if-eq v5, v6, :cond_62

    .line 1012
    :cond_37
    :goto_37
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    .line 1039
    if-lez v4, :cond_f9

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v6, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v6, :cond_45

    const/16 v5, 0x8

    if-lt v4, v5, :cond_4b

    :cond_45
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v6, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v6, :cond_f9

    .line 1044
    :cond_4b
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1045
    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1046
    add-int/2addr v0, v1

    .line 1047
    if-ge v1, v4, :cond_c2

    .line 1048
    :goto_57
    sub-int v3, v4, v1

    if-ge v2, v3, :cond_b2

    .line 1050
    aput-char v8, p1, v0

    .line 1049
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 1022
    :cond_62
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v4

    .line 1023
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v3

    .line 1026
    add-int/lit8 v5, v4, -0x1

    const/4 v6, -0x4

    if-lt v5, v6, :cond_79

    add-int/lit8 v5, v4, -0x1

    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    if-lt v5, v6, :cond_84

    .line 1027
    :cond_79
    sget-object v5, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 1028
    iget v5, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    goto :goto_37

    .line 1030
    :cond_84
    sget-object v5, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 1031
    iget v5, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    sub-int/2addr v5, v4

    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    goto :goto_37

    .line 1018
    :cond_8e
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v4

    .line 1019
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v3

    goto :goto_37

    .line 1014
    :cond_9f
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    move-result v4

    .line 1015
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    iget v5, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v3, v5

    invoke-direct {p0, v3}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    move-result-object v3

    goto :goto_37

    .line 1054
    :cond_b2
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v1, v2, :cond_1d

    .line 1055
    add-int/lit8 v1, v0, 0x1

    aput-char v7, p1, v0

    .line 1056
    add-int/lit8 v0, v1, 0x1

    aput-char v8, p1, v1

    goto/16 :goto_1d

    .line 1062
    :cond_c2
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v2, v4, :cond_e3

    .line 1063
    add-int/lit8 v2, v0, 0x1

    aput-char v7, p1, v0

    .line 1064
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-ge v1, v0, :cond_dd

    .line 1065
    sub-int/2addr v0, v1

    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1066
    invoke-static {v3, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1067
    add-int/2addr v0, v2

    goto/16 :goto_1d

    .line 1069
    :cond_dd
    add-int/lit8 v0, v2, 0x1

    aput-char v8, p1, v2

    goto/16 :goto_1d

    .line 1072
    :cond_e3
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    sub-int/2addr v2, v1

    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1073
    if-lez v2, :cond_1d

    .line 1074
    add-int/lit8 v4, v0, 0x1

    aput-char v7, p1, v0

    .line 1075
    invoke-static {v3, v1, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1076
    add-int v0, v4, v2

    goto/16 :goto_1d

    .line 1080
    :cond_f9
    if-gtz v4, :cond_13e

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v6, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v6, :cond_104

    const/4 v5, -0x3

    if-gt v4, v5, :cond_10a

    :cond_104
    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v6, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v5, v6, :cond_13e

    .line 1085
    :cond_10a
    add-int/lit8 v5, v0, 0x1

    aput-char v8, p1, v0

    .line 1086
    if-eqz v4, :cond_127

    .line 1088
    neg-int v0, v4

    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1089
    if-lez v6, :cond_127

    .line 1090
    add-int/lit8 v0, v5, 0x1

    aput-char v7, p1, v5

    move v5, v2

    .line 1091
    :goto_11e
    if-ge v5, v6, :cond_128

    .line 1092
    aput-char v8, p1, v0

    .line 1091
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11e

    :cond_127
    move v0, v5

    .line 1095
    :cond_128
    array-length v5, v3

    iget v6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1096
    if-lez v4, :cond_1d

    .line 1097
    if-ne v0, v1, :cond_138

    .line 1098
    aput-char v7, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1100
    :cond_138
    invoke-static {v3, v2, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    add-int/2addr v0, v4

    goto/16 :goto_1d

    .line 1104
    :cond_13e
    add-int/lit8 v5, v0, 0x1

    aget-char v2, v3, v2

    aput-char v2, p1, v0

    .line 1105
    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne v0, v2, :cond_189

    .line 1106
    add-int/lit8 v0, v5, 0x1

    aput-char v7, p1, v5

    .line 1107
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-le v2, v1, :cond_184

    .line 1108
    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 1113
    :goto_15c
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x45

    aput-char v2, p1, v0

    move v0, v1

    .line 1126
    :goto_163
    if-gtz v4, :cond_1a7

    .line 1127
    add-int/lit8 v2, v0, 0x1

    aput-char v9, p1, v0

    .line 1128
    neg-int v0, v4

    add-int/lit8 v1, v0, 0x1

    move v0, v2

    .line 1135
    :goto_16d
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1b6

    .line 1136
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v2, v3, :cond_17b

    .line 1137
    aput-char v8, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1138
    :cond_17b
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    .line 1111
    :cond_184
    aput-char v8, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15c

    .line 1115
    :cond_189
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    if-le v0, v1, :cond_1ed

    .line 1116
    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1117
    if-lez v0, :cond_1ed

    .line 1118
    add-int/lit8 v2, v5, 0x1

    aput-char v7, p1, v5

    .line 1119
    invoke-static {v3, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    add-int/2addr v0, v2

    .line 1123
    :goto_19f
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x65

    aput-char v2, p1, v0

    move v0, v1

    goto :goto_163

    .line 1130
    :cond_1a7
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-eq v1, v2, :cond_1b3

    .line 1131
    const/16 v1, 0x2b

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1132
    :cond_1b3
    add-int/lit8 v1, v4, -0x1

    goto :goto_16d

    .line 1139
    :cond_1b6
    const/16 v2, 0x63

    if-gt v1, v2, :cond_1ce

    .line 1140
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 1141
    add-int/lit8 v0, v2, 0x1

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v2

    goto/16 :goto_1d

    .line 1143
    :cond_1ce
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 1144
    rem-int/lit8 v0, v1, 0x64

    .line 1145
    add-int/lit8 v1, v2, 0x1

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 1146
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_1d

    :cond_1ed
    move v0, v5

    goto :goto_19f

    :cond_1ef
    move v0, v2

    goto/16 :goto_f
.end method

.method public getExponent()I
    .registers 2

    .line 992
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getExponentRounded()I
    .registers 2

    .line 997
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method stickyRound(D)F
    .registers 12

    const-wide/high16 v6, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 283
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 284
    and-long v2, v0, v6

    .line 285
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    cmp-long v2, v2, v6

    if-nez v2, :cond_14

    .line 288
    :cond_12
    double-to-float v0, p1

    .line 291
    :goto_13
    return v0

    .line 290
    :cond_14
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    int-to-long v2, v2

    .line 291
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_13
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .registers 5

    .line 985
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 986
    invoke-virtual {p0, v0}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    move-result v1

    .line 987
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    .line 968
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 969
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 970
    :cond_13
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    if-eqz v1, :cond_24

    .line 971
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 978
    :goto_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1

    .line 973
    :cond_24
    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 974
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 975
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method
