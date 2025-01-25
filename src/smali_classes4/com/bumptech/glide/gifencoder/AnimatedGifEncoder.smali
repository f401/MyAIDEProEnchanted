.class public Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_TRANSPARENT_PERCENTAGE:D = 4.0

.field private static final TAG:Ljava/lang/String; = "AnimatedGifEncoder"


# instance fields
.field private closeStream:Z

.field private colorDepth:I

.field private colorTab:[B

.field private delay:I

.field private dispose:I

.field private firstFrame:Z

.field private hasTransparentPixels:Z

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private indexedPixels:[B

.field private out:Ljava/io/OutputStream;

.field private palSize:I

.field private pixels:[B

.field private repeat:I

.field private sample:I

.field private sizeSet:Z

.field private started:Z

.field private transIndex:I

.field private transparent:Ljava/lang/Integer;

.field private usedEntry:[Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method private analyzePixels()V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    array-length v0, v0

    div-int/lit8 v3, v0, 0x3

    new-array v2, v3, [B

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    new-instance v4, Lcom/bumptech/glide/gifencoder/NeuQuant;

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iget v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    invoke-direct {v4, v2, v0, v5}, Lcom/bumptech/glide/gifencoder/NeuQuant;-><init>([BII)V

    invoke-virtual {v4}, Lcom/bumptech/glide/gifencoder/NeuQuant;->process()[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3e

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v2, v2, v0

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v6, v0, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v5, v0, 0x3

    aput-boolean v1, v2, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_1a

    :cond_3e
    move v0, v1

    move v2, v1

    :goto_40
    if-ge v2, v3, :cond_6c

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v0, v7, 0x1

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->map(III)I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    const/16 v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    :cond_86
    :goto_86
    return-void

    :cond_87
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-eqz v0, :cond_86

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_86
.end method

.method private findClosest(I)I
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    if-nez v0, :cond_7

    const/4 v0, -0x1

    :cond_6
    return v0

    :cond_7
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/high16 v3, 0x1000000

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v7, v0

    move v1, v2

    move v0, v2

    :goto_1a
    if-ge v1, v7, :cond_6

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v1, v4, v1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    sub-int v2, v5, v2

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    sub-int v8, v6, v8

    mul-int/2addr v8, v8

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    add-int v2, v8, v1

    div-int/lit8 v1, v9, 0x3

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_4d

    if-ge v2, v3, :cond_4d

    move v0, v1

    :goto_49
    add-int/lit8 v1, v9, 0x1

    move v3, v2

    goto :goto_1a

    :cond_4d
    move v2, v3

    goto :goto_49
.end method

.method private getImagePixels()V
    .registers 11

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ne v3, v0, :cond_16

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-eq v7, v0, :cond_2b

    :cond_16
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    :cond_2b
    mul-int v0, v3, v7

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    array-length v5, v1

    move v0, v2

    move v3, v2

    move v4, v2

    :goto_44
    if-ge v4, v5, :cond_71

    aget v6, v1, v4

    if-nez v6, :cond_4c

    add-int/lit8 v0, v0, 0x1

    :cond_4c
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v8, v3, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v3

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_71
    mul-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    array-length v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_7f

    const/4 v2, 0x1

    :cond_7f
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    const-string v2, "AnimatedGifEncoder"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a8

    const-string v2, "AnimatedGifEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got pixels for frame with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% transparent pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return-void
.end method

.method private writeGraphicCtrlExt()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xf9

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v0, :cond_45

    move v0, v1

    move v2, v1

    :goto_1f
    iget v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    if-ltz v3, :cond_27

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v2, v2, 0x7

    :cond_27
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shl-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x0

    or-int/lit8 v2, v2, 0x0

    or-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_45
    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_1f
.end method

.method private writeImageDesc()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21
.end method

.method private writeLSD()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeNetscapeExt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writePalette()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v0

    move v0, v1

    :goto_f
    rsub-int v3, v2, 0x300

    if-ge v0, v3, :cond_1b

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private writePixels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/gifencoder/LZWEncoder;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;-><init>(II[BI)V

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeShort(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    if-nez v2, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setSize(II)V

    :cond_19
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->getImagePixels()V

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->analyzePixels()V

    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v2, :cond_32

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeLSD()V

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    if-ltz v2, :cond_32

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeNetscapeExt()V

    :cond_32
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeImageDesc()V

    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v2, :cond_3f

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    :cond_3f
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePixels()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_45} :catch_46

    goto :goto_8

    :catch_46
    move-exception v0

    move v0, v1

    goto :goto_8
.end method

.method public finish()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_32

    move v0, v2

    :goto_21
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    goto :goto_8

    :catch_32
    move-exception v0

    move v0, v1

    goto :goto_21

    :cond_35
    move v0, v2

    goto :goto_21
.end method

.method public setDelay(I)V
    .registers 4

    int-to-float v0, p1

    const/high16 v1, 0x41200000  # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    return-void
.end method

.method public setDispose(I)V
    .registers 2

    if-ltz p1, :cond_4

    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    :cond_4
    return-void
.end method

.method public setFrameRate(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    :cond_e
    return-void
.end method

.method public setQuality(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    move p1, v0

    :cond_4
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method public setRepeat(I)V
    .registers 2

    if-ltz p1, :cond_4

    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    :cond_4
    return-void
.end method

.method public setSize(II)V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iput p2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ge v0, v1, :cond_16

    const/16 v0, 0x140

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    :cond_16
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-ge v0, v1, :cond_1e

    const/16 v0, 0xf0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    :cond_1e
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    goto :goto_9
.end method

.method public setTransparent(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    :try_start_a
    const-string v2, "GIF89a"

    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_12

    :goto_f
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    goto :goto_4

    :catch_12
    move-exception v0

    move v0, v1

    goto :goto_f
.end method

.method public start(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18

    :goto_15
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_15
.end method
