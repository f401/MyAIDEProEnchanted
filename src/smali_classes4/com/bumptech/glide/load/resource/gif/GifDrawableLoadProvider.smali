.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
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
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-object v0
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

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

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/model/StreamEncoder;

    return-object v0
.end method
