.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    return-void
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method applyCenterCrop()V
    .registers 1

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    return-void
.end method

.method applyFitCenter()V
    .registers 1

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    return-void
.end method

.method public varargs bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_19

    new-instance v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v3}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method
