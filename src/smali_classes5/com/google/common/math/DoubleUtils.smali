.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field static final ONE_BITS:J = 0x3ff0000000000000L

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .registers 15

    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    const-wide/16 v10, 0x1

    .line 89
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 92
    const/16 v0, 0x3f

    if-ge v4, v0, :cond_19

    .line 93
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 128
    :goto_18
    return-wide v0

    .line 94
    :cond_19
    const/16 v0, 0x3ff

    if-le v4, v0, :cond_29

    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    mul-double/2addr v0, v2

    goto :goto_18

    .line 106
    :cond_29
    add-int/lit8 v0, v4, -0x34

    add-int/lit8 v5, v0, -0x1

    .line 107
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 108
    shr-long v0, v6, v2

    const-wide v8, 0xfffffffffffffL

    and-long/2addr v0, v8

    .line 116
    and-long/2addr v6, v10

    cmp-long v6, v6, v12

    if-eqz v6, :cond_66

    and-long v6, v0, v10

    cmp-long v6, v6, v12

    if-nez v6, :cond_4e

    .line 117
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    if-ge v3, v5, :cond_66

    .line 118
    :cond_4e
    :goto_4e
    if-eqz v2, :cond_51

    add-long/2addr v0, v10

    .line 119
    :cond_51
    add-int/lit16 v2, v4, 0x3ff

    int-to-long v2, v2

    .line 120
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v4

    int-to-long v4, v4

    .line 128
    const/16 v6, 0x34

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_18

    .line 117
    :cond_66
    const/4 v2, 0x0

    goto :goto_4e
.end method

.method static ensureNonNegative(D)D
    .registers 6

    const-wide/16 v0, 0x0

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    cmpl-double v2, p0, v0

    if-lez v2, :cond_10

    .line 137
    :goto_f
    return-wide p0

    :cond_10
    move-wide p0, v0

    goto :goto_f
.end method

.method static getSignificand(D)J
    .registers 8

    .line 63
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 66
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    .line 67
    const/16 v1, -0x3ff

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    shl-long v0, v2, v0

    :goto_1e
    return-wide v0

    :cond_1f
    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr v0, v2

    goto :goto_1e
.end method

.method static isFinite(D)Z
    .registers 4

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isNormal(D)Z
    .registers 4

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static nextDown(D)D
    .registers 4

    .line 40
    neg-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method static scaleNormalize(D)D
    .registers 8

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 84
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
