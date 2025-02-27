.class public Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

.field private final encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    return-object v0
.end method
