.class public final Lcom/blankj/utilcode/util/ColorUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColor(I)I
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor()I
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->getRandomColor(Z)I

    move-result v0

    return v0
.end method

.method public static getRandomColor(Z)I
    .registers 7

    if-eqz p0, :cond_16

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4070000000000000L  # 256.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    :goto_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4170000000000000L  # 1.6777216E7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_16
    const/high16 v0, -0x1000000

    goto :goto_c
.end method

.method public static int2ArgbString(I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1d
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static int2RgbString(I)Ljava/lang/String;
    .registers 4

    const v0, 0xffffff

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAlphaComponent(IF)I
    .registers 5

    const v0, 0xffffff

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static setAlphaComponent(II)I
    .registers 4

    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static setBlueComponent(IF)I
    .registers 5

    and-int/lit16 v0, p0, -0x100

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static setBlueComponent(II)I
    .registers 3

    and-int/lit16 v0, p0, -0x100

    or-int/2addr v0, p1

    return v0
.end method

.method public static setGreenComponent(IF)I
    .registers 5

    const v0, -0xff01

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static setGreenComponent(II)I
    .registers 4

    const v0, -0xff01

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRedComponent(IF)I
    .registers 5

    const v0, -0xff0001

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRedComponent(II)I
    .registers 4

    const v0, -0xff0001

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static string2Int(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public isLightColor(I)Z
    .registers 10

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3fd322d0e5604189L  # 0.299

    mul-double/2addr v0, v6

    const-wide v6, 0x3fe2c8b439581062L  # 0.587

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3fbd2f1a9fbe76c9L  # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x405fe00000000000L  # 127.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_37

    const/4 v0, 0x1

    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method
