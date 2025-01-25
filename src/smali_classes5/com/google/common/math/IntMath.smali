.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0xa

    .line 201
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 627
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 676
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    .line 201
    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 207
    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 213
    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 627
    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 676
    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 650
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 651
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    if-gt p1, p0, :cond_27

    move v0, v1

    :goto_f
    const-string v3, "k (%s) > n (%s)"

    invoke-static {v0, v3, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 653
    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_1a

    .line 654
    sub-int p1, p0, p1

    .line 656
    :cond_1a
    sget-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v3, v0

    if-ge p1, v3, :cond_23

    aget v0, v0, p1

    if-le p0, v0, :cond_29

    .line 657
    :cond_23
    const p0, 0x7fffffff

    .line 670
    :cond_26
    :goto_26
    return p0

    :cond_27
    move v0, v2

    .line 652
    goto :goto_f

    .line 659
    :cond_29
    if-eqz p1, :cond_3e

    if-eq p1, v1, :cond_26

    .line 665
    const-wide/16 v0, 0x1

    .line 666
    :goto_2f
    if-ge v2, p1, :cond_3c

    .line 667
    sub-int v3, p0, v2

    int-to-long v4, v3

    .line 668
    mul-long/2addr v0, v4

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    div-long/2addr v0, v4

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 670
    :cond_3c
    long-to-int p0, v0

    goto :goto_26

    :cond_3e
    move p0, v1

    .line 661
    goto :goto_26
.end method

.method public static ceilingPowerOfTwo(I)I
    .registers 3

    .line 67
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 68
    const/high16 v0, 0x40000000  # 2.0f

    if-gt p0, v0, :cond_13

    .line 71
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    neg-int v1, v1

    shl-int/2addr v0, v1

    return v0

    .line 69
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ceilingPowerOfTwo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not representable as an int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkedAdd(II)I
    .registers 6

    .line 455
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 456
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    const-string v1, "checkedAdd"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 457
    long-to-int v0, v2

    return v0

    .line 456
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkedMultiply(II)I
    .registers 6

    .line 477
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v2, v0

    .line 478
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    const-string v1, "checkedMultiply"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 479
    long-to-int v0, v2

    return v0

    .line 478
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkedPow(II)I
    .registers 7

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 491
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 492
    const/4 v3, -0x2

    if-eq p0, v3, :cond_5c

    if-eq p0, v0, :cond_56

    if-eqz p0, :cond_52

    if-eq p0, v1, :cond_43

    const/4 v0, 0x2

    if-eq p0, v0, :cond_46

    move v0, v1

    .line 510
    :goto_15
    if-eqz p1, :cond_44

    if-eq p1, v1, :cond_3f

    .line 516
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_72

    .line 517
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    move v4, v0

    .line 519
    :goto_22
    shr-int/lit8 p1, p1, 0x1

    .line 520
    if-lez p1, :cond_70

    .line 521
    const v0, -0xb504

    if-gt v0, p0, :cond_3b

    move v3, v1

    :goto_2c
    const v0, 0xb504

    if-gt p0, v0, :cond_3d

    move v0, v1

    :goto_32
    and-int/2addr v0, v3

    const-string v3, "checkedPow"

    invoke-static {v0, v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 522
    mul-int/2addr p0, p0

    move v0, v4

    goto :goto_15

    :cond_3b
    move v3, v2

    .line 521
    goto :goto_2c

    :cond_3d
    move v0, v2

    goto :goto_32

    .line 514
    :cond_3f
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    :cond_43
    :goto_43
    return v1

    :cond_44
    move v1, v0

    .line 512
    goto :goto_43

    .line 500
    :cond_46
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_4b

    move v2, v1

    :cond_4b
    const-string v0, "checkedPow"

    invoke-static {v2, v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 501
    shl-int/2addr v1, p1

    goto :goto_43

    .line 494
    :cond_52
    if-eqz p1, :cond_43

    move v1, v2

    goto :goto_43

    .line 498
    :cond_56
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_43

    move v1, v0

    goto :goto_43

    .line 503
    :cond_5c
    const/16 v3, 0x20

    if-ge p1, v3, :cond_61

    move v2, v1

    :cond_61
    const-string v3, "checkedPow"

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 504
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6e

    shl-int v0, v1, p1

    :goto_6c
    move v1, v0

    goto :goto_43

    :cond_6e
    shl-int/2addr v0, p1

    goto :goto_6c

    :cond_70
    move v0, v4

    goto :goto_15

    :cond_72
    move v4, v0

    goto :goto_22
.end method

.method public static checkedSubtract(II)I
    .registers 6

    .line 466
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long v2, v0, v2

    .line 467
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_b
    const-string v1, "checkedSubtract"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 468
    long-to-int v0, v2

    return v0

    .line 467
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    if-eqz p1, :cond_67

    .line 321
    div-int v2, p0, p1

    .line 322
    mul-int v3, p1, v2

    sub-int v3, p0, v3

    .line 324
    if-nez v3, :cond_10

    .line 343
    :goto_f
    return v2

    .line 335
    :cond_10
    xor-int v4, p0, p1

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    .line 337
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_70

    .line 367
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :pswitch_27  #0x6, 0x7, 0x8
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 357
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    .line 360
    if-nez v3, :cond_50

    .line 361
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_44

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_4a

    move v4, v0

    :goto_3c
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_4c

    move v3, v0

    :goto_41
    and-int/2addr v3, v4

    if-eqz v3, :cond_4e

    .line 343
    :cond_44
    :goto_44
    :pswitch_44  #0x4
    if-eqz v0, :cond_65

    add-int v0, v2, v5

    :goto_48
    move v2, v0

    goto :goto_f

    :cond_4a
    move v4, v1

    .line 361
    goto :goto_3c

    :cond_4c
    move v3, v1

    goto :goto_41

    :cond_4e
    move v0, v1

    goto :goto_44

    .line 363
    :cond_50
    if-gtz v3, :cond_44

    move v0, v1

    goto :goto_44

    .line 348
    :pswitch_54  #0x5
    if-gtz v5, :cond_44

    move v0, v1

    goto :goto_44

    .line 351
    :pswitch_58  #0x3
    if-ltz v5, :cond_44

    move v0, v1

    goto :goto_44

    .line 339
    :pswitch_5c  #0x1
    if-nez v3, :cond_63

    :goto_5e
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_61  #0x2
    move v0, v1

    .line 342
    goto :goto_44

    :cond_63
    move v0, v1

    .line 339
    goto :goto_5e

    :cond_65
    move v0, v2

    .line 343
    goto :goto_48

    .line 319
    :cond_67
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_61  #00000002
        :pswitch_58  #00000003
        :pswitch_44  #00000004
        :pswitch_54  #00000005
        :pswitch_27  #00000006
        :pswitch_27  #00000007
        :pswitch_27  #00000008
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 3

    .line 623
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 624
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v1, v0

    if-ge p0, v1, :cond_d

    aget v0, v0, p0

    :goto_c
    return v0

    :cond_d
    const v0, 0x7fffffff

    goto :goto_c
.end method

.method public static floorPowerOfTwo(I)I
    .registers 2

    .line 83
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static gcd(II)I
    .registers 7

    .line 410
    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 411
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 412
    if-nez p0, :cond_d

    .line 446
    :goto_c
    return p1

    .line 416
    :cond_d
    if-nez p1, :cond_11

    move p1, p0

    .line 417
    goto :goto_c

    .line 423
    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 424
    shr-int v0, p0, v2

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 426
    shr-int v1, p1, v3

    .line 427
    :goto_1d
    if-eq v0, v1, :cond_2c

    .line 435
    sub-int/2addr v0, v1

    .line 437
    shr-int/lit8 v4, v0, 0x1f

    and-int/2addr v4, v0

    .line 440
    sub-int/2addr v0, v4

    sub-int/2addr v0, v4

    .line 443
    add-int/2addr v1, v4

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr v0, v4

    .line 445
    goto :goto_1d

    .line 446
    :cond_2c
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int p1, v0, v1

    goto :goto_c
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    if-lez p0, :cond_c

    move v2, v0

    :goto_5
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_e

    :goto_a
    and-int/2addr v0, v2

    return v0

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_a
.end method

.method public static isPrime(I)Z
    .registers 3

    .line 724
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result v0

    return v0
.end method

.method static lessThanBranchFree(II)I
    .registers 3

    .line 106
    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6

    .line 160
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 161
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 162
    sget-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v0, v1

    .line 163
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 179
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :pswitch_1e  #0x6, 0x7, 0x8
    sget-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v0, v0, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_27
    return v0

    .line 172
    :pswitch_28  #0x4, 0x5
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_27

    .line 165
    :pswitch_2e  #0x1
    if-ne p0, v0, :cond_36

    const/4 v0, 0x1

    :goto_31
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_34  #0x2, 0x3
    move v0, v1

    .line 169
    goto :goto_27

    .line 165
    :cond_36
    const/4 v0, 0x0

    goto :goto_31

    .line 163
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_34  #00000002
        :pswitch_34  #00000003
        :pswitch_28  #00000004
        :pswitch_28  #00000005
        :pswitch_1e  #00000006
        :pswitch_1e  #00000007
        :pswitch_1e  #00000008
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 3

    .line 191
    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    .line 196
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 4

    .line 119
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 120
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :pswitch_16  #0x6, 0x7, 0x8
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 137
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    rsub-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    :goto_25
    return v0

    .line 130
    :pswitch_26  #0x4, 0x5
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_25

    .line 122
    :pswitch_2f  #0x1
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 126
    :pswitch_36  #0x2, 0x3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    goto :goto_25

    .line 120
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_36  #00000002
        :pswitch_36  #00000003
        :pswitch_26  #00000004
        :pswitch_26  #00000005
        :pswitch_16  #00000006
        :pswitch_16  #00000007
        :pswitch_16  #00000008
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 4

    .line 706
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .registers 4

    .line 391
    if-lez p1, :cond_9

    .line 394
    rem-int v0, p0, p1

    .line 395
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    add-int/2addr v0, p1

    goto :goto_6

    .line 392
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modulus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static pow(II)I
    .registers 7

    const/16 v4, 0x20

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 228
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 229
    const/4 v3, -0x2

    if-eq p0, v3, :cond_40

    if-eq p0, v2, :cond_38

    if-eqz p0, :cond_34

    if-eq p0, v1, :cond_32

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2d

    move v3, v1

    move v2, p0

    .line 248
    :goto_18
    if-eqz p1, :cond_2b

    if-eq p1, v1, :cond_28

    .line 254
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_26

    move v0, v1

    :goto_21
    mul-int/2addr v3, v0

    .line 255
    mul-int/2addr v2, v2

    .line 247
    shr-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_26
    move v0, v2

    .line 254
    goto :goto_21

    .line 252
    :cond_28
    mul-int v0, v2, v3

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    move v0, v3

    .line 250
    goto :goto_2a

    .line 237
    :cond_2d
    if-ge p1, v4, :cond_2a

    shl-int v0, v1, p1

    goto :goto_2a

    :cond_32
    move v0, v1

    .line 233
    goto :goto_2a

    .line 231
    :cond_34
    if-nez p1, :cond_4d

    :goto_36
    move v0, v1

    goto :goto_2a

    .line 235
    :cond_38
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3e

    :goto_3c
    move v0, v1

    goto :goto_2a

    :cond_3e
    move v1, v2

    goto :goto_3c

    .line 239
    :cond_40
    if-ge p1, v4, :cond_2a

    .line 240
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_49

    shl-int v0, v1, p1

    goto :goto_2a

    :cond_49
    shl-int v0, v1, p1

    neg-int v0, v0

    goto :goto_2a

    :cond_4d
    move v1, v0

    goto :goto_36
.end method

.method public static saturatedAdd(II)I
    .registers 6

    .line 536
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedMultiply(II)I
    .registers 6

    .line 558
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedPow(II)I
    .registers 10

    const v3, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 569
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 570
    const/4 v4, -0x2

    if-eq p0, v4, :cond_62

    if-eq p0, v2, :cond_5c

    if-eqz p0, :cond_58

    if-eq p0, v0, :cond_40

    const/4 v2, 0x2

    if-eq p0, v2, :cond_50

    move v2, v0

    move v4, p1

    move v7, p0

    .line 594
    :goto_1a
    if-eqz v4, :cond_4e

    if-eq v4, v0, :cond_49

    .line 600
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_76

    .line 601
    invoke-static {v2, v7}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v2

    move v5, v2

    .line 603
    :goto_27
    shr-int/lit8 v6, v4, 0x1

    .line 604
    if-lez v6, :cond_73

    .line 605
    const v2, -0xb504

    if-le v2, v7, :cond_41

    move v4, v0

    :goto_31
    const v2, 0xb504

    if-le v7, v2, :cond_43

    move v2, v0

    :goto_37
    or-int/2addr v2, v4

    if-eqz v2, :cond_45

    .line 606
    ushr-int/lit8 v0, p0, 0x1f

    and-int/lit8 v1, p1, 0x1

    and-int/2addr v0, v1

    add-int/2addr v0, v3

    :cond_40
    :goto_40
    return v0

    :cond_41
    move v4, v1

    .line 605
    goto :goto_31

    :cond_43
    move v2, v1

    goto :goto_37

    .line 608
    :cond_45
    mul-int/2addr v7, v7

    move v2, v5

    move v4, v6

    goto :goto_1a

    .line 598
    :cond_49
    invoke-static {v2, v7}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v0

    goto :goto_40

    :cond_4e
    move v0, v2

    .line 596
    goto :goto_40

    .line 578
    :cond_50
    const/16 v1, 0x1f

    if-lt p1, v1, :cond_56

    move v0, v3

    .line 579
    goto :goto_40

    .line 581
    :cond_56
    shl-int/2addr v0, p1

    goto :goto_40

    .line 572
    :cond_58
    if-eqz p1, :cond_40

    move v0, v1

    goto :goto_40

    .line 576
    :cond_5c
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_40

    move v0, v2

    goto :goto_40

    .line 583
    :cond_62
    const/16 v1, 0x20

    if-lt p1, v1, :cond_6a

    .line 584
    and-int/lit8 v0, p1, 0x1

    add-int/2addr v0, v3

    goto :goto_40

    .line 586
    :cond_6a
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_70

    shl-int/2addr v0, p1

    goto :goto_40

    :cond_70
    shl-int v0, v2, p1

    goto :goto_40

    :cond_73
    move v2, v5

    move v4, v6

    goto :goto_1a

    :cond_76
    move v5, v2

    goto :goto_27
.end method

.method public static saturatedSubtract(II)I
    .registers 6

    .line 547
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 5

    .line 270
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 271
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 272
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_38

    .line 298
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :pswitch_1a  #0x6, 0x7, 0x8
    mul-int v0, v1, v1

    add-int/2addr v0, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_22
    return v0

    .line 280
    :pswitch_23  #0x4, 0x5
    mul-int v0, v1, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_22

    .line 274
    :pswitch_2b  #0x1
    mul-int v0, v1, v1

    if-ne v0, p0, :cond_35

    const/4 v0, 0x1

    :goto_30
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_33  #0x2, 0x3
    move v0, v1

    .line 277
    goto :goto_22

    .line 274
    :cond_35
    const/4 v0, 0x0

    goto :goto_30

    .line 272
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_33  #00000002
        :pswitch_33  #00000003
        :pswitch_23  #00000004
        :pswitch_23  #00000005
        :pswitch_1a  #00000006
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3

    .line 305
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
