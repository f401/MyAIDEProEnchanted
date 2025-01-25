.class public final Lcom/blankj/utilcode/util/ImageUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;
    .registers 12

    const/16 v0, 0x8

    new-array v4, v0, [F

    const/4 v0, 0x0

    aput p4, v4, v0

    const/4 v0, 0x1

    aput p4, v4, v0

    const/4 v0, 0x2

    aput p4, v4, v0

    const/4 v0, 0x3

    aput p4, v4, v0

    const/4 v0, 0x4

    aput p4, v4, v0

    const/4 v0, 0x5

    aput p4, v4, v0

    const/4 v0, 0x6

    aput p4, v4, v0

    const/4 v0, 0x7

    aput p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    :goto_b
    return-object p0

    :cond_c
    if-eqz p5, :cond_3e

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p3, :cond_47

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    div-float v5, p1, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_3e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_e

    :cond_47
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-float v0, p1, v6

    invoke-virtual {v4, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, p4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIF)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIFZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[F)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[FZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_29
    if-eqz p5, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    if-eq v0, p0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8
.end method

.method public static addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 18

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, -0x40800000  # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    sub-int v2, v7, p1

    const/4 v6, 0x0

    move-object v0, p0

    move/from16 v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    add-int v0, v7, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v7, 0x0

    int-to-float v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v14, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    int-to-float v6, v7

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v8, v1

    const v9, 0x70ffffff

    const v10, 0xffffff

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    :cond_82
    if-eqz p2, :cond_8f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8f

    if-eq v12, p0, :cond_8f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8f
    move-object v0, v12

    goto/16 :goto_7
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, p1, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-float v3, p5, p2

    invoke-virtual {v2, p1, p4, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    if-eq v0, p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_a
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .registers 13

    int-to-float v2, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ImageUtils;->addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    :goto_5
    if-gt v0, p2, :cond_9

    if-le v2, p1, :cond_10

    :cond_9
    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return v1
.end method

.method public static clip(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .registers 8

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p5, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eq v0, p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;I)[B
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;IZ)[B
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;J)[B
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;JZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;JZ)[B
    .registers 13

    const/16 v3, 0x64

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    :cond_f
    new-array v0, v2, [B

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_35

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_29
    if-eqz p3, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_11

    :cond_35
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_4b

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_29

    :cond_4b
    move v1, v2

    move v0, v2

    :goto_4d
    if-ge v1, v3, :cond_64

    add-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, p1

    if-nez v2, :cond_75

    :cond_64
    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_70

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_70
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_29

    :cond_75
    cmp-long v2, v6, p1

    if-lez v2, :cond_7d

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    goto :goto_4d

    :cond_7d
    add-int/lit8 v1, v0, 0x1

    goto :goto_4d
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v4, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p3, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_38
    array-length v2, v1

    invoke-static {v1, v4, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    :goto_7
    return-object p0

    :cond_8
    if-eqz p2, :cond_15

    :goto_a
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7

    :cond_15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_a
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_41

    :cond_21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v3, :cond_59

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_29
    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2d
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v3, :cond_56

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_51
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2d

    :cond_56
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_51

    :cond_59
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_29
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v3, v0, v9, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_65

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4e
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_56

    if-eqz p4, :cond_6b

    :cond_56
    if-eqz p3, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_63

    if-eq v1, p0, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_63
    move-object v0, v1

    goto :goto_a

    :cond_65
    float-to-int v1, p2

    invoke-static {v0, v1, p3}, Lcom/blankj/utilcode/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4e

    :cond_6b
    invoke-static {v1, v7, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_78
    if-eqz p3, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    if-eq v0, p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_a
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(III)Landroid/graphics/Bitmap;
    .registers 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public static getBitmap([BI)Landroid/graphics/Bitmap;
    .registers 3

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4
.end method

.method public static getBitmap([BIII)Landroid/graphics/Bitmap;
    .registers 6

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4
.end method

.method public static getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_22
    .catchall {:try_start_4 .. :try_end_9} :catchall_3c

    :try_start_9
    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_3a
    .catchall {:try_start_9 .. :try_end_c} :catchall_2d

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    :goto_12
    move-object v2, v0

    goto :goto_3

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_3

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_22
    move-exception v0

    move-object v1, v2

    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2d

    if-eqz v1, :cond_3

    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_1d

    goto :goto_3

    :catchall_2d
    move-exception v0

    move-object v2, v1

    :goto_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    throw v0

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catch_3a
    move-exception v0

    goto :goto_24

    :catchall_3c
    move-exception v0

    goto :goto_2f
.end method

.method private static getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/16 v1, 0xc

    :try_start_6
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_3

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getImageType(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v0

    return-object v0
.end method

.method private static getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFD8FF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    :goto_12
    return-object v0

    :cond_13
    const-string v1, "89504E47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_1e
    const-string v1, "47494638"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_29
    const-string v1, "49492A00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "4D4D002A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_39
    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_3c
    const-string v1, "424D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_47
    const-string v1, "52494646"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "57454250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_5a
    const-string v1, "00000100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "00000200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_6a
    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12

    :cond_6d
    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_12
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_21

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/16 v0, 0x10e

    goto :goto_17

    :cond_1b
    const/16 v0, 0x5a

    goto :goto_17

    :cond_1e
    const/16 v0, 0xb4

    goto :goto_17

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_17
.end method

.method public static getSize(Ljava/io/File;)[I
    .registers 6

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-nez p0, :cond_a

    new-array v0, v2, [I

    fill-array-data v0, :array_24

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-array v0, v2, [I

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v0, v2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v4

    goto :goto_9

    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getSize(Ljava/lang/String;)[I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->getSize(Ljava/io/File;)[I

    move-result-object v0

    return-object v0
.end method

.method private static isBMP([B)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    aget-byte v2, p0, v1

    const/16 v3, 0x42

    if-ne v2, v3, :cond_13

    aget-byte v2, p0, v0

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isGIF([B)Z
    .registers 6

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_35

    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_35

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_35

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_35

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_35

    aget-byte v2, p0, v4

    const/16 v3, 0x37

    if-eq v2, v3, :cond_2d

    aget-byte v2, p0, v4

    const/16 v3, 0x39

    if-ne v2, v3, :cond_35

    :cond_2d
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_35

    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method public static isImage(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_19

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_16

    if-lez v2, :cond_19

    :goto_15
    return v0

    :catch_16
    move-exception v0

    move v0, v1

    goto :goto_15

    :cond_19
    move v0, v1

    goto :goto_15
.end method

.method private static isJPEG([B)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    aget-byte v2, p0, v0

    const/16 v3, -0x28

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private static isPNG([B)Z
    .registers 6

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3c

    aget-byte v2, p0, v1

    const/16 v3, -0x77

    if-ne v2, v3, :cond_3c

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3c

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3c

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3c

    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    goto :goto_3b
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v1, 0x1

    if-eqz p2, :cond_3d

    :goto_3
    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    new-instance v0, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v1, p0, v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_46

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_3c
    return-object p0

    :cond_3d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3

    :catchall_46
    move-exception v0

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_4c
    throw v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    if-eqz p1, :cond_8

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p4, :cond_30

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_30

    if-eq v0, p0, :cond_30

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_30
    move-object p0, v0

    goto :goto_8
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "ImageUtils"

    const-string v2, "bitmap is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "ImageUtils"

    const-string v2, "bitmap is recycled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1e
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create or delete file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImageUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_40
    :try_start_40
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4a} :catch_6a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_62

    :try_start_4a
    invoke-virtual {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz p4, :cond_59

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_59} :catch_7d
    .catchall {:try_start_4a .. :try_end_59} :catchall_7f

    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_f

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catchall_62
    move-exception v0

    :goto_63
    move-object v2, v3

    :goto_64
    if-eqz v2, :cond_69

    :try_start_66
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_75

    :cond_69
    :goto_69
    throw v0

    :catch_6a
    move-exception v1

    move-object v2, v3

    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7a

    if-eqz v2, :cond_f

    :try_start_71
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_5d

    goto :goto_f

    :catch_75
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :catchall_7a
    move-exception v0

    move-object v3, v2

    goto :goto_63

    :catch_7d
    move-exception v1

    goto :goto_6c

    :catchall_7f
    move-exception v0

    goto :goto_64
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 5

    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 6

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p3, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 6

    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 5

    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .registers 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "JPG"

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_7e

    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isGranted([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v0, "ImageUtils"

    const-string v1, "save to album need storage permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-object v2

    :cond_47
    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_4c
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->notifySystemToScan(Ljava/io/File;)V

    move-object v2, v0

    goto :goto_46

    :cond_7e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_display_name"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v1, "image/*"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "relative_path"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_pending"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_46

    :try_start_d7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e2} :catch_114
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_140

    move-result-object v1

    :try_start_e3
    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v0, "is_pending"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v4}, Lcom/blankj/utilcode/util/UtilsBridge;->uri2File(Landroid/net/Uri;)Ljava/io/File;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_103} :catch_142
    .catchall {:try_start_e3 .. :try_end_103} :catchall_133

    move-result-object v2

    if-eqz v1, :cond_46

    :try_start_106
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10b

    goto/16 :goto_46

    :catch_10b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_46

    :cond_111
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9d

    :catch_114
    move-exception v0

    move-object v1, v2

    :goto_116
    :try_start_116
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_126
    .catchall {:try_start_116 .. :try_end_126} :catchall_133

    if-eqz v1, :cond_46

    :try_start_128
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12d

    goto/16 :goto_46

    :catch_12d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_46

    :catchall_133
    move-exception v0

    move-object v2, v1

    :goto_135
    if-eqz v2, :cond_13a

    :try_start_137
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    :cond_13a
    :goto_13a
    throw v0

    :catch_13b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13a

    :catchall_140
    move-exception v0

    goto :goto_135

    :catch_142
    move-exception v0

    goto :goto_116
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;
    .registers 4

    const/16 v0, 0x64

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    if-eq v0, p0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eq v0, p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7
.end method

.method public static skew(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    if-eq v0, p0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8
.end method

.method public static skew(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 40

    if-eqz p2, :cond_50

    move-object/from16 v2, p0

    :goto_4
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ge v0, v3, :cond_b

    const/16 p1, 0x1

    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v5, v9

    new-array v3, v10, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v25, v5, -0x1

    add-int/lit8 v26, v9, -0x1

    add-int v4, p1, p1

    add-int/lit8 v27, v4, 0x1

    new-array v0, v10, [I

    move-object/from16 v28, v0

    new-array v0, v10, [I

    move-object/from16 v29, v0

    new-array v0, v10, [I

    move-object/from16 v30, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v31, v0

    add-int/lit8 v4, v27, 0x1

    shr-int/lit8 v4, v4, 0x1

    mul-int v6, v4, v4

    mul-int/lit16 v7, v6, 0x100

    new-array v0, v7, [I

    move-object/from16 v32, v0

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v7, :cond_5c

    div-int v8, v4, v6

    aput v8, v32, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_50
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_5c
    const/4 v4, 0x3

    move/from16 v0, v27

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    add-int/lit8 v33, p1, 0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    move/from16 v23, v6

    move/from16 v24, v7

    :goto_74
    move/from16 v0, v23

    if-ge v0, v9, :cond_1ba

    move/from16 v0, p1

    neg-int v14, v0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_86
    move/from16 v0, p1

    if-gt v14, v0, :cond_109

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v16, v16, v13

    aget v16, v3, v16

    add-int v19, v14, p1

    aget-object v19, v4, v19

    const/16 v20, 0x0

    const/high16 v21, 0xff0000

    and-int v21, v21, v16

    shr-int/lit8 v21, v21, 0x10

    aput v21, v19, v20

    const/16 v20, 0x1

    const v21, 0xff00

    and-int v21, v21, v16

    shr-int/lit8 v21, v21, 0x8

    aput v21, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v19, v20

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    sub-int v16, v33, v16

    const/16 v20, 0x0

    aget v20, v19, v20

    mul-int v20, v20, v16

    add-int v18, v18, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    mul-int v20, v20, v16

    add-int v17, v17, v20

    const/16 v20, 0x2

    aget v20, v19, v20

    mul-int v16, v16, v20

    add-int v15, v15, v16

    if-lez v14, :cond_f6

    const/16 v16, 0x0

    aget v16, v19, v16

    add-int v6, v6, v16

    const/16 v16, 0x1

    aget v16, v19, v16

    add-int v8, v8, v16

    const/16 v16, 0x2

    aget v16, v19, v16

    add-int v7, v7, v16

    :goto_f3
    add-int/lit8 v14, v14, 0x1

    goto :goto_86

    :cond_f6
    const/16 v16, 0x0

    aget v16, v19, v16

    add-int v10, v10, v16

    const/16 v16, 0x1

    aget v16, v19, v16

    add-int v11, v11, v16

    const/16 v16, 0x2

    aget v16, v19, v16

    add-int v12, v12, v16

    goto :goto_f3

    :cond_109
    const/16 v16, 0x0

    move v14, v7

    move/from16 v19, p1

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    :goto_114
    move/from16 v0, v16

    if-ge v0, v5, :cond_1b0

    aget v7, v32, v18

    aput v7, v28, v13

    aget v7, v32, v17

    aput v7, v29, v13

    aget v7, v32, v15

    aput v7, v30, v13

    sub-int v7, v19, p1

    add-int v7, v7, v27

    rem-int v7, v7, v27

    aget-object v7, v4, v7

    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x1

    aget v12, v7, v11

    const/4 v11, 0x2

    aget v34, v7, v11

    if-nez v23, :cond_143

    add-int v11, v16, p1

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v31, v16

    :cond_143
    aget v11, v31, v16

    add-int v11, v11, v24

    aget v11, v3, v11

    const/16 v35, 0x0

    const/high16 v36, 0xff0000

    and-int v36, v36, v11

    shr-int/lit8 v36, v36, 0x10

    aput v36, v7, v35

    const/16 v35, 0x1

    const v36, 0xff00

    and-int v36, v36, v11

    shr-int/lit8 v36, v36, 0x8

    aput v36, v7, v35

    const/16 v35, 0x2

    and-int/lit16 v11, v11, 0xff

    aput v11, v7, v35

    const/4 v11, 0x0

    aget v11, v7, v11

    add-int/2addr v6, v11

    const/4 v11, 0x1

    aget v11, v7, v11

    add-int/2addr v8, v11

    const/4 v11, 0x2

    aget v7, v7, v11

    add-int/2addr v7, v14

    sub-int v11, v18, v20

    add-int v18, v11, v6

    sub-int v11, v17, v21

    add-int v17, v11, v8

    sub-int v11, v15, v22

    add-int/2addr v11, v7

    add-int/lit8 v14, v19, 0x1

    rem-int v19, v14, v27

    rem-int v14, v19, v27

    aget-object v14, v4, v14

    sub-int v10, v20, v10

    const/4 v15, 0x0

    aget v15, v14, v15

    add-int v20, v10, v15

    sub-int v10, v21, v12

    const/4 v12, 0x1

    aget v12, v14, v12

    add-int v21, v10, v12

    sub-int v10, v22, v34

    const/4 v12, 0x2

    aget v12, v14, v12

    add-int v22, v10, v12

    const/4 v10, 0x0

    aget v10, v14, v10

    sub-int/2addr v6, v10

    const/4 v10, 0x1

    aget v10, v14, v10

    sub-int/2addr v8, v10

    const/4 v10, 0x2

    aget v10, v14, v10

    sub-int v10, v7, v10

    add-int/lit8 v7, v13, 0x1

    add-int/lit8 v12, v16, 0x1

    move v13, v7

    move v14, v10

    move v15, v11

    move/from16 v16, v12

    goto/16 :goto_114

    :cond_1b0
    add-int v7, v24, v5

    add-int/lit8 v6, v23, 0x1

    move/from16 v23, v6

    move/from16 v24, v7

    goto/16 :goto_74

    :cond_1ba
    const/4 v13, 0x0

    :goto_1bb
    if-ge v13, v5, :cond_2d9

    move/from16 v0, p1

    neg-int v11, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    mul-int v6, v11, v5

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_1d0
    move/from16 v0, p1

    if-gt v11, v0, :cond_22e

    const/4 v12, 0x0

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v12, v13

    add-int v15, v11, p1

    aget-object v15, v4, v15

    const/16 v21, 0x0

    aget v22, v28, v12

    aput v22, v15, v21

    const/16 v21, 0x1

    aget v22, v29, v12

    aput v22, v15, v21

    const/16 v21, 0x2

    aget v22, v30, v12

    aput v22, v15, v21

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v21, v33, v21

    aget v22, v28, v12

    mul-int v22, v22, v21

    add-int v14, v14, v22

    aget v22, v29, v12

    mul-int v22, v22, v21

    add-int v16, v16, v22

    aget v12, v30, v12

    mul-int v12, v12, v21

    add-int v17, v17, v12

    if-lez v11, :cond_21e

    const/4 v12, 0x0

    aget v12, v15, v12

    add-int/2addr v7, v12

    const/4 v12, 0x1

    aget v12, v15, v12

    add-int/2addr v8, v12

    const/4 v12, 0x2

    aget v12, v15, v12

    add-int/2addr v10, v12

    :goto_216
    move/from16 v0, v26

    if-ge v11, v0, :cond_21b

    add-int/2addr v6, v5

    :cond_21b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d0

    :cond_21e
    const/4 v12, 0x0

    aget v12, v15, v12

    add-int v18, v18, v12

    const/4 v12, 0x1

    aget v12, v15, v12

    add-int v19, v19, v12

    const/4 v12, 0x2

    aget v12, v15, v12

    add-int v20, v20, v12

    goto :goto_216

    :cond_22e
    const/4 v15, 0x0

    move v6, v7

    move/from16 v11, p1

    move v12, v13

    :goto_233
    if-ge v15, v9, :cond_2d5

    aget v7, v3, v12

    const/high16 v21, -0x1000000

    and-int v7, v7, v21

    aget v21, v32, v14

    shl-int/lit8 v21, v21, 0x10

    or-int v7, v7, v21

    aget v21, v32, v16

    shl-int/lit8 v21, v21, 0x8

    or-int v7, v7, v21

    aget v21, v32, v17

    or-int v7, v7, v21

    aput v7, v3, v12

    sub-int v7, v11, p1

    add-int v7, v7, v27

    rem-int v7, v7, v27

    aget-object v7, v4, v7

    const/16 v21, 0x0

    aget v21, v7, v21

    const/16 v22, 0x1

    aget v22, v7, v22

    const/16 v23, 0x2

    aget v23, v7, v23

    if-nez v13, :cond_271

    add-int v24, v15, v33

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    mul-int v24, v24, v5

    aput v24, v31, v15

    :cond_271
    aget v24, v31, v15

    add-int v24, v24, v13

    const/16 v25, 0x0

    aget v34, v28, v24

    aput v34, v7, v25

    const/16 v25, 0x1

    aget v34, v29, v24

    aput v34, v7, v25

    const/16 v25, 0x2

    aget v24, v30, v24

    aput v24, v7, v25

    const/16 v24, 0x0

    aget v24, v7, v24

    add-int v6, v6, v24

    const/16 v24, 0x1

    aget v24, v7, v24

    add-int v8, v8, v24

    const/16 v24, 0x2

    aget v7, v7, v24

    add-int/2addr v10, v7

    sub-int v7, v14, v18

    add-int v14, v7, v6

    sub-int v7, v16, v19

    add-int v16, v7, v8

    sub-int v7, v17, v20

    add-int v17, v7, v10

    add-int/lit8 v7, v11, 0x1

    rem-int v11, v7, v27

    aget-object v24, v4, v11

    sub-int v7, v18, v21

    const/16 v18, 0x0

    aget v18, v24, v18

    add-int v18, v18, v7

    sub-int v7, v19, v22

    const/16 v19, 0x1

    aget v19, v24, v19

    add-int v19, v19, v7

    sub-int v7, v20, v23

    const/16 v20, 0x2

    aget v20, v24, v20

    add-int v20, v20, v7

    const/4 v7, 0x0

    aget v7, v24, v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v24, v7

    sub-int v7, v8, v7

    const/4 v8, 0x2

    aget v8, v24, v8

    sub-int/2addr v10, v8

    add-int/2addr v12, v5

    add-int/lit8 v15, v15, 0x1

    move v8, v7

    goto/16 :goto_233

    :cond_2d5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1bb

    :cond_2d9
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v2
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eq v0, p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7
.end method

.method public static toGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    if-eq v0, p0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8
.end method

.method public static toRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 16

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v5, v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float v6, v5, v6

    int-to-float v7, v1

    int-to-float v8, v2

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-int v10, v1, v3

    int-to-float v10, v10

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v10, v11

    sub-int v3, v2, v3

    int-to-float v3, v3

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v3, v11

    invoke-virtual {v9, v10, v3}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v10, v9, Landroid/graphics/RectF;->left:F

    iget v11, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eq v1, v2, :cond_54

    div-float v1, v5, v7

    div-float v2, v5, v8

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_54
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p0, v2, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9, v6, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez p1, :cond_8d

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v2, p1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float v3, v7, v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float v5, v8, v5

    sub-float v2, v6, v2

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8d
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eq v0, p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7
.end method

.method public static toRound(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;
    .registers 7

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    invoke-static {p0, v0, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFI)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v6, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x40000000  # 2.0f

    div-float v2, p2, v2

    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, p1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    cmpl-float v3, p2, v8

    if-lez v3, :cond_65

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_65
    if-eqz p4, :cond_72

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_72

    if-eq v1, p0, :cond_72

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_72
    move-object v0, v1

    goto :goto_8
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_62

    :cond_20
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v0, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_67

    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_5b
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_4

    :cond_62
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5b

    :cond_67
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5b
.end method
