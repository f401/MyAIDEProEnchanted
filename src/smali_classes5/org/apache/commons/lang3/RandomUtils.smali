.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static nextBoolean()Z
    .registers 1

    .line 66
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .registers 4

    const/4 v1, 0x0

    .line 80
    if-ltz p0, :cond_13

    const/4 v0, 0x1

    :goto_4
    const-string v2, "Count cannot be negative."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-array v0, p0, [B

    .line 83
    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 84
    return-object v0

    :cond_13
    move v0, v1

    .line 80
    goto :goto_4
.end method

.method public static nextDouble()D
    .registers 4

    .line 215
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    cmpl-double v0, p2, p0

    if-ltz v0, :cond_20

    move v0, v1

    :goto_7
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_22

    :goto_14
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    cmpl-double v0, p0, p2

    if-nez v0, :cond_24

    .line 204
    :goto_1f
    return-wide p0

    :cond_20
    move v0, v2

    .line 196
    goto :goto_7

    :cond_22
    move v1, v2

    .line 198
    goto :goto_14

    .line 204
    :cond_24
    sub-double v0, p2, p0

    sget-object v2, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    goto :goto_1f
.end method

.method public static nextFloat()F
    .registers 2

    .line 252
    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public static nextFloat(FF)F
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1f

    move v0, v1

    :goto_7
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_21

    :goto_13
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 237
    cmpl-float v0, p0, p1

    if-nez v0, :cond_23

    .line 241
    :goto_1e
    return p0

    :cond_1f
    move v0, v2

    .line 233
    goto :goto_7

    :cond_21
    move v1, v2

    .line 235
    goto :goto_13

    .line 241
    :cond_23
    sub-float v0, p1, p0

    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    goto :goto_1e
.end method

.method public static nextInt()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-lt p1, p0, :cond_18

    move v0, v1

    :goto_5
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    if-ltz p0, :cond_1a

    :goto_e
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    if-ne p0, p1, :cond_1c

    .line 110
    :goto_17
    return p0

    :cond_18
    move v0, v2

    .line 102
    goto :goto_5

    :cond_1a
    move v1, v2

    .line 104
    goto :goto_e

    .line 110
    :cond_1c
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_17
.end method

.method public static nextLong()J
    .registers 2

    .line 158
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static nextLong(J)J
    .registers 8

    .line 174
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    .line 175
    rem-long v2, v0, p0

    .line 176
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 178
    return-wide v2
.end method

.method public static nextLong(JJ)J
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    cmp-long v0, p2, p0

    if-ltz v0, :cond_20

    move v0, v1

    :goto_7
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_22

    :goto_14
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    cmp-long v0, p0, p2

    if-nez v0, :cond_24

    .line 147
    :goto_1f
    return-wide p0

    :cond_20
    move v0, v2

    .line 139
    goto :goto_7

    :cond_22
    move v1, v2

    .line 141
    goto :goto_14

    .line 147
    :cond_24
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    goto :goto_1f
.end method
