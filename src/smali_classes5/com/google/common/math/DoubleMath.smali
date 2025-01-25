.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 277
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 319
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x42b3077775800000L  # 2.0922789888E13
        0x474956ad0aae33a4L  # 2.631308369336935E35
        0x4c9ee69a78d72cb6L  # 1.2413915592536073E61
        0x526fe478ee34844aL  # 1.2688693218588417E89
        0x589c619094edabffL  # 7.156945704626381E118
        0x5f13638dd7bd6347L  # 9.916779348709496E149
        0x65c7cac197cfe503L  # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L  # 3.856204823625804E215
        0x73c8ce85fadb707eL  # 5.5502938327393044E249
        0x7b095d5f3d928edeL  # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinite(D)D
    .registers 4

    .line 523
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 524
    return-wide p0
.end method

.method public static factorial(I)D
    .registers 7

    .line 302
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 303
    const/16 v0, 0xaa

    if-le p0, v0, :cond_c

    .line 304
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 312
    :goto_b
    return-wide v0

    .line 308
    :cond_c
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 309
    and-int/lit8 v0, p0, -0x10

    add-int/lit8 v0, v0, 0x1

    :goto_12
    if-gt v0, p0, :cond_1c

    .line 310
    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 312
    :cond_1c
    sget-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v1, p0, 0x4

    aget-wide v0, v0, v1

    mul-double/2addr v0, v2

    goto :goto_b
.end method

.method public static fuzzyCompare(DDD)I
    .registers 8

    .line 381
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    const/4 v0, 0x0

    .line 388
    :goto_7
    return v0

    .line 383
    :cond_8
    cmpg-double v0, p0, p2

    if-gez v0, :cond_e

    .line 384
    const/4 v0, -0x1

    goto :goto_7

    .line 385
    :cond_e
    cmpl-double v0, p0, p2

    if-lez v0, :cond_14

    .line 386
    const/4 v0, 0x1

    goto :goto_7

    .line 388
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_7
.end method

.method public static fuzzyEquals(DDD)Z
    .registers 10

    .line 360
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 361
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_21

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_21

    .line 364
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    .line 361
    :goto_22
    return v0

    .line 364
    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4

    .line 287
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    .line 289
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 287
    :goto_1d
    return v0

    .line 289
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isPowerOfTwo(D)Z
    .registers 8

    const/4 v0, 0x0

    .line 200
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_1d

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 201
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    .line 202
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 204
    :cond_1d
    return v0
.end method

.method public static log2(D)D
    .registers 6

    .line 224
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_28

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_f
    const-string v3, "x must be positive and finite"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 240
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 241
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 242
    const-wide/high16 v0, 0x4330000000000000L  # 4.503599627370496E15

    mul-double/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    .line 253
    :cond_27
    :goto_27
    return v0

    :cond_28
    move v0, v2

    .line 239
    goto :goto_f

    .line 247
    :cond_2a
    sget-object v3, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_76

    .line 272
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :pswitch_3b  #0x6, 0x7, 0x8
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v4

    .line 269
    mul-double/2addr v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_73

    .line 253
    :goto_46
    if-eqz v1, :cond_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 261
    :pswitch_4b  #0x5
    if-ltz v0, :cond_71

    :goto_4d
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v1, v2

    .line 262
    goto :goto_46

    .line 258
    :pswitch_55  #0x4
    if-gez v0, :cond_6f

    :goto_57
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v1, v2

    .line 259
    goto :goto_46

    .line 255
    :pswitch_5f  #0x3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 256
    goto :goto_46

    .line 249
    :pswitch_66  #0x1
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_6d  #0x2
    move v1, v2

    .line 252
    goto :goto_46

    :cond_6f
    move v1, v2

    goto :goto_57

    :cond_71
    move v1, v2

    goto :goto_4d

    :cond_73
    move v1, v2

    goto :goto_46

    .line 247
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_6d  #00000002
        :pswitch_5f  #00000003
        :pswitch_55  #00000004
        :pswitch_4b  #00000005
        :pswitch_3b  #00000006
        :pswitch_3b  #00000007
        :pswitch_3b  #00000008
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1

    .line 508
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 510
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    move-wide v2, v4

    move-wide v6, v0

    .line 511
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 512
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v8

    .line 513
    add-long v0, v2, v4

    .line 515
    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v6

    div-double v2, v8, v2

    add-double/2addr v6, v2

    move-wide v2, v0

    .line 516
    goto :goto_1b

    .line 517
    :cond_3b
    return-wide v6
.end method

.method public static varargs mean([D)D
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    array-length v0, p0

    if-lez v0, :cond_2c

    move v0, v1

    :goto_8
    const-string v3, "Cannot take mean of 0 values"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 410
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v8

    move-wide v2, v4

    move v6, v1

    .line 411
    :goto_15
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 412
    aget-wide v0, p0, v6

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    .line 413
    add-long v0, v2, v4

    .line 415
    aget-wide v2, p0, v6

    long-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v8

    div-double/2addr v2, v10

    add-double/2addr v8, v2

    .line 411
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_15

    :cond_2c
    move v0, v2

    .line 408
    goto :goto_8

    .line 417
    :cond_2e
    return-wide v8
.end method

.method public static varargs mean([I)D
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    .line 434
    array-length v0, p0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 438
    const-wide/16 v2, 0x0

    move v4, v1

    .line 439
    :goto_d
    array-length v0, p0

    if-ge v4, v0, :cond_1a

    .line 440
    aget v0, p0, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 439
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_d

    :cond_18
    move v0, v1

    .line 434
    goto :goto_5

    .line 442
    :cond_1a
    long-to-double v0, v2

    array-length v2, p0

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static varargs mean([J)D
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    array-length v0, p0

    if-lez v0, :cond_28

    move v0, v1

    :goto_8
    const-string v3, "Cannot take mean of 0 values"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 462
    aget-wide v2, p0, v2

    long-to-double v8, v2

    move-wide v2, v4

    move v6, v1

    .line 463
    :goto_12
    array-length v0, p0

    if-ge v6, v0, :cond_2a

    .line 464
    add-long v0, v2, v4

    .line 466
    aget-wide v2, p0, v6

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    long-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v8

    div-double/2addr v2, v10

    add-double/2addr v8, v2

    .line 463
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_12

    :cond_28
    move v0, v2

    .line 460
    goto :goto_8

    .line 468
    :cond_2a
    return-wide v8
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 11

    const-wide/16 v2, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    const-wide/16 v4, 0x0

    .line 56
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 59
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :pswitch_1d  #0x8
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 104
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_2c

    .line 107
    :cond_2b
    :goto_2b
    :pswitch_2b  #0x4
    return-wide p0

    :cond_2c
    move-wide p0, v0

    goto :goto_2b

    .line 93
    :pswitch_2e  #0x7
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 94
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_42

    .line 95
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    goto :goto_2b

    :cond_42
    move-wide p0, v0

    .line 97
    goto :goto_2b

    .line 89
    :pswitch_44  #0x6
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    goto :goto_2b

    .line 82
    :pswitch_49  #0x5
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 85
    double-to-long v2, p0

    cmpl-double v0, p0, v4

    if-lez v0, :cond_59

    const/4 v0, 0x1

    :goto_55
    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-double p0, v0

    goto :goto_2b

    :cond_59
    const/4 v0, -0x1

    goto :goto_55

    .line 72
    :pswitch_5b  #0x3
    cmpg-double v0, p0, v4

    if-lez v0, :cond_2b

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 75
    double-to-long v0, p0

    add-long/2addr v0, v2

    long-to-double p0, v0

    goto :goto_2b

    .line 65
    :pswitch_69  #0x2
    cmpl-double v0, p0, v4

    if-gez v0, :cond_2b

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 68
    double-to-long v0, p0

    sub-long/2addr v0, v2

    long-to-double p0, v0

    goto :goto_2b

    .line 61
    :pswitch_77  #0x1
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_2b

    .line 57
    :cond_7f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_77  #00000001
        :pswitch_69  #00000002
        :pswitch_5b  #00000003
        :pswitch_2b  #00000004
        :pswitch_49  #00000005
        :pswitch_44  #00000006
        :pswitch_2e  #00000007
        :pswitch_1d  #00000008
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    .line 185
    const-wide/high16 v2, -0x3c20000000000000L  # -9.223372036854776E18

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1f

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x43e0000000000000L  # 9.223372036854776E18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_21

    :goto_16
    and-int/2addr v0, v2

    if-eqz v0, :cond_23

    .line 186
    double-to-long v0, v4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    move v2, v1

    .line 185
    goto :goto_10

    :cond_21
    move v0, v1

    goto :goto_16

    .line 188
    :cond_23
    invoke-static {v4, v5}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 189
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    .line 190
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x34

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_1e

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1e
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    .line 133
    const-wide v2, -0x3e1fffffffe00000L  # -2.147483649E9

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1c

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x41e0000000000000L  # 2.147483648E9

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1e

    :goto_16
    and-int/2addr v0, v2

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 135
    double-to-int v0, v4

    return v0

    :cond_1c
    move v2, v1

    .line 133
    goto :goto_10

    :cond_1e
    move v0, v1

    goto :goto_16
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v4

    .line 158
    const-wide/high16 v2, -0x3c20000000000000L  # -9.223372036854776E18

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1c

    move v2, v0

    :goto_10
    const-wide/high16 v6, 0x43e0000000000000L  # 9.223372036854776E18

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1e

    :goto_16
    and-int/2addr v0, v2

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 160
    double-to-long v0, v4

    return-wide v0

    :cond_1c
    move v2, v1

    .line 158
    goto :goto_10

    :cond_1e
    move v0, v1

    goto :goto_16
.end method
