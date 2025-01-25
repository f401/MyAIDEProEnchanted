.class Landroidj/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    iput v2, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    iput v2, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mColorMode:I

    iput-boolean v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    iput-boolean v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroidj/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroidj/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroidj/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/Bitmap;)Z
    .registers 2

    invoke-static {p0}, Landroidj/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroidj/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    goto :goto_4
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 11

    const/high16 v5, 0x40000000  # 2.0f

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    const/4 v2, 0x2

    if-ne p4, v2, :cond_32

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1a
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    div-float/2addr v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1

    :cond_32
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1a
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2d

    move-result-object v0

    if-eqz v1, :cond_23

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception v1

    const-string v2, "PrintHelperKitkat"

    const-string v3, "close fail "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :catchall_2d
    move-exception v0

    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    const-string v2, "PrintHelperKitkat"

    const-string v3, "close fail "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_a

    if-eqz p1, :cond_a

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v1, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0, p1, v1}, Landroidj/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_24

    if-gtz v4, :cond_25

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_29
    if-le v1, p2, :cond_30

    ushr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_30
    if-lez v2, :cond_24

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v1, v2

    if-lez v1, :cond_24

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3c
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_5e

    :try_start_4f
    invoke-direct {p0, p1, v0}, Landroidj/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_61

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_57
    iput-object v2, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1

    goto :goto_24

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    throw v0

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    :catchall_61
    move-exception v0

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_66
    iput-object v2, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    throw v0

    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16

    iget-boolean v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v0, :cond_18

    move-object v3, p1

    :goto_5
    new-instance v0, Landroidj/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    move-object v7, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroidj/support/v4/print/PrintHelperKitkat$2;-><init>(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroidj/support/v4/print/PrintHelperKitkat$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_18
    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/print/PrintAttributes$Margins;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    goto :goto_5
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 4

    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_2a
    return-object v0
.end method

.method public getColorMode()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    goto :goto_5
.end method

.method public getScaleMode()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 12

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget v3, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/print/PrintManager;

    invoke-static {p2}, Landroidj/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    :goto_18
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v7

    new-instance v0, Landroidj/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/print/PrintHelperKitkat$1;-><init>(Landroidj/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    invoke-virtual {v6, p1, v0, v7}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_2

    :cond_38
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_18
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget v5, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/print/PrintHelperKitkat$3;-><init>(Landroidj/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    iget v3, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    iget v3, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    iget v3, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v3, :cond_35

    :cond_28
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    :cond_2d
    :goto_2d
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void

    :cond_35
    iget v3, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_2d
.end method

.method public setColorMode(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return-void
.end method
