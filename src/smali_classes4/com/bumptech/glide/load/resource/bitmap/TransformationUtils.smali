.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;


# static fields
.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v1, 0x0

    const/high16 v5, 0x3f000000  # 0.5f

    if-nez p1, :cond_7

    const/4 p1, 0x0

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_6

    :cond_13
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, p2

    if-le v0, v2, :cond_59

    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    move v2, v1

    :goto_36
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p0, :cond_6d

    move-object v0, p0

    :goto_46
    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p1, v0

    goto :goto_6

    :cond_59
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    mul-float v2, v0, v5

    move v0, v1

    goto :goto_36

    :cond_6d
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_46
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1d

    const-string v0, "TransformationUtils"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "TransformationUtils"

    const-string v1, "requested target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-object p0

    :cond_1d
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_59

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v3, :cond_59

    const-string v0, "TransformationUtils"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "TransformationUtils"

    const-string v1, "adjusted target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_59
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_67

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_67
    invoke-static {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string v2, "TransformationUtils"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string v2, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toFit:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toReuse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minPct:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, p0, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p0, v0

    goto/16 :goto_1c
.end method

.method public static getExifOrientationDegrees(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5  #0x5, 0x6
    const/16 v0, 0x5a

    goto :goto_4

    :pswitch_8  #0x3, 0x4
    const/16 v0, 0xb4

    goto :goto_4

    :pswitch_b  #0x7, 0x8
    const/16 v0, 0x10e

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_8  #00000003
        :pswitch_8  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_b  #00000007
        :pswitch_b  #00000008
    .end packed-switch
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    :cond_11
    :goto_11
    return v0

    :catch_12
    move-exception v1

    const-string v2, "TransformationUtils"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get orientation for image with path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_a
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .registers 7

    const/high16 v4, 0x43340000  # 180.0f

    const/high16 v3, 0x42b40000  # 90.0f

    const/high16 v2, -0x3d4c0000  # -90.0f

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v0, -0x40800000  # -1.0f

    packed-switch p0, :pswitch_data_34

    :goto_d
    return-void

    :pswitch_e  #0x2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_d

    :pswitch_12  #0x3
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    :pswitch_16  #0x4
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    :pswitch_1d  #0x5
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    :pswitch_24  #0x6
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    :pswitch_28  #0x7
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_d

    :pswitch_2f  #0x8
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_d

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_e  #00000002
        :pswitch_12  #00000003
        :pswitch_16  #00000004
        :pswitch_1d  #00000005
        :pswitch_24  #00000006
        :pswitch_28  #00000007
        :pswitch_2f  #00000008
    .end packed-switch
.end method

.method public static orientImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getOrientation(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    if-eqz p1, :cond_1b

    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1c

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0

    :catch_1c
    move-exception v0

    const-string v1, "TransformationUtils"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "TransformationUtils"

    const-string v2, "Exception when trying to orient image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p2, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p0

    :goto_10
    return-object v0

    :cond_11
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_41

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_41
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, p0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_10
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_f
    return-void
.end method
