.class public Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private static final TAG:Ljava/lang/String; = "GifEncoder"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private final provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method private decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    return-object v1
.end method

.method private getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    :cond_1d
    return-object v1
.end method

.method private writeDataDirect([BLjava/io/OutputStream;)Z
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const-string v1, "GifEncoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "GifEncoder"

    const-string v2, "Failed to write data to output stream in GifResourceEncoder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    move-result-object v6

    instance-of v1, v6, Lcom/bumptech/glide/load/resource/UnitTransformation;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->writeDataDirect([BLjava/io/OutputStream;)Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v7

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_32

    move v0, v2

    goto :goto_1b

    :cond_32
    move v3, v2

    :goto_33
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v1

    if-ge v3, v1, :cond_6c

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v6, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v9

    :try_start_41
    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_67

    move-result v1

    if-nez v1, :cond_52

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    move v0, v2

    goto :goto_1b

    :cond_52
    :try_start_52
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setDelay(I)V

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_67

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_33

    :catchall_67
    move-exception v0

    invoke-interface {v9}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    throw v0

    :cond_6c
    invoke-virtual {v8}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->finish()Z

    move-result v1

    const-string v2, "GifEncoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b8

    const-string v2, "GifEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoded gif with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " frames and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    move v0, v1

    goto/16 :goto_1b
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4

    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
