.class public Lorg/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 6

    .line 210
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    :goto_6
    return-wide p2

    .line 213
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    .line 214
    goto :goto_6

    .line 216
    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static max(DDD)D
    .registers 8

    .line 197
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    const-string v0, "array"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    array-length v0, p0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_d
    const-string v3, "Array cannot be empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    aget-wide v2, p0, v2

    .line 157
    :goto_16
    array-length v0, p0

    if-ge v1, v0, :cond_24

    .line 158
    aget-wide v4, p0, v1

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v2

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    move v0, v2

    .line 153
    goto :goto_d

    .line 161
    :cond_24
    return-wide v2
.end method

.method public static max(FF)F
    .registers 3

    .line 244
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    :goto_6
    return p1

    .line 247
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    .line 248
    goto :goto_6

    .line 250
    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static max(FFF)F
    .registers 4

    .line 231
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    const-string v0, "array"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    array-length v0, p0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_d
    const-string v3, "Array cannot be empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    aget v0, p0, v2

    .line 179
    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 180
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    move v0, v2

    .line 175
    goto :goto_d

    .line 183
    :cond_24
    return v0
.end method

.method public static min(DD)D
    .registers 6

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    :goto_6
    return-wide p2

    .line 101
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    .line 102
    goto :goto_6

    .line 104
    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static min(DDD)D
    .registers 8

    .line 85
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    const-string v0, "array"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    array-length v0, p0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_d
    const-string v3, "Array cannot be empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    aget-wide v2, p0, v2

    .line 45
    :goto_16
    array-length v0, p0

    if-ge v1, v0, :cond_24

    .line 46
    aget-wide v4, p0, v1

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    move v0, v2

    .line 41
    goto :goto_d

    .line 49
    :cond_24
    return-wide v2
.end method

.method public static min(FF)F
    .registers 3

    .line 132
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    :goto_6
    return p1

    .line 135
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    .line 136
    goto :goto_6

    .line 138
    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static min(FFF)F
    .registers 4

    .line 119
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    const-string v0, "array"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    array-length v0, p0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_d
    const-string v3, "Array cannot be empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    aget v0, p0, v2

    .line 67
    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 68
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    move v0, v2

    .line 63
    goto :goto_d

    .line 71
    :cond_24
    return v0
.end method
