.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final MARK_POSITION:I = 0x500000

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_16

    const/high16 v0, 0x500000

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    :goto_9
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_e
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_1a

    :cond_15
    :goto_15
    return-object v1

    :cond_16
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    goto :goto_9

    :catch_1a
    move-exception v0

    const-string v2, "Downsampler"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception loading inDecodeBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sample="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 15

    invoke-static {p1, p8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/16 v1, 0x13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_30

    :cond_13
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_30

    int-to-double v2, p5

    int-to-double v4, p7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-double v2, p6

    int-to-double v4, p7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p4, v1, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    :cond_30
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x5

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_13

    :cond_10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_12
    return-object v0

    :cond_13
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_18
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_3a
    .catchall {:try_start_18 .. :try_end_20} :catchall_73

    move-result v0

    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_29

    :cond_24
    :goto_24
    if-eqz v0, :cond_89

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_12

    :catch_29
    move-exception v1

    const-string v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downsampler"

    const-string v4, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_73

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_61

    move v0, v1

    goto :goto_24

    :catch_61
    move-exception v0

    const-string v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    move v0, v1

    goto :goto_24

    :catchall_73
    move-exception v0

    :try_start_74
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    :cond_77
    :goto_77
    throw v0

    :catch_78
    move-exception v1

    const-string v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :cond_89
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_12
.end method

.method private static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    :try_start_6
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1d

    if-nez v0, :cond_19

    :try_start_11
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_20

    :cond_19
    const-class v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    const-class v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-exit v1

    throw v0
.end method

.method private getRoundedSampleSize(IIIII)I
    .registers 8

    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_5

    move p5, p3

    :cond_5
    if-ne p4, v0, :cond_8

    move p4, p2

    :cond_8
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1d

    :cond_10
    invoke-virtual {p0, p3, p2, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v0

    :goto_14
    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1d
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v0

    goto :goto_14

    :cond_22
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_17
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1f

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_1f
    return-void
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_8

    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_8
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .registers 5

    const/4 v3, 0x5

    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_e
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_32
    .catchall {:try_start_e .. :try_end_1c} :catchall_59

    move-result v0

    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_8

    :catch_21
    move-exception v1

    const-string v2, "Downsampler"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_32
    move-exception v0

    :try_start_33
    const-string v1, "Downsampler"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "Downsampler"

    const-string v2, "Cannot determine the image type from header"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_59

    :cond_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    :cond_46
    :goto_46
    const/4 v0, 0x0

    goto :goto_8

    :catch_48
    move-exception v0

    const-string v1, "Downsampler"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "Downsampler"

    const-string v2, "Cannot reset the input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    :cond_5d
    :goto_5d
    throw v0

    :catch_5e
    move-exception v1

    const-string v2, "Downsampler"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 26

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v18

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    invoke-static {v8}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v19

    new-instance v10, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v2, 0x500000

    :try_start_26
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_71

    :try_start_2b
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_96
    .catchall {:try_start_2b .. :try_end_35} :catchall_c2

    move-result v2

    :try_start_36
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_83
    .catchall {:try_start_36 .. :try_end_39} :catchall_71

    move v15, v2

    :goto_3a
    :try_start_3a
    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_71

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    :try_start_4a
    invoke-static {v15}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getRoundedSampleSize(IIIII)I

    move-result v13

    move-object/from16 v6, p0

    move-object v7, v10

    move-object/from16 v10, p2

    move v11, v4

    move v12, v5

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_d9

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v2

    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    throw v2

    :catch_83
    move-exception v3

    :try_start_84
    const-string v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_94

    const-string v4, "Downsampler"

    const-string v5, "Cannot reset the input stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_84 .. :try_end_94} :catchall_71

    :cond_94
    move v15, v2

    goto :goto_3a

    :catch_96
    move-exception v2

    :try_start_97
    const-string v3, "Downsampler"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a7

    const-string v3, "Downsampler"

    const-string v4, "Cannot determine the image orientation from header"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_97 .. :try_end_a7} :catchall_c2

    :cond_a7
    :try_start_a7
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ad
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_71

    const/4 v2, 0x0

    move v15, v2

    goto :goto_3a

    :catch_ad
    move-exception v2

    :try_start_ae
    const-string v3, "Downsampler"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_be

    const-string v3, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_ae .. :try_end_be} :catchall_71

    :cond_be
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_3a

    :catchall_c2
    move-exception v2

    :try_start_c3
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_71

    :cond_c6
    :goto_c6
    :try_start_c6
    throw v2

    :catch_c7
    move-exception v3

    const-string v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c6

    const-string v4, "Downsampler"

    const-string v5, "Cannot reset the input stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c6

    :cond_d9
    const/4 v2, 0x0

    if-eqz v3, :cond_f3

    move-object/from16 v0, p2

    invoke-static {v3, v0, v15}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_f3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_f3
    .catchall {:try_start_c6 .. :try_end_f3} :catchall_71

    :cond_f3
    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method protected abstract getSampleSize(IIII)I
.end method
