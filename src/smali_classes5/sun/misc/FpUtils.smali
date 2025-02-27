.class public Lsun/misc/FpUtils;
.super Ljava/lang/Object;
.source "FpUtils.java"


# static fields
.field static final $assertionsDisabled:Z

.field static twoToTheDoubleScaleDown:D

.field static twoToTheDoubleScaleUp:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const/16 v0, 0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    .line 130
    const/16 v0, -0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySign(DD)D
    .registers 6

    .line 1060
    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    :cond_8
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .registers 3

    .line 1076
    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 p1, 0x3f800000  # 1.0f

    :cond_8
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    move-result v0

    return v0
.end method

.method public static getExponent(D)I
    .registers 6

    .line 147
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 3

    .line 160
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000  # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static ilogb(D)I
    .registers 8

    .line 373
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 375
    const/16 v1, -0x3ff

    if-eq v0, v1, :cond_19

    const/16 v1, 0x400

    if-eq v0, v1, :cond_d

    .line 420
    :goto_c
    return v0

    .line 377
    :cond_d
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 378
    const/high16 v0, 0x40000000  # 2.0f

    goto :goto_c

    .line 380
    :cond_16
    const/high16 v0, 0x10000000

    goto :goto_c

    .line 384
    :cond_19
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_22

    .line 385
    const/high16 v0, -0x10000000

    goto :goto_c

    .line 388
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 399
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    move v4, v0

    .line 400
    :goto_2d
    const-wide/high16 v0, 0x10000000000000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_3a

    .line 408
    const-wide/16 v0, 0x2

    mul-long/2addr v0, v2

    .line 409
    add-int/lit8 v4, v4, -0x1

    move-wide v2, v0

    goto :goto_2d

    .line 411
    :cond_3a
    add-int/lit8 v0, v4, 0x1

    goto :goto_c
.end method

.method public static ilogb(F)I
    .registers 4

    .line 446
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 448
    const/16 v1, -0x7f

    if-eq v0, v1, :cond_19

    const/16 v1, 0x80

    if-eq v0, v1, :cond_d

    .line 493
    :goto_c
    return v0

    .line 450
    :cond_d
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 451
    const/high16 v0, 0x40000000  # 2.0f

    goto :goto_c

    .line 453
    :cond_16
    const/high16 v0, 0x10000000

    goto :goto_c

    .line 457
    :cond_19
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_21

    .line 458
    const/high16 v0, -0x10000000

    goto :goto_c

    .line 461
    :cond_21
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 472
    const v2, 0x7fffff

    and-int/2addr v1, v2

    .line 473
    :goto_29
    const/high16 v2, 0x800000

    if-ge v1, v2, :cond_32

    .line 481
    mul-int/lit8 v1, v1, 0x2

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 484
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static isFinite(D)Z
    .registers 6

    .line 242
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isFinite(F)Z
    .registers 3

    .line 255
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isInfinite(D)Z
    .registers 4

    .line 271
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static isInfinite(F)Z
    .registers 2

    .line 287
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public static isNaN(D)Z
    .registers 4

    .line 303
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static isNaN(F)Z
    .registers 2

    .line 319
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public static isUnordered(DD)Z
    .registers 6

    .line 335
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isUnordered(FF)Z
    .registers 3

    .line 351
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static nextAfter(DD)D
    .registers 12

    const-wide/16 v0, 0x1

    const-wide/16 v6, 0x0

    .line 755
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 757
    :cond_10
    add-double/2addr p2, p0

    .line 798
    :cond_11
    :goto_11
    return-wide p2

    .line 758
    :cond_12
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_11

    .line 763
    const-wide/16 v2, 0x0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 777
    cmpl-double v4, p2, p0

    if-lez v4, :cond_2e

    .line 778
    cmp-long v4, v2, v6

    if-ltz v4, :cond_2b

    :goto_25
    add-long/2addr v0, v2

    .line 798
    :goto_26
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    goto :goto_11

    .line 778
    :cond_2b
    const-wide/16 v0, -0x1

    goto :goto_25

    .line 780
    :cond_2e
    cmp-long v4, v2, v6

    if-lez v4, :cond_35

    .line 782
    sub-long v0, v2, v0

    goto :goto_26

    .line 784
    :cond_35
    cmp-long v4, v2, v6

    if-gez v4, :cond_3b

    .line 785
    add-long/2addr v0, v2

    goto :goto_26

    .line 795
    :cond_3b
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_26
.end method

.method public static nextAfter(FD)F
    .registers 8

    .line 855
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 857
    :cond_c
    double-to-float v0, p1

    add-float/2addr v0, p0

    .line 898
    :goto_e
    return v0

    .line 858
    :cond_f
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_16

    .line 859
    double-to-float v0, p1

    goto :goto_e

    .line 863
    :cond_16
    const/4 v0, 0x0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 877
    float-to-double v2, p0

    const/4 v0, 0x1

    cmpl-double v2, p1, v2

    if-lez v2, :cond_2c

    .line 878
    if-ltz v1, :cond_2a

    :goto_24
    add-int/2addr v0, v1

    .line 898
    :goto_25
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_e

    .line 878
    :cond_2a
    const/4 v0, -0x1

    goto :goto_24

    .line 880
    :cond_2c
    if-lez v1, :cond_31

    .line 882
    add-int/lit8 v0, v1, -0x1

    goto :goto_25

    .line 884
    :cond_31
    if-gez v1, :cond_36

    .line 885
    add-int/lit8 v0, v1, 0x1

    goto :goto_25

    .line 895
    :cond_36
    const v0, -0x7fffffff

    goto :goto_25
.end method

.method public static nextDown(D)D
    .registers 8

    const-wide/16 v4, 0x0

    .line 998
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_f

    .line 1004
    :cond_e
    :goto_e
    return-wide p0

    .line 1001
    :cond_f
    cmpl-double v0, p0, v4

    if-nez v0, :cond_19

    .line 1002
    const-wide p0, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_e

    .line 1004
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1005
    cmpl-double v0, p0, v4

    if-lez v0, :cond_29

    const-wide/16 v0, -0x1

    .line 1004
    :goto_23
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_e

    .line 1005
    :cond_29
    const-wide/16 v0, 0x1

    goto :goto_23
.end method

.method public static nextDown(F)D
    .registers 4

    const/4 v2, 0x0

    .line 1035
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, -0x800000  # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_f

    .line 1036
    :cond_d
    float-to-double v0, p0

    .line 1041
    :goto_e
    return-wide v0

    .line 1038
    :cond_f
    cmpl-float v0, p0, v2

    if-nez v0, :cond_16

    .line 1039
    const-wide/high16 v0, -0x4960000000000000L  # -1.401298464324817E-45

    goto :goto_e

    .line 1041
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1042
    cmpl-float v0, p0, v2

    if-lez v0, :cond_26

    const/4 v0, -0x1

    .line 1041
    :goto_1f
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_e

    .line 1042
    :cond_26
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public static nextUp(D)D
    .registers 8

    const-wide/16 v4, 0x0

    .line 928
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_f

    .line 932
    :cond_e
    :goto_e
    return-wide p0

    .line 931
    :cond_f
    add-double v0, p0, v4

    .line 932
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 933
    cmpl-double v0, v0, v4

    if-ltz v0, :cond_21

    const-wide/16 v0, 0x1

    .line 932
    :goto_1b
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_e

    .line 933
    :cond_21
    const-wide/16 v0, -0x1

    goto :goto_1b
.end method

.method public static nextUp(F)F
    .registers 4

    const/4 v2, 0x0

    .line 963
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    .line 967
    :cond_d
    :goto_d
    return p0

    .line 966
    :cond_e
    add-float v0, p0, v2

    .line 967
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 968
    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1f

    const/4 v0, 0x1

    .line 967
    :goto_19
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_d

    .line 968
    :cond_1f
    const/4 v0, -0x1

    goto :goto_19
.end method

.method static powerOfTwoD(I)D
    .registers 5

    .line 168
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .registers 3

    .line 178
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000  # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static rawCopySign(DD)D
    .registers 10

    .line 200
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 200
    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v0, v4

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rawCopySign(FF)F
    .registers 5

    .line 223
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 225
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 223
    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static scalb(DI)D
    .registers 11

    .line 612
    if-gez p2, :cond_21

    .line 621
    const/16 v0, -0x833

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 622
    const/16 v1, -0x200

    .line 623
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    .line 633
    :goto_c
    shr-int/lit8 v4, v0, 0x8

    ushr-int/lit8 v4, v4, 0x17

    .line 634
    add-int v5, v0, v4

    and-int/lit16 v5, v5, 0x1ff

    sub-int v6, v5, v4

    .line 636
    invoke-static {v6}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v4

    mul-double/2addr v4, p0

    .line 637
    sub-int/2addr v0, v6

    .line 639
    :goto_1c
    if-eqz v0, :cond_2c

    .line 640
    mul-double/2addr v4, v2

    .line 641
    sub-int/2addr v0, v1

    goto :goto_1c

    .line 626
    :cond_21
    const/16 v0, 0x833

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 627
    const/16 v1, 0x200

    .line 628
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    goto :goto_c

    .line 643
    :cond_2c
    return-wide v4
.end method

.method public static scalb(FI)F
    .registers 6

    .line 684
    const/16 v0, 0x116

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, -0x116

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 699
    float-to-double v2, p0

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static signum(D)D
    .registers 4

    .line 1205
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-wide p0

    :cond_d
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1, p0, p1}, Lsun/misc/FpUtils;->copySign(DD)D

    move-result-wide p0

    goto :goto_c
.end method

.method public static signum(F)F
    .registers 2

    .line 1226
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return p0

    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p0}, Lsun/misc/FpUtils;->copySign(FF)F

    move-result p0

    goto :goto_b
.end method

.method public static ulp(D)D
    .registers 6

    .line 1103
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 1105
    const/16 v1, -0x3ff

    if-eq v0, v1, :cond_27

    const/16 v1, 0x400

    if-eq v0, v1, :cond_22

    .line 1115
    add-int/lit8 v0, v0, -0x34

    .line 1119
    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_17

    .line 1120
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    .line 1126
    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v2, 0x1

    add-int/lit16 v0, v0, 0x432

    shl-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_16

    .line 1107
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_16

    .line 1111
    :cond_27
    const-wide/16 v0, 0x1

    goto :goto_16
.end method

.method public static ulp(F)F
    .registers 3

    .line 1157
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 1159
    const/16 v1, -0x7f

    if-eq v0, v1, :cond_26

    const/16 v1, 0x80

    if-eq v0, v1, :cond_21

    .line 1169
    add-int/lit8 v0, v0, -0x17

    .line 1173
    const/16 v1, -0x7e

    if-lt v0, v1, :cond_17

    .line 1174
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoF(I)F

    move-result v0

    .line 1180
    :goto_16
    return v0

    :cond_17
    const/4 v1, 0x1

    add-int/lit16 v0, v0, 0x95

    shl-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_16

    .line 1161
    :cond_21
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_16

    .line 1165
    :cond_26
    const/4 v0, 0x1

    goto :goto_16
.end method
