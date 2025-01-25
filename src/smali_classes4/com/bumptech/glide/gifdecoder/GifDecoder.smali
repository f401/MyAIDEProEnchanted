.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .registers 4

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 23

    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    if-nez p1, :cond_7a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v1, v2

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2f

    :cond_29
    new-array v2, v1, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    if-nez v2, :cond_3d

    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v2, :cond_4b

    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_59

    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    :cond_59
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v19

    const/4 v2, 0x1

    shl-int v20, v2, v19

    add-int/lit8 v14, v19, 0x1

    const/4 v2, 0x0

    :goto_63
    move/from16 v0, v20

    if-ge v2, v0, :cond_84

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/4 v4, 0x0

    int-to-short v4, v4

    aput-short v4, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_7a
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v1, v2

    goto :goto_1c

    :cond_84
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    shl-int/2addr v7, v14

    add-int/lit8 v15, v7, -0x1

    const/4 v13, -0x1

    add-int/lit8 v12, v20, 0x2

    move v7, v4

    move v9, v8

    move/from16 v16, v14

    move/from16 v17, v15

    :goto_99
    if-ge v7, v1, :cond_a8

    if-nez v3, :cond_b7

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v3

    if-gtz v3, :cond_b6

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_a8
    move v2, v5

    :goto_a9
    if-ge v2, v1, :cond_18c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_b6
    const/4 v2, 0x0

    :cond_b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v4, v4, v2

    add-int/lit8 v18, v10, 0x8

    add-int/lit8 v15, v2, 0x1

    add-int/lit8 v14, v3, -0x1

    and-int/lit16 v2, v4, 0xff

    shl-int/2addr v2, v10

    add-int/2addr v11, v2

    move v8, v5

    move/from16 v10, v18

    move v4, v13

    :goto_cb
    move/from16 v0, v16

    if-lt v10, v0, :cond_186

    and-int v3, v11, v17

    shr-int v11, v11, v16

    sub-int v10, v10, v16

    move/from16 v0, v20

    if-ne v3, v0, :cond_e5

    add-int/lit8 v16, v19, 0x1

    const/4 v2, 0x1

    shl-int v2, v2, v16

    add-int/lit8 v17, v2, -0x1

    add-int/lit8 v12, v20, 0x2

    const/4 v3, -0x1

    move v4, v3

    goto :goto_cb

    :cond_e5
    if-le v3, v12, :cond_f1

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move v5, v8

    move v13, v4

    move v3, v14

    move v2, v15

    goto :goto_99

    :cond_f1
    add-int/lit8 v2, v20, 0x1

    if-ne v3, v2, :cond_fa

    move v5, v8

    move v13, v4

    move v3, v14

    move v2, v15

    goto :goto_99

    :cond_fa
    const/4 v2, -0x1

    if-ne v4, v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v4, v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v3

    move v4, v3

    goto :goto_cb

    :cond_10f
    if-lt v3, v12, :cond_183

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v5, v6, 0x1

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v6

    move v2, v4

    :goto_11c
    move/from16 v0, v20

    if-lt v2, v0, :cond_136

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v9, v9, v2

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v2, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    :cond_136
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v2, v6, v2

    and-int/lit16 v9, v2, 0xff

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v6, v5, 0x1

    int-to-byte v13, v9

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    const/16 v2, 0x1000

    if-ge v12, v2, :cond_16a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    add-int/lit8 v12, v12, 0x1

    and-int v2, v12, v17

    if-nez v2, :cond_16a

    const/16 v2, 0x1000

    if-ge v12, v2, :cond_16a

    add-int v17, v17, v12

    add-int/lit8 v16, v16, 0x1

    :cond_16a
    :goto_16a
    if-lez v6, :cond_180

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_16a

    :cond_180
    move v4, v3

    goto/16 :goto_cb

    :cond_183
    move v2, v3

    move v5, v6

    goto :goto_11c

    :cond_186
    move v5, v8

    move v13, v4

    move v3, v14

    move v2, v15

    goto/16 :goto_99

    :cond_18c
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_20
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private read()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_9
    return v0

    :catch_a
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_9
.end method

.method private readBlock()I
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v1

    if-lez v1, :cond_1f

    :goto_7
    if-ge v0, v1, :cond_1f

    sub-int v2, v1, v0

    :try_start_b
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    add-int/2addr v0, v2

    goto :goto_7

    :catch_14
    move-exception v1

    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_1f
    return v0
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_a
    return-void
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .registers 15

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    if-nez p2, :cond_10

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_10
    if-eqz p2, :cond_60

    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v0, :cond_60

    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4e

    const/4 v0, 0x0

    iget-boolean v2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v2, :cond_31

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    iget-object v2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v4, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v2, v4, :cond_31

    const/4 v0, 0x0

    :cond_31
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    mul-int/2addr v2, v3

    iget v4, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v5, v2, v4

    iget v6, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move v4, v5

    :goto_3b
    mul-int v2, v6, v3

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_60

    iget v8, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move v2, v4

    :goto_43
    add-int v9, v4, v8

    if-ge v2, v9, :cond_4c

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_4c
    add-int/2addr v4, v3

    goto :goto_3b

    :cond_4e
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_60

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_60
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    const/4 v0, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_68
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v2, v6, :cond_c4

    iget-boolean v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v6, :cond_f2

    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v5, v6, :cond_f0

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_f4

    move v6, v5

    :goto_7a
    add-int v5, v6, v4

    :goto_7c
    iget v8, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-ge v6, v8, :cond_c1

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int v9, v6, v8

    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v8, v9, v6

    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v6, v8

    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v10, v10, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v10, v9

    if-ge v10, v6, :cond_9e

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v6, v9

    :cond_9e
    iget v9, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int/2addr v9, v2

    :goto_a1
    if-ge v8, v6, :cond_c1

    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    aget-byte v10, v10, v9

    iget-object v11, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    and-int/lit16 v10, v10, 0xff

    aget v10, v11, v10

    if-eqz v10, :cond_b1

    aput v10, v1, v8

    :cond_b1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    :pswitch_b6  #0x2
    const/4 v5, 0x4

    move v6, v5

    goto :goto_7a

    :pswitch_b9  #0x3
    const/4 v4, 0x4

    const/4 v5, 0x2

    move v6, v5

    goto :goto_7a

    :pswitch_bd  #0x4
    const/4 v4, 0x2

    const/4 v5, 0x1

    move v6, v5

    goto :goto_7a

    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_c4
    iget-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz v0, :cond_e4

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v0, :cond_d1

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e4

    :cond_d1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_db

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    :cond_db
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_e4
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0

    :cond_f0
    move v6, v5

    goto :goto_7a

    :cond_f2
    move v6, v2

    goto :goto_7c

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_b6  #00000002
        :pswitch_b9  #00000003
        :pswitch_bd  #00000004
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    :cond_14
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getCurrentFrameIndex()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    return-object v0
.end method

.method public getDelay(I)I
    .registers 4

    const/4 v0, -0x1

    if-ltz p1, :cond_15

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    :cond_15
    return v0
.end method

.method public getFrameCount()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    goto :goto_8
.end method

.method public getNetscapeLoopCount()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_c

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    goto :goto_b
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .registers 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_41

    :cond_d
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_41
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    if-eq v0, v4, :cond_4a

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    :cond_4a
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_d6

    :cond_6d
    move-object v0, v2

    :goto_6e
    monitor-exit p0

    return-object v0

    :cond_70
    const/4 v0, 0x0

    :try_start_71
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_d9

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v3, v1

    :goto_90
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v1, :cond_b1

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    :goto_96
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v1, :cond_b6

    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move-object v0, v2

    goto :goto_6e

    :cond_b1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    goto :goto_96

    :cond_b6
    iget-boolean v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v4, 0x0

    aput v4, v1, v2

    :cond_d1
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_d4
    .catchall {:try_start_71 .. :try_end_d4} :catchall_d6

    move-result-object v0

    goto :goto_6e

    :catchall_d6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d9
    move-object v3, v2

    goto :goto_90
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public getTotalIterationCount()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .registers 7

    const/16 v0, 0x4000

    if-eqz p1, :cond_3a

    if-lez p2, :cond_8

    add-int/lit16 v0, p2, 0x1000

    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_11
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_11

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    if-eqz p1, :cond_2c

    :try_start_29
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_3e

    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_1f

    goto :goto_27

    :cond_3a
    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_27

    :catch_3e
    move-exception v0

    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public read([B)I
    .registers 5

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    if-eqz p1, :cond_5d

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_49

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    :cond_5d
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public resetFrameIndex()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .registers 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    :cond_38
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    return-void
.end method
