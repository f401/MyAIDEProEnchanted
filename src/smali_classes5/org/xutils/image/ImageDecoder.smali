.class public final Lorg/xutils/image/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final BITMAP_DECODE_MAX_WORKER:I

.field private static final GIF_HEADER:[B

.field private static final THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

.field private static final THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final bitmapDecodeLock:Ljava/lang/Object;

.field private static final bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final gifDecodeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    .line 44
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_3e

    sput-object v1, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    .line 46
    new-instance v1, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v1, v0, v0}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v1, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 47
    const-string v1, "xUtils_img_thumb"

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    sput-object v1, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 51
    const/4 v2, 0x4

    if-le v1, v2, :cond_3a

    const/4 v0, 0x2

    :cond_3a
    sput v0, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    .line 52
    return-void

    .line 44
    nop

    :array_3e
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .registers 8

    const/4 v0, 0x1

    .line 312
    .line 314
    if-gt p0, p2, :cond_5

    if-le p1, p3, :cond_2c

    .line 315
    :cond_5
    if-le p0, p1, :cond_24

    .line 316
    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 321
    :goto_e
    if-ge v1, v0, :cond_2d

    .line 325
    :goto_10
    mul-int v1, p0, p1

    int-to-float v1, v1

    .line 327
    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 329
    :goto_18
    mul-int v3, v0, v0

    int-to-float v3, v3

    div-float v3, v1, v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2c

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 318
    :cond_24
    int-to-float v1, p0

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_e

    .line 333
    :cond_2c
    return v0

    :cond_2d
    move v0, v1

    goto :goto_10
.end method

.method static clearCacheFiles()V
    .registers 1

    .line 59
    sget-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    .line 60
    return-void
.end method

.method public static cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 11

    .line 368
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 370
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 371
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 372
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 373
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_4b

    .line 375
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 376
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 377
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 378
    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, p0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    if-eqz p1, :cond_4a

    .line 380
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4a
    move-object p0, v0

    .line 384
    :cond_4b
    return-object p0
.end method

.method public static cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v10, 0x0

    .line 395
    if-gtz p1, :cond_4

    .line 420
    :cond_3
    :goto_3
    return-object p0

    .line 397
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 398
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 401
    if-eqz p2, :cond_53

    .line 402
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    move v3, v1

    .line 405
    :goto_14
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 407
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_3

    .line 409
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v0

    int-to-float v9, v3

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 411
    int-to-float v8, p1

    int-to-float v9, p1

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 412
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 413
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-int v2, v3, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v6, p0, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    if-eqz p3, :cond_51

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_51
    move-object p0, v1

    .line 417
    goto :goto_3

    :cond_53
    move v0, v2

    move v3, v4

    goto :goto_14
.end method

.method public static cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v3, 0x0

    const/high16 v6, 0x40000000  # 2.0f

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 432
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 433
    if-ne v4, p1, :cond_10

    if-ne v0, p2, :cond_10

    .line 470
    :cond_f
    :goto_f
    return-object p0

    .line 438
    :cond_10
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 439
    int-to-float v1, p1

    int-to-float v2, v4

    div-float v7, v1, v2

    .line 442
    int-to-float v1, p2

    int-to-float v2, v0

    div-float v8, v1, v2

    .line 444
    cmpl-float v1, v7, v8

    if-lez v1, :cond_48

    .line 446
    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v2, v1

    .line 449
    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v1, v7

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    move v1, v3

    move v6, v7

    move v9, v7

    .line 457
    :goto_30
    invoke-virtual {v5, v6, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 460
    sub-int v3, v4, v1

    sub-int v4, v0, v2

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_f

    .line 463
    if-eqz p3, :cond_58

    if-eq v0, p0, :cond_58

    .line 464
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 465
    goto :goto_f

    .line 452
    :cond_48
    int-to-float v1, v4

    int-to-float v2, p1

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 453
    int-to-float v2, v4

    int-to-float v4, p1

    div-float/2addr v4, v8

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    float-to-int v4, v2

    move v6, v8

    move v9, v8

    move v2, v3

    .line 454
    goto :goto_30

    :cond_58
    move-object p0, v0

    goto :goto_f
.end method

.method public static cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 5

    .line 342
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 344
    if-ne v0, v1, :cond_b

    .line 359
    :cond_a
    :goto_a
    return-object p0

    .line 348
    :cond_b
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 349
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_a

    .line 352
    if-eqz p1, :cond_24

    if-eq v0, p0, :cond_24

    .line 353
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 354
    goto :goto_a

    :cond_24
    move-object p0, v0

    goto :goto_a
.end method

.method public static decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 160
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_16

    .line 265
    :cond_15
    :goto_15
    return-object v0

    .line 161
    :cond_16
    if-nez p1, :cond_1a

    .line 162
    sget-object p1, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 164
    :cond_1a
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v1

    if-gtz v1, :cond_29

    .line 165
    :cond_26
    invoke-virtual {p1, v0}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    .line 169
    :cond_29
    if-eqz p2, :cond_31

    :try_start_2b
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 176
    :cond_31
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 184
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 185
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 186
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getWidth()I

    move-result v5

    .line 187
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getHeight()I

    move-result v6

    .line 188
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isAutoRotate()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/image/ImageDecoder;->getRotateAngle(Ljava/lang/String;)I

    move-result v2

    .line 190
    div-int/lit8 v7, v2, 0x5a

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v8, :cond_73

    .line 191
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 192
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 195
    :cond_73
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v7

    if-nez v7, :cond_87

    if-lez v5, :cond_87

    if-lez v6, :cond_87

    .line 196
    div-int/lit8 v7, v2, 0x5a

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v8, :cond_f1

    .line 197
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 198
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 204
    :cond_87
    :goto_87
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxWidth()I

    move-result v7

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getMaxHeight()I

    move-result v8

    invoke-static {v1, v3, v7, v8}, Lorg/xutils/image/ImageDecoder;->calculateSampleSize(IIII)I

    move-result v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 208
    if-eqz p2, :cond_9d

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 213
    :cond_9d
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_152

    .line 220
    if-eqz p2, :cond_af

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_10a

    .line 223
    :cond_af
    if-eqz v2, :cond_b6

    .line 224
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/xutils/image/ImageDecoder;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    :cond_b6
    if-eqz p2, :cond_be

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_112

    .line 229
    :cond_be
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCrop()Z

    move-result v2

    if-eqz v2, :cond_cd

    if-lez v5, :cond_cd

    if-lez v6, :cond_cd

    .line 230
    const/4 v2, 0x1

    invoke-static {v1, v5, v6, v2}, Lorg/xutils/image/ImageDecoder;->cut2ScaleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 234
    :cond_cd
    if-eqz v1, :cond_14a

    .line 239
    if-eqz p2, :cond_d7

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 242
    :cond_d7
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCircular()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 243
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xutils/image/ImageDecoder;->cut2Circular(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    :cond_e2
    :goto_e2
    if-eqz v1, :cond_142

    move-object v0, v1

    .line 255
    goto/16 :goto_15

    .line 172
    :cond_e7
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ef
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_2b .. :try_end_ef} :catch_ef
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_ef} :catch_f6
    .catchall {:try_start_2b .. :try_end_ef} :catchall_100

    .line 256
    :catch_ef
    move-exception v0

    .line 257
    throw v0

    .line 200
    :cond_f1
    :try_start_f1
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 201
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_f5
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_f1 .. :try_end_f5} :catch_ef
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f5} :catch_f6
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_100

    goto :goto_87

    .line 258
    :catch_f6
    move-exception v0

    .line 259
    throw v0

    .line 209
    :cond_f8
    :try_start_f8
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_100
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_f8 .. :try_end_100} :catch_ef
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_100} :catch_f6
    .catchall {:try_start_f8 .. :try_end_100} :catchall_100

    .line 260
    :catchall_100
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 221
    :cond_10a
    :try_start_10a
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_112
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_11a
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_122
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result v2

    if-lez v2, :cond_136

    .line 245
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getRadius()I

    move-result v2

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xutils/image/ImageDecoder;->cut2RoundCorner(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_e2

    .line 246
    :cond_136
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isSquare()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 247
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xutils/image/ImageDecoder;->cut2Square(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_e2

    .line 252
    :cond_142
    new-instance v1, Ljava/io/IOException;

    const-string v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_14a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_152
    new-instance v1, Ljava/io/IOException;

    const-string v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15a
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_10a .. :try_end_15a} :catch_ef
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_15a} :catch_f6
    .catchall {:try_start_10a .. :try_end_15a} :catchall_100
.end method

.method static decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 69
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_14

    .line 137
    :cond_13
    :goto_13
    return-object v1

    .line 70
    :cond_14
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_47

    .line 75
    :cond_1c
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isIgnoreGif()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {p0}, Lorg/xutils/image/ImageDecoder;->isGif(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 76
    sget-object v2, Lorg/xutils/image/ImageDecoder;->gifDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_2b
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;

    move-result-object v0

    .line 79
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_4f

    .line 80
    if-eqz v0, :cond_13

    .line 81
    new-instance v1, Lorg/xutils/image/GifDrawable;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lorg/xutils/image/GifDrawable;-><init>(Landroid/graphics/Movie;I)V

    move-object v0, v1

    .line 82
    check-cast v0, Lorg/xutils/image/GifDrawable;

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getGifRate()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/xutils/image/GifDrawable;->setRate(I)V

    goto :goto_13

    .line 71
    :cond_47
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    .line 87
    :cond_52
    const/4 v2, 0x0

    .line 89
    :try_start_53
    sget-object v3, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_7a

    .line 90
    :goto_56
    :try_start_56
    sget-object v4, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v5, Lorg/xutils/image/ImageDecoder;->BITMAP_DECODE_MAX_WORKER:I

    if-lt v0, v5, :cond_8b

    if-eqz p2, :cond_68

    .line 91
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_77

    move-result v0

    if-nez v0, :cond_8b

    .line 93
    :cond_68
    :try_start_68
    sget-object v0, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6d} :catch_6e
    .catchall {:try_start_68 .. :try_end_6d} :catchall_e3

    goto :goto_56

    .line 94
    :catch_6e
    move-exception v0

    .line 95
    :try_start_6f
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catchall_77
    move-exception v0

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_6f .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 125
    :catchall_7a
    move-exception v0

    move v1, v2

    if-eqz v1, :cond_83

    .line 126
    sget-object v1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeWorker:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 128
    :cond_83
    sget-object v1, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_86
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_e0

    .line 131
    throw v0

    .line 99
    :cond_8b
    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_77

    .line 101
    if-eqz p2, :cond_94

    :try_start_8e
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 105
    :cond_94
    const/4 v2, 0x1

    .line 106
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 108
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 109
    invoke-static {p0, p1}, Lorg/xutils/image/ImageDecoder;->getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    :goto_a2
    if-nez v0, :cond_ba

    .line 112
    invoke-static {p0, p1, p2}, Lorg/xutils/image/ImageDecoder;->decodeBitmap(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_ba

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->isCompress()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 115
    sget-object v3, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lorg/xutils/image/ImageDecoder$1;

    invoke-direct {v5, p0, p1, v0}, Lorg/xutils/image/ImageDecoder$1;-><init>(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ba
    .catchall {:try_start_8e .. :try_end_ba} :catchall_7a

    .line 126
    :cond_ba
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 128
    sget-object v2, Lorg/xutils/image/ImageDecoder;->bitmapDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_c0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_dd

    .line 131
    if-eqz v0, :cond_13

    .line 134
    new-instance v1, Lorg/xutils/image/ReusableBitmapDrawable;

    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xutils/image/ReusableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_13

    .line 102
    :cond_d5
    :try_start_d5
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled during decode image"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_dd
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_7a

    .line 130
    :catchall_dd
    move-exception v0

    :try_start_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v0

    :catchall_e0
    move-exception v0

    :try_start_e1
    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v0

    .line 96
    :catchall_e3
    move-exception v0

    goto/16 :goto_56

    :cond_e6
    move-object v0, v1

    goto :goto_a2
.end method

.method public static decodeGif(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/Movie;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_14

    .line 297
    :cond_13
    :goto_13
    return-object v0

    .line 283
    :cond_14
    if-eqz p2, :cond_1c

    :try_start_16
    invoke-interface {p2}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_28

    .line 286
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_32

    move-object v0, v1

    .line 290
    goto :goto_13

    .line 284
    :cond_28
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled during decode image"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_30
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_16 .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_30} :catch_3a
    .catchall {:try_start_16 .. :try_end_30} :catchall_3c

    .line 291
    :catch_30
    move-exception v0

    .line 292
    throw v0

    .line 288
    :cond_32
    :try_start_32
    new-instance v1, Ljava/io/IOException;

    const-string v2, "decode image error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3a
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_32 .. :try_end_3a} :catch_30
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3c

    .line 293
    :catch_3a
    move-exception v0

    .line 294
    throw v0

    .line 295
    :catchall_3c
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static getRotateAngle(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 511
    .line 513
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    move-result v1

    .line 517
    packed-switch v1, :pswitch_data_24

    .line 534
    :goto_10
    :pswitch_10  #0x4, 0x5, 0x7
    return v0

    .line 525
    :pswitch_11  #0x8
    const/16 v0, 0x10e

    .line 526
    goto :goto_10

    .line 519
    :pswitch_14  #0x6
    const/16 v0, 0x5a

    .line 520
    goto :goto_10

    .line 522
    :pswitch_17  #0x3
    const/16 v0, 0xb4

    goto :goto_10

    .line 531
    :catchall_1a
    move-exception v1

    .line 532
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 517
    nop

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_17  #00000003
        :pswitch_10  #00000004
        :pswitch_10  #00000005
        :pswitch_14  #00000006
        :pswitch_10  #00000007
        :pswitch_11  #00000008
    .end packed-switch
.end method

.method private static getThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v1, 0x0

    .line 567
    .line 569
    :try_start_1
    sget-object v0, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {v0, v2}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_51

    move-result-object v0

    .line 571
    if-eqz v0, :cond_5a

    :try_start_2c
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 572
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 573
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 574
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 575
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 576
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 577
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_64

    move-result-object v1

    .line 582
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 583
    :goto_50
    return-object v0

    .line 579
    :catchall_51
    move-exception v2

    move-object v0, v1

    .line 580
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5f

    .line 582
    :cond_5a
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 583
    goto :goto_50

    .line 582
    :catchall_5f
    move-exception v1

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 583
    throw v1

    .line 579
    :catchall_64
    move-exception v2

    goto :goto_53
.end method

.method public static isGif(Ljava/io/File;)Z
    .registers 5

    .line 141
    const/4 v2, 0x0

    .line 143
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    .line 144
    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    :try_start_9
    invoke-static {v1, v2, v3, v0}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v0

    .line 145
    sget-object v2, Lorg/xutils/image/ImageDecoder;->GIF_HEADER:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2a

    move-result v0

    .line 149
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    :goto_16
    return v0

    .line 146
    :catchall_17
    move-exception v0

    move-object v1, v2

    .line 147
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_25

    .line 149
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_16

    .line 149
    :catchall_25
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    throw v0

    .line 146
    :catchall_2a
    move-exception v0

    goto :goto_19
.end method

.method public static rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 479
    const/4 v7, 0x0

    .line 481
    if-eqz p1, :cond_33

    .line 483
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 484
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 486
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_27

    move-result-object v0

    .line 492
    :goto_1c
    if-eqz v0, :cond_26

    .line 493
    if-eqz p2, :cond_31

    if-eq v0, p0, :cond_31

    .line 494
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 500
    :cond_26
    :goto_26
    return-object p0

    .line 487
    :catchall_27
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_1c

    :cond_31
    move-object p0, v0

    goto :goto_26

    :cond_33
    move-object v0, v7

    goto :goto_1c
.end method

.method private static saveThumbCache(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .registers 9

    const/4 v2, 0x0

    .line 541
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 547
    :try_start_2c
    sget-object v1, Lorg/xutils/image/ImageDecoder;->THUMB_CACHE:Lorg/xutils/cache/LruDiskCache;

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_4e

    move-result-object v0

    .line 548
    if-eqz v0, :cond_6a

    .line 549
    :try_start_34
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_64

    .line 550
    :try_start_39
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 551
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 552
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_67

    move-result-object v0

    .line 558
    :goto_47
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 559
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 561
    return-void

    .line 554
    :catchall_4e
    move-exception v3

    move-object v0, v2

    move-object v1, v2

    .line 555
    :goto_51
    :try_start_51
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 556
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_5c

    goto :goto_47

    .line 558
    :catchall_5c
    move-exception v2

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 559
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 560
    throw v2

    .line 554
    :catchall_64
    move-exception v3

    move-object v1, v2

    goto :goto_51

    :catchall_67
    move-exception v2

    move-object v3, v2

    goto :goto_51

    :cond_6a
    move-object v1, v2

    goto :goto_47
.end method
