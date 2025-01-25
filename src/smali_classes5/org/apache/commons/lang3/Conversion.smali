.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    .line 64
    new-array v0, v1, [Z

    fill-array-data v0, :array_72

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    .line 67
    new-array v0, v1, [Z

    fill-array-data v0, :array_78

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    .line 68
    new-array v0, v1, [Z

    fill-array-data v0, :array_7e

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    .line 69
    new-array v0, v1, [Z

    fill-array-data v0, :array_84

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    .line 70
    new-array v0, v1, [Z

    fill-array-data v0, :array_8a

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    .line 71
    new-array v0, v1, [Z

    fill-array-data v0, :array_90

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    .line 72
    new-array v0, v1, [Z

    fill-array-data v0, :array_96

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    .line 73
    new-array v0, v1, [Z

    fill-array-data v0, :array_9c

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    .line 74
    new-array v0, v1, [Z

    fill-array-data v0, :array_a2

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    .line 75
    new-array v0, v1, [Z

    fill-array-data v0, :array_a8

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    .line 76
    new-array v0, v1, [Z

    fill-array-data v0, :array_ae

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    .line 77
    new-array v0, v1, [Z

    fill-array-data v0, :array_b4

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    .line 78
    new-array v0, v1, [Z

    fill-array-data v0, :array_ba

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    .line 79
    new-array v0, v1, [Z

    fill-array-data v0, :array_c0

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    .line 80
    new-array v0, v1, [Z

    fill-array-data v0, :array_c6

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    .line 81
    new-array v0, v1, [Z

    fill-array-data v0, :array_cc

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    return-void

    .line 64
    :array_72
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 67
    :array_78
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 68
    :array_7e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 69
    :array_84
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 70
    :array_8a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 71
    :array_90
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 72
    :array_96
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 73
    :array_9c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 74
    :array_a2
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 75
    :array_a8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 76
    :array_ae
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 77
    :array_b4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 78
    :array_ba
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 79
    :array_c0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 80
    :array_c6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 81
    :array_cc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .registers 2

    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .registers 9

    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 440
    array-length v0, p0

    if-eqz v0, :cond_b2

    .line 443
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 444
    add-int/lit8 v1, v0, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 445
    new-array v2, v2, [Z

    .line 446
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    rsub-int/lit8 v3, v1, 0x4

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_69

    .line 450
    array-length v0, v2

    if-le v0, v6, :cond_48

    aget-boolean v0, v2, v6

    if-eqz v0, :cond_48

    .line 451
    array-length v0, v2

    if-le v0, v5, :cond_3b

    aget-boolean v0, v2, v5

    if-eqz v0, :cond_3b

    .line 452
    array-length v0, v2

    if-le v0, v4, :cond_38

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_38

    const/16 v0, 0x66

    .line 470
    :goto_37
    return v0

    .line 452
    :cond_38
    const/16 v0, 0x65

    goto :goto_37

    .line 454
    :cond_3b
    array-length v0, v2

    if-le v0, v4, :cond_45

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_45

    const/16 v0, 0x64

    goto :goto_37

    :cond_45
    const/16 v0, 0x63

    goto :goto_37

    .line 456
    :cond_48
    array-length v0, v2

    if-le v0, v5, :cond_5c

    aget-boolean v0, v2, v5

    if-eqz v0, :cond_5c

    .line 457
    array-length v0, v2

    if-le v0, v4, :cond_59

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_59

    const/16 v0, 0x62

    goto :goto_37

    :cond_59
    const/16 v0, 0x61

    goto :goto_37

    .line 459
    :cond_5c
    array-length v0, v2

    if-le v0, v4, :cond_66

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_66

    const/16 v0, 0x39

    goto :goto_37

    :cond_66
    const/16 v0, 0x38

    goto :goto_37

    .line 461
    :cond_69
    array-length v0, v2

    if-le v0, v6, :cond_91

    aget-boolean v0, v2, v6

    if-eqz v0, :cond_91

    .line 462
    array-length v0, v2

    if-le v0, v5, :cond_84

    aget-boolean v0, v2, v5

    if-eqz v0, :cond_84

    .line 463
    array-length v0, v2

    if-le v0, v4, :cond_81

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_81

    const/16 v0, 0x37

    goto :goto_37

    :cond_81
    const/16 v0, 0x36

    goto :goto_37

    .line 465
    :cond_84
    array-length v0, v2

    if-le v0, v4, :cond_8e

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_8e

    const/16 v0, 0x35

    goto :goto_37

    :cond_8e
    const/16 v0, 0x34

    goto :goto_37

    .line 467
    :cond_91
    array-length v0, v2

    if-le v0, v5, :cond_a5

    aget-boolean v0, v2, v5

    if-eqz v0, :cond_a5

    .line 468
    array-length v0, v2

    if-le v0, v4, :cond_a2

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_a2

    const/16 v0, 0x33

    goto :goto_37

    :cond_a2
    const/16 v0, 0x32

    goto :goto_37

    .line 470
    :cond_a5
    array-length v0, v2

    if-le v0, v4, :cond_af

    aget-boolean v0, v2, v4

    if-eqz v0, :cond_af

    const/16 v0, 0x31

    goto :goto_37

    :cond_af
    const/16 v0, 0x30

    goto :goto_37

    .line 441
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToByte([ZIBII)B
    .registers 9

    .line 1021
    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 1034
    :cond_7
    return p2

    .line 1024
    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_24

    .line 1027
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_7

    .line 1029
    add-int v1, v0, p3

    .line 1030
    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    .line 1031
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    shl-int v1, v2, v1

    or-int/2addr v1, v3

    int-to-byte p2, v1

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1025
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToHexDigit([Z)C
    .registers 2

    .line 291
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigit([ZI)C
    .registers 4

    .line 310
    array-length v0, p0

    if-eqz v0, :cond_8c

    .line 313
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_48

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_48

    .line 314
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_2e

    .line 315
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_24

    .line 316
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_21

    const/16 v0, 0x66

    .line 334
    :goto_20
    return v0

    .line 316
    :cond_21
    const/16 v0, 0x65

    goto :goto_20

    .line 318
    :cond_24
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_2b

    const/16 v0, 0x64

    goto :goto_20

    :cond_2b
    const/16 v0, 0x63

    goto :goto_20

    .line 320
    :cond_2e
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3e

    .line 321
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_3b

    const/16 v0, 0x62

    goto :goto_20

    :cond_3b
    const/16 v0, 0x61

    goto :goto_20

    .line 323
    :cond_3e
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_45

    const/16 v0, 0x39

    goto :goto_20

    :cond_45
    const/16 v0, 0x38

    goto :goto_20

    .line 325
    :cond_48
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_6d

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_6d

    .line 326
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_63

    .line 327
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_60

    const/16 v0, 0x37

    goto :goto_20

    :cond_60
    const/16 v0, 0x36

    goto :goto_20

    .line 329
    :cond_63
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_6a

    const/16 v0, 0x35

    goto :goto_20

    :cond_6a
    const/16 v0, 0x34

    goto :goto_20

    .line 331
    :cond_6d
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_82

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_82

    .line 332
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_7f

    const/16 v0, 0x33

    goto :goto_20

    :cond_7f
    const/16 v0, 0x32

    goto :goto_20

    .line 334
    :cond_82
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_89

    const/16 v0, 0x31

    goto :goto_20

    :cond_89
    const/16 v0, 0x30

    goto :goto_20

    .line 311
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .registers 2

    .line 353
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .registers 4

    .line 374
    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_a4

    .line 377
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_84

    .line 380
    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_4a

    .line 381
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_30

    .line 382
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_26

    .line 383
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_23

    const/16 v0, 0x66

    .line 401
    :goto_22
    return v0

    .line 383
    :cond_23
    const/16 v0, 0x37

    goto :goto_22

    .line 385
    :cond_26
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_2d

    const/16 v0, 0x62

    goto :goto_22

    :cond_2d
    const/16 v0, 0x33

    goto :goto_22

    .line 387
    :cond_30
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_40

    .line 388
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_3d

    const/16 v0, 0x64

    goto :goto_22

    :cond_3d
    const/16 v0, 0x35

    goto :goto_22

    .line 390
    :cond_40
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_47

    const/16 v0, 0x39

    goto :goto_22

    :cond_47
    const/16 v0, 0x31

    goto :goto_22

    .line 392
    :cond_4a
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_6a

    .line 393
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_60

    .line 394
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_5d

    const/16 v0, 0x65

    goto :goto_22

    :cond_5d
    const/16 v0, 0x36

    goto :goto_22

    .line 396
    :cond_60
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_67

    const/16 v0, 0x61

    goto :goto_22

    :cond_67
    const/16 v0, 0x32

    goto :goto_22

    .line 398
    :cond_6a
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7a

    .line 399
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_77

    const/16 v0, 0x63

    goto :goto_22

    :cond_77
    const/16 v0, 0x34

    goto :goto_22

    .line 401
    :cond_7a
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_81

    const/16 v0, 0x38

    goto :goto_22

    :cond_81
    const/16 v0, 0x30

    goto :goto_22

    .line 378
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src.length-srcPos<4: src.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", srcPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src.length>8: src.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static binaryToInt([ZIIII)I
    .registers 9

    .line 951
    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 964
    :cond_7
    return p2

    .line 954
    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_24

    .line 958
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_7

    .line 959
    add-int v1, v0, p3

    .line 960
    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    .line 961
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    shl-int v1, v2, v1

    or-int p2, v3, v1

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 955
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToLong([ZIJII)J
    .registers 16

    const-wide/16 v2, 0x1

    .line 916
    array-length v0, p0

    if-nez v0, :cond_7

    if-eqz p1, :cond_9

    :cond_7
    if-nez p5, :cond_a

    .line 929
    :cond_9
    return-wide p2

    .line 919
    :cond_a
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2e

    .line 922
    const/4 v0, 0x0

    move v4, v0

    :goto_13
    if-ge v4, p5, :cond_9

    .line 924
    add-int v5, v4, p4

    .line 925
    add-int v0, v4, p1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_2b

    move-wide v0, v2

    .line 926
    :goto_1e
    const-wide/16 v6, -0x1

    shl-long v8, v2, v5

    xor-long/2addr v6, v8

    and-long/2addr v6, p2

    shl-long/2addr v0, v5

    or-long p2, v6, v0

    .line 923
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    .line 925
    :cond_2b
    const-wide/16 v0, 0x0

    goto :goto_1e

    .line 920
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToShort([ZISII)S
    .registers 9

    .line 986
    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 999
    :cond_7
    return p2

    .line 989
    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_24

    .line 992
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_7

    .line 994
    add-int v1, v0, p3

    .line 995
    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    .line 996
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    shl-int v1, v2, v1

    or-int/2addr v1, v3

    int-to-short p2, v1

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 990
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToInt([BIIII)I
    .registers 9

    .line 715
    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 728
    :cond_7
    return p2

    .line 718
    :cond_8
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2a

    .line 722
    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_7

    .line 723
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    .line 724
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    .line 725
    const/16 v3, 0xff

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/lit16 v2, v2, 0xff

    shl-int v1, v2, v1

    or-int p2, v3, v1

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 719
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToLong([BIJII)J
    .registers 16

    const-wide/16 v8, 0xff

    .line 680
    array-length v0, p0

    if-nez v0, :cond_7

    if-eqz p1, :cond_9

    :cond_7
    if-nez p5, :cond_a

    .line 693
    :cond_9
    return-wide p2

    .line 683
    :cond_a
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2b

    .line 686
    const/4 v0, 0x0

    :goto_14
    if-ge v0, p5, :cond_9

    .line 688
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p4

    .line 689
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    .line 690
    const-wide/16 v4, -0x1

    shl-long v6, v8, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p2

    and-long/2addr v2, v8

    shl-long/2addr v2, v1

    or-long p2, v4, v2

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 684
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToShort([BISII)S
    .registers 9

    .line 750
    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 763
    :cond_7
    return p2

    .line 753
    :cond_8
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2a

    .line 756
    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_7

    .line 758
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    .line 759
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    .line 760
    const/16 v3, 0xff

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/lit16 v2, v2, 0xff

    shl-int v1, v2, v1

    or-int/2addr v1, v3

    int-to-short p2, v1

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 754
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .registers 12

    const-wide/16 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1558
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    .line 1561
    new-instance v6, Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v8

    add-int/lit8 v1, p1, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v0

    invoke-direct {v6, v8, v9, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v6

    .line 1559
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need at least 16 bytes for UUID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteToBinary(BI[ZII)[Z
    .registers 9

    const/4 v1, 0x0

    .line 1501
    if-nez p4, :cond_4

    .line 1511
    :cond_3
    return-object p2

    .line 1504
    :cond_4
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v2, 0x8

    if-ge v0, v2, :cond_21

    move v2, v1

    .line 1507
    :goto_c
    if-ge v2, p4, :cond_3

    .line 1508
    const/4 v0, 0x1

    add-int v3, v2, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    :goto_17
    add-int v3, p3, v2

    aput-boolean v0, p2, v3

    .line 1507
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_1f
    move v0, v1

    .line 1508
    goto :goto_17

    .line 1505
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .registers 10

    .line 1364
    if-nez p4, :cond_3

    .line 1382
    :goto_2
    return-object p2

    .line 1367
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3e

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1372
    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_39

    .line 1373
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    .line 1375
    add-int v4, p3, v1

    if-ne v4, v0, :cond_2f

    .line 1376
    add-int/lit8 v0, v0, 0x1

    .line 1377
    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1372
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1379
    :cond_2f
    add-int v4, p3, v1

    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2c

    .line 1382
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1368
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .registers 3

    .line 232
    sparse-switch p0, :sswitch_data_b0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpret \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' as a hexadecimal digit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :sswitch_1f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_27
    return-object v0

    .line 267
    :sswitch_28
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 264
    :sswitch_31
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 261
    :sswitch_3a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 258
    :sswitch_43
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 255
    :sswitch_4c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 252
    :sswitch_55
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 250
    :sswitch_5e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 248
    :sswitch_67
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 246
    :sswitch_70
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 244
    :sswitch_79
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 242
    :sswitch_82
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 240
    :sswitch_8b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 238
    :sswitch_94
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 236
    :sswitch_9d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 234
    :sswitch_a6
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_27

    .line 232
    :sswitch_data_b0
    .sparse-switch
        0x30 -> :sswitch_a6
        0x31 -> :sswitch_9d
        0x32 -> :sswitch_94
        0x33 -> :sswitch_8b
        0x34 -> :sswitch_82
        0x35 -> :sswitch_79
        0x36 -> :sswitch_70
        0x37 -> :sswitch_67
        0x38 -> :sswitch_5e
        0x39 -> :sswitch_55
        0x41 -> :sswitch_4c
        0x42 -> :sswitch_43
        0x43 -> :sswitch_3a
        0x44 -> :sswitch_31
        0x45 -> :sswitch_28
        0x46 -> :sswitch_1f
        0x61 -> :sswitch_4c
        0x62 -> :sswitch_43
        0x63 -> :sswitch_3a
        0x64 -> :sswitch_31
        0x65 -> :sswitch_28
        0x66 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .registers 3

    .line 116
    sparse-switch p0, :sswitch_data_48

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpret \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' as a hexadecimal digit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :sswitch_1f
    const/16 v0, 0xf

    :goto_21
    return v0

    .line 151
    :sswitch_22
    const/4 v0, 0x7

    goto :goto_21

    .line 148
    :sswitch_24
    const/16 v0, 0xb

    goto :goto_21

    .line 145
    :sswitch_27
    const/4 v0, 0x3

    goto :goto_21

    .line 142
    :sswitch_29
    const/16 v0, 0xd

    goto :goto_21

    .line 139
    :sswitch_2c
    const/4 v0, 0x5

    goto :goto_21

    .line 136
    :sswitch_2e
    const/16 v0, 0x9

    goto :goto_21

    .line 134
    :sswitch_31
    const/4 v0, 0x1

    goto :goto_21

    .line 132
    :sswitch_33
    const/16 v0, 0xe

    goto :goto_21

    .line 130
    :sswitch_36
    const/4 v0, 0x6

    goto :goto_21

    .line 128
    :sswitch_38
    const/16 v0, 0xa

    goto :goto_21

    .line 126
    :sswitch_3b
    const/4 v0, 0x2

    goto :goto_21

    .line 124
    :sswitch_3d
    const/16 v0, 0xc

    goto :goto_21

    .line 122
    :sswitch_40
    const/4 v0, 0x4

    goto :goto_21

    .line 120
    :sswitch_42
    const/16 v0, 0x8

    goto :goto_21

    .line 118
    :sswitch_45
    const/4 v0, 0x0

    goto :goto_21

    .line 116
    nop

    :sswitch_data_48
    .sparse-switch
        0x30 -> :sswitch_45
        0x31 -> :sswitch_42
        0x32 -> :sswitch_40
        0x33 -> :sswitch_3d
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_38
        0x36 -> :sswitch_36
        0x37 -> :sswitch_33
        0x38 -> :sswitch_31
        0x39 -> :sswitch_2e
        0x41 -> :sswitch_2c
        0x42 -> :sswitch_29
        0x43 -> :sswitch_27
        0x44 -> :sswitch_24
        0x45 -> :sswitch_22
        0x46 -> :sswitch_1f
        0x61 -> :sswitch_2c
        0x62 -> :sswitch_29
        0x63 -> :sswitch_27
        0x64 -> :sswitch_24
        0x65 -> :sswitch_22
        0x66 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .registers 3

    .line 174
    sparse-switch p0, :sswitch_data_b0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpret \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' as a hexadecimal digit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :sswitch_1f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_27
    return-object v0

    .line 209
    :sswitch_28
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 206
    :sswitch_31
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 203
    :sswitch_3a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 200
    :sswitch_43
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 197
    :sswitch_4c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 194
    :sswitch_55
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 192
    :sswitch_5e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 190
    :sswitch_67
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 188
    :sswitch_70
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 186
    :sswitch_79
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 184
    :sswitch_82
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 182
    :sswitch_8b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 180
    :sswitch_94
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 178
    :sswitch_9d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_27

    .line 176
    :sswitch_a6
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_27

    .line 174
    :sswitch_data_b0
    .sparse-switch
        0x30 -> :sswitch_a6
        0x31 -> :sswitch_9d
        0x32 -> :sswitch_94
        0x33 -> :sswitch_8b
        0x34 -> :sswitch_82
        0x35 -> :sswitch_79
        0x36 -> :sswitch_70
        0x37 -> :sswitch_67
        0x38 -> :sswitch_5e
        0x39 -> :sswitch_55
        0x41 -> :sswitch_4c
        0x42 -> :sswitch_43
        0x43 -> :sswitch_3a
        0x44 -> :sswitch_31
        0x45 -> :sswitch_28
        0x46 -> :sswitch_1f
        0x61 -> :sswitch_4c
        0x62 -> :sswitch_43
        0x63 -> :sswitch_3a
        0x64 -> :sswitch_31
        0x65 -> :sswitch_28
        0x66 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static hexDigitToInt(C)I
    .registers 3

    .line 96
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 97
    if-ltz v0, :cond_9

    .line 100
    return v0

    .line 98
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpret \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' as a hexadecimal digit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .registers 9

    .line 881
    if-nez p4, :cond_3

    .line 894
    :cond_2
    return p2

    .line 884
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2b

    .line 887
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 889
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 890
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    .line 891
    const/16 v3, 0xf

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/lit8 v2, v2, 0xf

    shl-int v1, v2, v1

    or-int/2addr v1, v3

    int-to-byte p2, v1

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 885
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .registers 9

    .line 815
    if-nez p4, :cond_3

    .line 828
    :cond_2
    return p2

    .line 818
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2b

    .line 822
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 823
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 824
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    .line 825
    const/16 v3, 0xf

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/lit8 v2, v2, 0xf

    shl-int v1, v2, v1

    or-int p2, v3, v1

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 819
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .registers 16

    const-wide/16 v8, 0xf

    .line 783
    if-nez p5, :cond_5

    .line 796
    :cond_4
    return-wide p2

    .line 786
    :cond_5
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2c

    .line 789
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p5, :cond_4

    .line 791
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p4

    .line 792
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    int-to-long v2, v2

    .line 793
    const-wide/16 v4, -0x1

    shl-long v6, v8, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p2

    and-long/2addr v2, v8

    shl-long/2addr v2, v1

    or-long p2, v4, v2

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 787
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .registers 9

    .line 848
    if-nez p4, :cond_3

    .line 861
    :cond_2
    return p2

    .line 851
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2b

    .line 854
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 856
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 857
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    .line 858
    const/16 v3, 0xf

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/lit8 v2, v2, 0xf

    shl-int v1, v2, v1

    or-int/2addr v1, v3

    int-to-short p2, v1

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 852
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intArrayToLong([IIJII)J
    .registers 16

    const-wide v8, 0xffffffffL

    .line 575
    array-length v0, p0

    if-nez v0, :cond_a

    if-eqz p1, :cond_c

    :cond_a
    if-nez p5, :cond_d

    .line 588
    :cond_c
    return-wide p2

    .line 578
    :cond_d
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2e

    .line 581
    const/4 v0, 0x0

    :goto_17
    if-ge v0, p5, :cond_c

    .line 583
    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p4

    .line 584
    add-int v2, v0, p1

    aget v2, p0, v2

    int-to-long v2, v2

    .line 585
    const-wide/16 v4, -0x1

    shl-long v6, v8, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p2

    and-long/2addr v2, v8

    shl-long/2addr v2, v1

    or-long p2, v4, v2

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 579
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nInts-1)*32+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToBinary(II[ZII)[Z
    .registers 9

    const/4 v1, 0x0

    .line 1436
    if-nez p4, :cond_4

    .line 1446
    :cond_3
    return-object p2

    .line 1439
    :cond_4
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_21

    move v2, v1

    .line 1442
    :goto_c
    if-ge v2, p4, :cond_3

    .line 1443
    const/4 v0, 0x1

    add-int v3, v2, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    :goto_17
    add-int v3, p3, v2

    aput-boolean v0, p2, v3

    .line 1442
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_1f
    move v0, v1

    .line 1443
    goto :goto_17

    .line 1440
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToByteArray(II[BII)[B
    .registers 8

    .line 1184
    if-nez p4, :cond_3

    .line 1194
    :cond_2
    return-object p2

    .line 1187
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1e

    .line 1190
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 1191
    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1188
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .registers 10

    .line 1286
    if-nez p4, :cond_3

    .line 1304
    :goto_2
    return-object p2

    .line 1289
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3e

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1294
    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_39

    .line 1295
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    .line 1297
    add-int v4, p3, v1

    if-ne v4, v0, :cond_2f

    .line 1298
    add-int/lit8 v0, v0, 0x1

    .line 1299
    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1301
    :cond_2f
    add-int v4, p3, v1

    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2c

    .line 1304
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1290
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHexDigit(I)C
    .registers 3

    .line 492
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 493
    if-eqz v0, :cond_9

    .line 496
    return v0

    .line 494
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nibble value not between 0 and 15: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static intToHexDigitMsb0(I)C
    .registers 3

    .line 518
    packed-switch p0, :pswitch_data_4a

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nibble value not between 0 and 15: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :pswitch_1a  #0xf
    const/16 v0, 0x66

    :goto_1c
    return v0

    .line 548
    :pswitch_1d  #0xe
    const/16 v0, 0x37

    goto :goto_1c

    .line 546
    :pswitch_20  #0xd
    const/16 v0, 0x62

    goto :goto_1c

    .line 544
    :pswitch_23  #0xc
    const/16 v0, 0x33

    goto :goto_1c

    .line 542
    :pswitch_26  #0xb
    const/16 v0, 0x64

    goto :goto_1c

    .line 540
    :pswitch_29  #0xa
    const/16 v0, 0x35

    goto :goto_1c

    .line 538
    :pswitch_2c  #0x9
    const/16 v0, 0x39

    goto :goto_1c

    .line 536
    :pswitch_2f  #0x8
    const/16 v0, 0x31

    goto :goto_1c

    .line 534
    :pswitch_32  #0x7
    const/16 v0, 0x65

    goto :goto_1c

    .line 532
    :pswitch_35  #0x6
    const/16 v0, 0x36

    goto :goto_1c

    .line 530
    :pswitch_38  #0x5
    const/16 v0, 0x61

    goto :goto_1c

    .line 528
    :pswitch_3b  #0x4
    const/16 v0, 0x32

    goto :goto_1c

    .line 526
    :pswitch_3e  #0x3
    const/16 v0, 0x63

    goto :goto_1c

    .line 524
    :pswitch_41  #0x2
    const/16 v0, 0x34

    goto :goto_1c

    .line 522
    :pswitch_44  #0x1
    const/16 v0, 0x38

    goto :goto_1c

    .line 520
    :pswitch_47  #0x0
    const/16 v0, 0x30

    goto :goto_1c

    .line 518
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_44  #00000001
        :pswitch_41  #00000002
        :pswitch_3e  #00000003
        :pswitch_3b  #00000004
        :pswitch_38  #00000005
        :pswitch_35  #00000006
        :pswitch_32  #00000007
        :pswitch_2f  #00000008
        :pswitch_2c  #00000009
        :pswitch_29  #0000000a
        :pswitch_26  #0000000b
        :pswitch_23  #0000000c
        :pswitch_20  #0000000d
        :pswitch_1d  #0000000e
        :pswitch_1a  #0000000f
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .registers 9

    .line 1120
    if-nez p4, :cond_3

    .line 1130
    :cond_2
    return-object p2

    .line 1123
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_20

    .line 1126
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 1127
    add-int v1, p3, v0

    const v2, 0xffff

    mul-int/lit8 v3, v0, 0x10

    add-int/2addr v3, p1

    shr-int v3, p0, v3

    and-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p2, v1

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1124
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToBinary(JI[ZII)[Z
    .registers 14

    const/4 v1, 0x0

    .line 1404
    if-nez p5, :cond_4

    .line 1414
    :cond_3
    return-object p3

    .line 1407
    :cond_4
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p2

    const/16 v2, 0x40

    if-ge v0, v2, :cond_26

    move v2, v1

    .line 1410
    :goto_c
    if-ge v2, p5, :cond_3

    .line 1411
    const-wide/16 v4, 0x1

    add-int v0, v2, p2

    shr-long v6, p0, v0

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_1c
    add-int v3, p4, v2

    aput-boolean v0, p3, v3

    .line 1410
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_24
    move v0, v1

    .line 1411
    goto :goto_1c

    .line 1408
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToByteArray(JI[BII)[B
    .registers 12

    .line 1152
    if-nez p5, :cond_3

    .line 1162
    :cond_2
    return-object p3

    .line 1155
    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_20

    .line 1158
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_2

    .line 1159
    add-int v1, p4, v0

    const-wide/16 v2, 0xff

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, p2

    shr-long v4, p0, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1156
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .registers 14

    .line 1247
    if-nez p5, :cond_3

    .line 1265
    :goto_2
    return-object p3

    .line 1250
    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_40

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1255
    const/4 v1, 0x0

    :goto_16
    if-ge v1, p5, :cond_3b

    .line 1256
    const-wide/16 v4, 0xf

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p2

    shr-long v6, p0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    .line 1258
    add-int v4, p4, v1

    if-ne v4, v0, :cond_31

    .line 1259
    add-int/lit8 v0, v0, 0x1

    .line 1260
    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1262
    :cond_31
    add-int v4, p4, v1

    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2e

    .line 1265
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 1251
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToIntArray(JI[III)[I
    .registers 12

    .line 1056
    if-nez p5, :cond_3

    .line 1066
    :cond_2
    return-object p3

    .line 1059
    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1f

    .line 1062
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_2

    .line 1063
    add-int v1, p4, v0

    const-wide/16 v2, -0x1

    mul-int/lit8 v4, v0, 0x20

    add-int/2addr v4, p2

    shr-long v4, p0, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, p3, v1

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1060
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nInts-1)*32+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToShortArray(JI[SII)[S
    .registers 12

    .line 1088
    if-nez p5, :cond_3

    .line 1098
    :cond_2
    return-object p3

    .line 1091
    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_21

    .line 1094
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_2

    .line 1095
    add-int v1, p4, v0

    const-wide/32 v2, 0xffff

    mul-int/lit8 v4, v0, 0x10

    add-int/2addr v4, p2

    shr-long v4, p0, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p3, v1

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1092
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortArrayToInt([SIIII)I
    .registers 10

    const v4, 0xffff

    .line 645
    array-length v0, p0

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    if-nez p4, :cond_b

    .line 658
    :cond_a
    return p2

    .line 648
    :cond_b
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2b

    .line 652
    const/4 v0, 0x0

    :goto_15
    if-ge v0, p4, :cond_a

    .line 653
    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p3

    .line 654
    add-int v2, v0, p1

    aget-short v2, p0, v2

    .line 655
    shl-int v3, v4, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    and-int/2addr v2, v4

    shl-int v1, v2, v1

    or-int p2, v3, v1

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 649
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortArrayToLong([SIJII)J
    .registers 16

    const-wide/32 v8, 0xffff

    .line 610
    array-length v0, p0

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    if-nez p5, :cond_b

    .line 623
    :cond_a
    return-wide p2

    .line 613
    :cond_b
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2c

    .line 616
    const/4 v0, 0x0

    :goto_15
    if-ge v0, p5, :cond_a

    .line 618
    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p4

    .line 619
    add-int v2, v0, p1

    aget-short v2, p0, v2

    int-to-long v2, v2

    .line 620
    const-wide/16 v4, -0x1

    shl-long v6, v8, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p2

    and-long/2addr v2, v8

    shl-long/2addr v2, v1

    or-long p2, v4, v2

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 614
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .registers 9

    const/4 v1, 0x0

    .line 1468
    if-nez p4, :cond_4

    .line 1479
    :cond_3
    return-object p2

    .line 1471
    :cond_4
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v2, 0x10

    if-ge v0, v2, :cond_21

    move v2, v1

    .line 1474
    :goto_c
    if-ge v2, p4, :cond_3

    .line 1476
    const/4 v0, 0x1

    add-int v3, v2, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    :goto_17
    add-int v3, p3, v2

    aput-boolean v0, p2, v3

    .line 1475
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_1f
    move v0, v1

    .line 1476
    goto :goto_17

    .line 1472
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToByteArray(SI[BII)[B
    .registers 8

    .line 1216
    if-nez p4, :cond_3

    .line 1226
    :cond_2
    return-object p2

    .line 1219
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1e

    .line 1222
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_2

    .line 1223
    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1220
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .registers 10

    .line 1325
    if-nez p4, :cond_3

    .line 1343
    :goto_2
    return-object p2

    .line 1328
    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3e

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1333
    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_39

    .line 1334
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p1

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    .line 1336
    add-int v4, p3, v1

    if-ne v4, v0, :cond_2f

    .line 1337
    add-int/lit8 v0, v0, 0x1

    .line 1338
    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1340
    :cond_2f
    add-int v4, p3, v1

    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2c

    .line 1343
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1329
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .registers 11

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 1531
    if-nez p3, :cond_6

    .line 1541
    :cond_5
    :goto_5
    return-object p1

    .line 1534
    :cond_6
    const/16 v0, 0x10

    if-gt p3, v0, :cond_26

    .line 1537
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    .line 1538
    if-lt p3, v6, :cond_5

    .line 1539
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    goto :goto_5

    .line 1535
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greater than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
