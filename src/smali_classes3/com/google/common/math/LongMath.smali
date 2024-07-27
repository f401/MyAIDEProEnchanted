.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL

.field static final MAX_SIGNED_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final SIEVE_30:I = -0x208a2883

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I

.field static final factorials:[J

.field static final halfPowersOf10:[J

.field static final maxLog10ForLeadingZeros:[B

.field private static final millerRabinBaseSets:[[J

.field static final powersOf10:[J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 205
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 213
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 238
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 778
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 884
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 926
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    .line 1041
    const/4 v0, 0x7

    new-array v0, v0, [[J

    const/4 v1, 0x0

    new-array v2, v3, [J

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [J

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v6, [J

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v7, [J

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    .line 205
    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    .line 213
    :array_1
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 238
    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 778
    :array_3
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 884
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 926
    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    .line 1041
    :array_6
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_7
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_8
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_9
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_a
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_b
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 16

    const/4 v8, 0x2

    const/4 v1, 0x1

    const-wide/16 v6, 0x1

    .line 809
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 810
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 811
    if-gt p1, p0, :cond_2

    move v0, v1

    :goto_0
    const-string v2, "k (%s) > n (%s)"

    invoke-static {v0, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 812
    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_0

    .line 813
    sub-int p1, p0, p1

    .line 815
    :cond_0
    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_9

    .line 821
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v0

    if-ge p0, v1, :cond_3

    .line 822
    aget-wide v2, v0, p0

    aget-wide v4, v0, p1

    sub-int v1, p0, p1

    aget-wide v0, v0, v1

    mul-long/2addr v0, v4

    div-long v0, v2, v0

    .line 863
    :cond_1
    :goto_1
    return-wide v0

    .line 811
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 823
    :cond_3
    sget-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v1, v0

    if-ge p1, v1, :cond_4

    aget v0, v0, p1

    if-le p0, v0, :cond_5

    .line 824
    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    .line 825
    :cond_5
    sget-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v1, v0

    if-ge p1, v1, :cond_6

    aget v0, v0, p1

    if-gt p0, v0, :cond_6

    .line 827
    add-int/lit8 v2, p0, -0x1

    int-to-long v0, p0

    .line 828
    :goto_2
    if-gt v8, p1, :cond_1

    .line 829
    int-to-long v4, v2

    .line 830
    mul-long/2addr v0, v4

    int-to-long v4, v8

    div-long/2addr v0, v4

    .line 828
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 834
    :cond_6
    int-to-long v0, p0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v11

    .line 836
    int-to-long v2, p0

    .line 848
    add-int/lit8 v9, p0, -0x1

    move-wide v0, v6

    move-wide v4, v6

    move v10, v11

    move v12, v8

    move v13, v9

    :goto_3
    if-gt v12, p1, :cond_8

    .line 849
    add-int v6, v10, v11

    const/16 v7, 0x3f

    if-ge v6, v7, :cond_7

    .line 851
    int-to-long v6, v13

    mul-long/2addr v2, v6

    .line 852
    int-to-long v6, v12

    mul-long/2addr v4, v6

    .line 853
    add-int/2addr v10, v11

    move-wide v6, v0

    move-wide v8, v4

    .line 848
    :goto_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, -0x1

    move-wide v0, v6

    move-wide v4, v8

    goto :goto_3

    .line 857
    :cond_7
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v4

    .line 858
    int-to-long v0, v13

    .line 859
    int-to-long v8, v12

    move-wide v2, v0

    move-wide v6, v4

    move v10, v11

    .line 860
    goto :goto_4

    .line 863
    :cond_8
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v0

    goto :goto_1

    .line 819
    :cond_9
    int-to-long v0, p0

    goto :goto_1

    :cond_a
    move-wide v0, v6

    .line 817
    goto :goto_1
.end method

.method public static ceilingPowerOfTwo(J)J
    .registers 6

    const-wide/16 v2, 0x1

    .line 67
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 68
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 71
    sub-long v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    neg-int v0, v0

    shl-long v0, v2, v0

    return-wide v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ceilingPowerOfTwo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") is not representable as a long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkedAdd(JJ)J
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 546
    add-long v6, p0, p2

    .line 547
    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    xor-long v4, p0, v6

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    const-string v1, "checkedAdd"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 548
    return-wide v6

    :cond_0
    move v2, v1

    .line 547
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .registers 16

    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 570
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 572
    xor-long v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    .line 573
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 574
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-long v2, v4, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 586
    mul-long v0, p0, p2

    .line 592
    :goto_0
    return-wide v0

    .line 588
    :cond_0
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    move v0, v6

    :goto_1
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 589
    cmp-long v0, p0, v10

    if-ltz v0, :cond_3

    move v1, v6

    :goto_2
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    move v0, v6

    :goto_3
    or-int/2addr v0, v1

    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 590
    mul-long v8, p0, p2

    .line 591
    cmp-long v0, p0, v10

    if-eqz v0, :cond_1

    div-long v0, v8, p0

    cmp-long v0, v0, p2

    if-nez v0, :cond_5

    :cond_1
    move v0, v6

    :goto_4
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    move-wide v0, v8

    .line 592
    goto :goto_0

    :cond_2
    move v0, v7

    .line 588
    goto :goto_1

    :cond_3
    move v1, v7

    .line 589
    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v7

    .line 591
    goto :goto_4
.end method

.method public static checkedPow(JI)J
    .registers 15

    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/4 v6, 0x1

    .line 603
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 604
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    move v1, v6

    :goto_0
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-gtz v0, :cond_2

    move v0, v6

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 605
    long-to-int v0, p0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 613
    const/16 v0, 0x3f

    if-ge p2, v0, :cond_f

    move v0, v6

    :goto_2
    const-string v1, "checkedPow"

    int-to-long v4, p2

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 614
    shl-long/2addr v8, p2

    .line 628
    :cond_0
    :goto_3
    return-wide v8

    :cond_1
    move v1, v7

    .line 604
    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    .line 619
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 607
    :cond_4
    if-nez p2, :cond_5

    move-wide v0, v8

    :goto_4
    move-wide v8, v0

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 611
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move-wide v8, v10

    goto :goto_3

    .line 616
    :cond_7
    const/16 v0, 0x40

    if-ge p2, v0, :cond_e

    move v0, v6

    :goto_5
    const-string v1, "checkedPow"

    int-to-long v4, p2

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 617
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    shl-long v0, v8, p2

    :goto_6
    move-wide v8, v0

    goto :goto_3

    :cond_8
    shl-long v0, v10, p2

    goto :goto_6

    :cond_9
    move-wide v2, p0

    .line 624
    :cond_a
    :goto_7
    if-eqz p2, :cond_0

    if-eq p2, v6, :cond_d

    .line 630
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b

    .line 631
    invoke-static {v8, v9, v2, v3}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v8

    .line 630
    :cond_b
    shr-int/lit8 p2, p2, 0x1

    .line 634
    if-lez p2, :cond_a

    .line 635
    const-wide v0, -0xb504f333L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const-wide v0, 0xb504f333L

    cmp-long v0, v2, v0

    if-gtz v0, :cond_c

    move v0, v6

    :goto_8
    const-string v1, "checkedPow"

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 637
    mul-long/2addr v2, v2

    goto :goto_7

    :cond_c
    move v0, v7

    .line 635
    goto :goto_8

    .line 628
    :cond_d
    invoke-static {v8, v9, v2, v3}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v8

    goto :goto_3

    :cond_e
    move v0, v7

    goto :goto_5

    :cond_f
    move v0, v7

    goto :goto_2
.end method

.method public static checkedSubtract(JJ)J
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    sub-long v6, p0, p2

    .line 559
    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    xor-long v4, p0, v6

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    const-string v1, "checkedSubtract"

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 560
    return-wide v6

    :cond_0
    move v2, v1

    .line 559
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 19

    .line 385
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    div-long v8, p0, p2

    .line 387
    mul-long v2, p2, v8

    sub-long v10, p0, v2

    .line 389
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-wide v8

    .line 400
    :cond_0
    xor-long v2, p0, p2

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    long-to-int v7, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    or-int/lit8 v7, v7, 0x1

    .line 402
    sget-object v12, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 432
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 421
    :pswitch_0
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 422
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-long/2addr v4, v10

    .line 425
    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-nez v6, :cond_5

    .line 426
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    const-wide/16 v10, 0x1

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_4

    :goto_3
    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 408
    :cond_1
    :goto_4
    if-eqz v2, :cond_9

    int-to-long v2, v7

    add-long/2addr v2, v8

    :goto_5
    move-wide v8, v2

    goto :goto_0

    .line 426
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 428
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-gtz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_4

    .line 413
    :pswitch_1
    if-lez v7, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 410
    :pswitch_2
    const/4 v2, 0x1

    .line 411
    goto :goto_4

    .line 416
    :pswitch_3
    if-gez v7, :cond_7

    move v2, v5

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 404
    :pswitch_4
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_8

    move v2, v6

    :goto_6
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 407
    :pswitch_5
    const/4 v2, 0x0

    goto :goto_4

    .line 404
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move-wide v2, v8

    .line 408
    goto :goto_5

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 3

    .line 774
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 775
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .registers 4

    .line 963
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floorPowerOfTwo(J)J
    .registers 6

    .line 83
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    const-wide/16 v0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static gcd(JJ)J
    .registers 12

    const-wide/16 v2, 0x0

    .line 500
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 501
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 502
    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-wide p2

    .line 506
    :cond_0
    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    move-wide p2, p0

    .line 507
    goto :goto_0

    .line 513
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    .line 514
    shr-long v0, p0, v4

    .line 515
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    .line 516
    shr-long v2, p2, v5

    .line 517
    :goto_1
    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    .line 525
    sub-long/2addr v0, v2

    .line 527
    const/16 v6, 0x3f

    shr-long v6, v0, v6

    and-long/2addr v6, v0

    .line 530
    sub-long/2addr v0, v6

    sub-long/2addr v0, v6

    .line 533
    add-long/2addr v2, v6

    .line 534
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr v0, v6

    .line 535
    goto :goto_1

    .line 536
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long p2, v0, v2

    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    cmp-long v2, p0, v6

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isPrime(J)Z
    .registers 12

    const-wide/16 v8, 0x7

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1003
    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 1004
    const-string v0, "n"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    move v1, v2

    .line 1028
    :cond_0
    :goto_0
    return v1

    .line 1007
    :cond_1
    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3

    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    cmp-long v0, p0, v8

    if-eqz v0, :cond_0

    const-wide/16 v4, 0xb

    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    const-wide/16 v4, 0xd

    cmp-long v0, p0, v4

    if-eqz v0, :cond_0

    .line 1011
    const v0, -0x208a2883

    const-wide/16 v4, 0x1e

    rem-long v4, p0, v4

    long-to-int v3, v4

    shl-int v3, v1, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v1, v2

    .line 1012
    goto :goto_0

    .line 1014
    :cond_2
    rem-long v4, p0, v8

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    const-wide/16 v4, 0xb

    rem-long v4, p0, v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    const-wide/16 v4, 0xd

    rem-long v4, p0, v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    .line 1015
    goto :goto_0

    .line 1017
    :cond_4
    const-wide/16 v4, 0x121

    cmp-long v0, p0, v4

    if-ltz v0, :cond_0

    .line 1021
    sget-object v3, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 1022
    aget-wide v6, v5, v2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_6

    move v0, v1

    .line 1023
    :goto_2
    array-length v3, v5

    if-ge v0, v3, :cond_0

    .line 1024
    aget-wide v6, v5, v0

    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 1025
    goto :goto_0

    .line 1023
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1021
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1031
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static lessThanBranchFree(JJ)I
    .registers 8

    const-wide/16 v2, -0x1

    .line 108
    sub-long v0, p0, p2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 9

    .line 163
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 164
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v1

    .line 165
    sget-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v0, v1

    .line 166
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :pswitch_0
    sget-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 175
    :pswitch_1
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 168
    :pswitch_2
    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    move v0, v1

    .line 172
    goto :goto_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static log10Floor(J)I
    .registers 6

    .line 195
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 200
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 7

    .line 121
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 122
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 138
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 139
    const-wide v2, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v2, v0

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    rsub-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 132
    :pswitch_1
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 128
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(JJ)J
    .registers 10

    .line 976
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .registers 5

    .line 458
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .registers 8

    const-wide/16 v2, 0x0

    .line 481
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 484
    rem-long v0, p0, p2

    .line 485
    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    add-long/2addr v0, p2

    goto :goto_0

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static multiplyFraction(JJJ)J
    .registers 10

    .line 870
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 871
    div-long v0, p2, p4

    .line 878
    :goto_0
    return-wide v0

    .line 873
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 874
    div-long v2, p0, v0

    .line 875
    div-long v0, p4, v0

    .line 878
    div-long v0, p2, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static pow(JI)J
    .registers 13

    const/16 v6, 0x40

    const/4 v8, 0x1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    .line 269
    const-string v4, "exponent"

    invoke-static {v4, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 270
    const-wide/16 v4, -0x2

    cmp-long v4, v4, p0

    if-gtz v4, :cond_8

    const-wide/16 v4, 0x2

    cmp-long v4, p0, v4

    if-gtz v4, :cond_8

    .line 271
    long-to-int v4, p0

    const/4 v5, -0x2

    if-eq v4, v5, :cond_6

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 279
    if-ge p2, v6, :cond_0

    shl-long v0, v2, p2

    .line 295
    :cond_0
    :goto_0
    return-wide v0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-wide v0, v2

    .line 275
    goto :goto_0

    .line 273
    :cond_3
    if-nez p2, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 277
    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_5

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 281
    :cond_6
    if-ge p2, v6, :cond_0

    .line 282
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_7

    shl-long v0, v2, p2

    goto :goto_0

    :cond_7
    shl-long v0, v2, p2

    neg-long v0, v0

    goto :goto_0

    :cond_8
    move-wide v6, v2

    move-wide v4, p0

    .line 291
    :goto_2
    if-eqz p2, :cond_b

    if-eq p2, v8, :cond_a

    .line 297
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_9

    move-wide v0, v2

    :goto_3
    mul-long/2addr v6, v0

    .line 298
    mul-long/2addr v4, v4

    .line 290
    shr-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    move-wide v0, v4

    .line 297
    goto :goto_3

    .line 295
    :cond_a
    mul-long v0, v6, v4

    goto :goto_0

    :cond_b
    move-wide v0, v6

    .line 293
    goto :goto_0
.end method

.method public static saturatedAdd(JJ)J
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 651
    add-long v0, p0, p2

    .line 652
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 658
    :goto_2
    return-wide v0

    :cond_0
    move v4, v3

    .line 652
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 658
    :cond_2
    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    goto :goto_2
.end method

.method public static saturatedMultiply(JJ)J
    .registers 14

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 688
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 690
    xor-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    .line 691
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    .line 692
    add-int/2addr v0, v1

    add-int/2addr v0, v4

    xor-long v4, v6, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int v4, v0, v1

    .line 693
    const/16 v0, 0x41

    if-le v4, v0, :cond_1

    .line 694
    mul-long v0, p0, p2

    .line 706
    :cond_0
    :goto_0
    return-wide v0

    .line 697
    :cond_1
    xor-long v0, p0, p2

    const/16 v5, 0x3f

    ushr-long/2addr v0, v5

    const-wide v6, 0x7fffffffffffffffL

    add-long/2addr v0, v6

    .line 698
    const/16 v5, 0x40

    if-ge v4, v5, :cond_3

    move v5, v2

    :goto_1
    cmp-long v4, p0, v8

    if-gez v4, :cond_4

    move v4, v2

    :goto_2
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p2, v6

    if-nez v6, :cond_5

    :goto_3
    and-int/2addr v2, v4

    or-int/2addr v2, v5

    if-nez v2, :cond_0

    .line 702
    mul-long v2, p0, p2

    .line 703
    cmp-long v4, p0, v8

    if-eqz v4, :cond_2

    div-long v4, v2, p0

    cmp-long v4, v4, p2

    if-nez v4, :cond_0

    :cond_2
    move-wide v0, v2

    .line 704
    goto :goto_0

    :cond_3
    move v5, v3

    .line 698
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public static saturatedPow(JI)J
    .registers 13

    .line 717
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 718
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 719
    long-to-int v4, p0

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x1

    const/4 v5, -0x2

    if-eq v4, v5, :cond_8

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_4

    .line 727
    const/16 v0, 0x3f

    if-lt p2, v0, :cond_3

    .line 728
    const-wide v0, 0x7fffffffffffffffL

    .line 756
    :cond_0
    :goto_2
    return-wide v0

    .line 718
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 730
    :cond_3
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    goto :goto_2

    .line 737
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_5
    const-wide/16 v0, 0x1

    goto :goto_2

    .line 721
    :cond_6
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_2

    .line 725
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_12

    const-wide/16 v0, 0x1

    goto :goto_2

    .line 732
    :cond_8
    const/16 v0, 0x40

    if-lt p2, v0, :cond_9

    .line 733
    and-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    goto :goto_2

    .line 735
    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_a

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    goto :goto_2

    :cond_a
    const-wide/16 v0, -0x1

    shl-long/2addr v0, p2

    goto :goto_2

    .line 740
    :cond_b
    const-wide/16 v2, 0x1

    .line 742
    and-int/lit8 v0, p2, 0x1

    int-to-long v6, v0

    move-wide v0, v2

    move-wide v4, p0

    .line 744
    :goto_3
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_f

    .line 750
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_11

    .line 751
    invoke-static {v0, v1, v4, v5}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 753
    :goto_4
    shr-int/lit8 p2, p2, 0x1

    .line 754
    if-lez p2, :cond_10

    .line 755
    const-wide v0, -0xb504f333L

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    const-wide v8, 0xb504f333L

    cmp-long v0, v4, v8

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    or-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 756
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    and-long/2addr v0, v6

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    goto :goto_2

    .line 755
    :cond_c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 758
    :cond_e
    mul-long/2addr v4, v4

    move-wide v0, v2

    goto :goto_3

    .line 748
    :cond_f
    invoke-static {v0, v1, v4, v5}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v0

    goto/16 :goto_2

    :cond_10
    move-wide v0, v2

    goto :goto_3

    :cond_11
    move-wide v2, v0

    goto :goto_4

    :cond_12
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method public static saturatedSubtract(JJ)J
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 669
    sub-long v0, p0, p2

    .line 670
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 676
    :goto_2
    return-wide v0

    :cond_0
    move v4, v3

    .line 670
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 676
    :cond_2
    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    goto :goto_2
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 13

    const-wide/16 v8, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    const-string v2, "x"

    invoke-static {v2, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 314
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    .line 357
    :goto_0
    return-wide v0

    .line 332
    :cond_0
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 334
    mul-long v4, v2, v2

    .line 337
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 371
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :pswitch_0
    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    :goto_1
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 357
    mul-long v2, v0, v0

    add-long/2addr v2, v0

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_1

    .line 349
    :pswitch_1
    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    .line 350
    add-long v0, v8, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 352
    goto :goto_0

    .line 343
    :pswitch_2
    cmp-long v0, p0, v4

    if-gez v0, :cond_3

    .line 344
    sub-long v0, v2, v8

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 346
    goto :goto_0

    .line 339
    :pswitch_3
    cmp-long v4, v4, p0

    if-nez v4, :cond_4

    :goto_2
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    move-wide v0, v2

    .line 340
    goto :goto_0

    :cond_4
    move v0, v1

    .line 339
    goto :goto_2

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
