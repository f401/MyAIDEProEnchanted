.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 11

    const/high16 v9, 0x40000000  # 2.0f

    const/16 v8, 0xff

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x437f0000  # 255.0f

    aget v0, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    mul-float v4, v3, v9

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v4, v2

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v2, v4

    sub-float v5, v3, v2

    const/high16 v2, 0x42700000  # 60.0f

    div-float v2, v0, v2

    rem-float/2addr v2, v9

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v6, v2

    mul-float v6, v2, v4

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    packed-switch v0, :pswitch_data_c8

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_37
    invoke-static {v3, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v3

    invoke-static {v2, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v2

    invoke-static {v0, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v0

    invoke-static {v3, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :pswitch_48  #0x5, 0x6
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_37

    :pswitch_5d  #0x4
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_37

    :pswitch_72  #0x3
    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_37

    :pswitch_87  #0x2
    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_37

    :pswitch_9c  #0x1
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_37

    :pswitch_b1  #0x0
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v0, v5, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_37

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_9c  #00000001
        :pswitch_87  #00000002
        :pswitch_72  #00000003
        :pswitch_5d  #00000004
        :pswitch_48  #00000005
        :pswitch_48  #00000006
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14

    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 17

    const-wide/high16 v0, 0x4030000000000000L  # 16.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x405d000000000000L  # 116.0

    div-double v2, v0, v2

    const-wide v0, 0x407f400000000000L  # 500.0

    div-double v0, p2, v0

    add-double v4, v0, v2

    const-wide/high16 v0, 0x4069000000000000L  # 200.0

    div-double v0, p4, v0

    sub-double v6, v2, v0

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v8, 0x3f82231832fcac8eL  # 0.008856

    cmpl-double v8, v0, v8

    if-lez v8, :cond_5d

    move-wide v4, v0

    :goto_26
    const-wide v0, 0x401fff9da4c11507L  # 7.9996247999999985

    cmpl-double v0, p0, v0

    if-lez v0, :cond_6b

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_35
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v8, 0x3f82231832fcac8eL  # 0.008856

    cmpl-double v8, v2, v8

    if-lez v8, :cond_73

    :goto_44
    const/4 v6, 0x0

    const-wide v8, 0x4057c3020c49ba5eL  # 95.047

    mul-double/2addr v4, v8

    aput-wide v4, p6, v6

    const/4 v4, 0x1

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    mul-double/2addr v0, v6

    aput-wide v0, p6, v4

    const/4 v0, 0x2

    const-wide v4, 0x405b3883126e978dL  # 108.883

    mul-double/2addr v2, v4

    aput-wide v2, p6, v0

    return-void

    :cond_5d
    const-wide/high16 v0, 0x405d000000000000L  # 116.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030000000000000L  # 16.0

    sub-double/2addr v0, v4

    const-wide v4, 0x408c3a6666666666L  # 903.3

    div-double/2addr v0, v4

    move-wide v4, v0

    goto :goto_26

    :cond_6b
    const-wide v0, 0x408c3a6666666666L  # 903.3

    div-double v0, p0, v0

    goto :goto_35

    :cond_73
    const-wide/high16 v2, 0x405d000000000000L  # 116.0

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x4030000000000000L  # 16.0

    sub-double/2addr v2, v6

    const-wide v6, 0x408c3a6666666666L  # 903.3

    div-double/2addr v2, v6

    goto :goto_44
.end method

.method public static RGBToHSL(III[F)V
    .registers 15

    const/high16 v10, 0x43b40000  # 360.0f

    const/high16 v4, 0x437f0000  # 255.0f

    const/high16 v9, 0x40000000  # 2.0f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    int-to-float v0, p0

    div-float/2addr v0, v4

    int-to-float v2, p1

    div-float/2addr v2, v4

    int-to-float v3, p2

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v6, v4, v5

    add-float v7, v4, v5

    div-float/2addr v7, v9

    cmpl-float v5, v4, v5

    if-nez v5, :cond_49

    move v0, v1

    move v2, v1

    :goto_2a
    const/high16 v3, 0x42700000  # 60.0f

    mul-float/2addr v0, v3

    rem-float/2addr v0, v10

    cmpg-float v3, v0, v1

    if-gez v3, :cond_33

    add-float/2addr v0, v10

    :cond_33
    const/4 v3, 0x0

    invoke-static {v0, v1, v10}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v0

    aput v0, p3, v3

    const/4 v0, 0x1

    invoke-static {v2, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v2

    aput v2, p3, v0

    const/4 v0, 0x2

    invoke-static {v7, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result v1

    aput v1, p3, v0

    return-void

    :cond_49
    cmpl-float v5, v4, v0

    if-nez v5, :cond_5f

    sub-float v0, v2, v3

    div-float/2addr v0, v6

    const/high16 v2, 0x40c00000  # 6.0f

    rem-float/2addr v0, v2

    :goto_53
    mul-float v2, v9, v7

    sub-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v8, v2

    div-float v2, v6, v2

    goto :goto_2a

    :cond_5f
    cmpl-float v4, v4, v2

    if-nez v4, :cond_68

    sub-float v0, v3, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    goto :goto_53

    :cond_68
    const/high16 v3, 0x40800000  # 4.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    add-float/2addr v0, v3

    goto :goto_53
.end method

.method public static RGBToLAB(III[D)V
    .registers 11

    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    const/4 v4, 0x2

    aget-wide v4, p3, v4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 16

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e3

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v2, 0x406fe00000000000L  # 255.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fa4b5dcc63f1412L  # 0.04045

    cmpg-double v2, v0, v2

    if-gez v2, :cond_9e

    const-wide v2, 0x4029d70a3d70a3d7L  # 12.92

    div-double/2addr v0, v2

    :goto_1d
    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v4, 0x406fe00000000000L  # 255.0

    div-double/2addr v2, v4

    const-wide v4, 0x3fa4b5dcc63f1412L  # 0.04045

    cmpg-double v4, v2, v4

    if-gez v4, :cond_b5

    const-wide v4, 0x4029d70a3d70a3d7L  # 12.92

    div-double/2addr v2, v4

    :goto_36
    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x406fe00000000000L  # 255.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fa4b5dcc63f1412L  # 0.04045

    cmpg-double v6, v4, v6

    if-gez v6, :cond_cc

    const-wide v6, 0x4029d70a3d70a3d7L  # 12.92

    div-double/2addr v4, v6

    :goto_4f
    const/4 v6, 0x0

    const-wide v8, 0x3fda64c2f837b4a2L  # 0.4124

    mul-double/2addr v8, v0

    const-wide v10, 0x3fd6e2eb1c432ca5L  # 0.3576

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    const-wide v10, 0x3fc71a9fbe76c8b4L  # 0.1805

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L  # 100.0

    mul-double/2addr v8, v10

    aput-wide v8, p3, v6

    const/4 v6, 0x1

    const-wide v8, 0x3fcb367a0f9096bcL  # 0.2126

    mul-double/2addr v8, v0

    const-wide v10, 0x3fe6e2eb1c432ca5L  # 0.7152

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL  # 0.0722

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L  # 100.0

    mul-double/2addr v8, v10

    aput-wide v8, p3, v6

    const/4 v6, 0x2

    const-wide v8, 0x3f93c36113404ea5L  # 0.0193

    mul-double/2addr v0, v8

    const-wide v8, 0x3fbe83e425aee632L  # 0.1192

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x3fee6a7ef9db22d1L  # 0.9505

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    mul-double/2addr v0, v2

    aput-wide v0, p3, v6

    return-void

    :cond_9e
    const-wide v2, 0x3fac28f5c28f5c29L  # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L  # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L  # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto/16 :goto_1d

    :cond_b5
    const-wide v4, 0x3fac28f5c28f5c29L  # 0.055

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e147ae147ae1L  # 1.055

    div-double/2addr v2, v4

    const-wide v4, 0x4003333333333333L  # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_36

    :cond_cc
    const-wide v6, 0x3fac28f5c28f5c29L  # 0.055

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e147ae147ae1L  # 1.055

    div-double/2addr v4, v6

    const-wide v6, 0x4003333333333333L  # 2.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto/16 :goto_4f

    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static XYZToColor(DDD)I
    .registers 14

    const-wide v0, 0x4009ecbfb15b573fL  # 3.2406

    mul-double/2addr v0, p0

    const-wide v2, -0x400767a0f9096bbaL  # -1.5372

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL  # -0.4986

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    const-wide v2, -0x4010fec56d5cfaadL  # -0.9689

    mul-double/2addr v2, p0

    const-wide v4, 0x3ffe0346dc5d6388L  # 1.8758

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fa53f7ced916873L  # 0.0415

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    div-double/2addr v2, v4

    const-wide v4, 0x3fac84b5dcc63f14L  # 0.0557

    mul-double/2addr v4, p0

    const-wide v6, -0x4035e353f7ced917L  # -0.204

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e978d4fdf3b6L  # 1.057

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    div-double v6, v4, v6

    const-wide v4, 0x3f69a5c37387b719L  # 0.0031308

    cmpl-double v4, v0, v4

    if-lez v4, :cond_dd

    const-wide v4, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x3ff0e147ae147ae1L  # 1.055

    mul-double/2addr v0, v4

    const-wide v4, 0x3fac28f5c28f5c29L  # 0.055

    sub-double/2addr v0, v4

    move-wide v4, v0

    :goto_65
    const-wide v0, 0x3f69a5c37387b719L  # 0.0031308

    cmpl-double v0, v2, v0

    if-lez v0, :cond_e5

    const-wide v0, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147ae147ae1L  # 1.055

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c28f5c29L  # 0.055

    sub-double/2addr v0, v2

    move-wide v2, v0

    :goto_84
    const-wide v0, 0x3f69a5c37387b719L  # 0.0031308

    cmpl-double v0, v6, v0

    if-lez v0, :cond_ed

    const-wide v0, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v6, 0x3ff0e147ae147ae1L  # 1.055

    mul-double/2addr v0, v6

    const-wide v6, 0x3fac28f5c28f5c29L  # 0.055

    sub-double/2addr v0, v6

    :goto_a2
    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v4

    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    const/16 v5, 0xff

    invoke-static {v2, v3, v5}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v2

    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v0

    invoke-static {v4, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_dd
    const-wide v4, 0x4029d70a3d70a3d7L  # 12.92

    mul-double/2addr v0, v4

    move-wide v4, v0

    goto :goto_65

    :cond_e5
    const-wide v0, 0x4029d70a3d70a3d7L  # 12.92

    mul-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_84

    :cond_ed
    const-wide v0, 0x4029d70a3d70a3d7L  # 12.92

    mul-double/2addr v0, v6

    goto :goto_a2
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 23

    move-object/from16 v0, p6

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    const-wide v2, 0x4057c3020c49ba5eL  # 95.047

    div-double v2, p0, v2

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    div-double v4, p2, v4

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v4

    const-wide v6, 0x405b3883126e978dL  # 108.883

    div-double v6, p4, v6

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v6

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x405d000000000000L  # 116.0

    mul-double/2addr v12, v4

    const-wide/high16 v14, 0x4030000000000000L  # 16.0

    sub-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    aput-wide v10, p6, v8

    const/4 v8, 0x1

    sub-double/2addr v2, v4

    const-wide v10, 0x407f400000000000L  # 500.0

    mul-double/2addr v2, v10

    aput-wide v2, p6, v8

    const/4 v2, 0x2

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4069000000000000L  # 200.0

    mul-double/2addr v4, v6

    aput-wide v4, p6, v2

    return-void

    :cond_45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "outLab must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blendARGB(IIF)I
    .registers 12

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v1, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-float v2, v3, v0

    mul-float v3, v4, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    mul-float v3, v5, v0

    mul-float v4, v6, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-float/2addr v0, v7

    mul-float v4, v8, p2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 10

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    aget v1, p0, v3

    aget v2, p1, v3

    invoke-static {v1, v2, p2}, Landroidx/core/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v1

    aput v1, p3, v3

    aget v1, p0, v4

    mul-float/2addr v1, v0

    aget v2, p1, v4

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p3, v4

    aget v1, p0, v5

    mul-float/2addr v0, v1

    aget v1, p1, v5

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    aput v0, p3, v5

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blendLAB([D[DD[D)V
    .registers 15

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p2

    aget-wide v2, p0, v6

    mul-double/2addr v2, v0

    aget-wide v4, p1, v6

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    aput-wide v2, p4, v6

    aget-wide v2, p0, v7

    mul-double/2addr v2, v0

    aget-wide v4, p1, v7

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    aput-wide v2, p4, v7

    aget-wide v2, p0, v8

    mul-double/2addr v0, v2

    aget-wide v2, p1, v8

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    aput-wide v0, p4, v8

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outResult must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateContrast(II)D
    .registers 8

    const-wide v4, 0x3fa999999999999aL  # 0.05

    const/16 v1, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v1, :cond_2c

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_17

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    :cond_17
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    return-wide v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static calculateLuminance(I)D
    .registers 5

    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_3a

    invoke-static {p0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v4

    float-to-double v6, p2

    cmpg-double v0, v4, v6

    if-gez v0, :cond_18

    const/4 v2, -0x1

    :cond_17
    return v2

    :cond_18
    move v0, v1

    move v3, v1

    :goto_1a
    const/16 v1, 0xa

    if-gt v3, v1, :cond_17

    sub-int v1, v2, v0

    const/4 v4, 0x1

    if-le v1, v4, :cond_17

    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v4, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_38

    move v0, v1

    :goto_34
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    :cond_38
    move v2, v1

    goto :goto_34

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static circularInterpolate(FFF)F
    .registers 6

    const/high16 v2, 0x43b40000  # 360.0f

    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    cmpl-float v0, p1, p0

    if-lez v0, :cond_19

    add-float/2addr p0, v2

    :cond_13
    :goto_13
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v2

    return v0

    :cond_19
    add-float/2addr p1, v2

    goto :goto_13
.end method

.method public static colorToHSL(I[F)V
    .registers 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 4

    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .registers 9

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v1, v6, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .registers 10

    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :goto_1c
    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Color;->alpha()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Color;->getComponentCount()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    add-float v2, v1, v0

    aput v2, v4, v5

    aget v2, v4, v5

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_47

    aget v2, v4, v5

    div-float/2addr v1, v2

    aget v2, v4, v5

    div-float/2addr v0, v2

    :cond_47
    const/4 v2, 0x0

    :goto_48
    if-ge v2, v5, :cond_5f

    aget v6, v3, v2

    mul-float/2addr v6, v1

    aget v7, v4, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_56
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p0

    goto :goto_1c

    :cond_5f
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/graphics/Color;->valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    return-object v0

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color models must match ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static compositeComponent(IIIII)I
    .registers 8

    if-nez p4, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_3
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    aget-wide v0, p0, v2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    aget-wide v2, p0, v4

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    aget-wide v2, p0, v8

    aget-wide v4, p1, v8

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_12

    const/4 v0, 0x3

    new-array v0, v0, [D

    sget-object v1, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .registers 6

    const-wide v0, 0x3f82231832fcac8eL  # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    const-wide v0, 0x3fd5555555555555L  # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide v0, 0x408c3a6666666666L  # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L  # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L  # 116.0

    div-double/2addr v0, v2

    goto :goto_12
.end method

.method public static setAlphaComponent(II)I
    .registers 4

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
