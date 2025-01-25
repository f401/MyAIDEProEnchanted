.class public Lorg/xutils/image/ImageOptions$Builder;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected options:Lorg/xutils/image/ImageOptions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p0}, Lorg/xutils/image/ImageOptions$Builder;->newImageOptions()V

    .line 299
    return-void
.end method


# virtual methods
.method public build()Lorg/xutils/image/ImageOptions;
    .registers 2

    .line 306
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    return-object v0
.end method

.method protected newImageOptions()V
    .registers 2

    .line 302
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    iput-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    .line 303
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 384
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1502(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 385
    return-object p0
.end method

.method public setAutoRotate(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 339
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$602(Lorg/xutils/image/ImageOptions;Z)Z

    .line 340
    return-object p0
.end method

.method public setCircular(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 334
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$502(Lorg/xutils/image/ImageOptions;Z)Z

    .line 335
    return-object p0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 344
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    .line 345
    return-object p0
.end method

.method public setCrop(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 319
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$202(Lorg/xutils/image/ImageOptions;Z)Z

    .line 320
    return-object p0
.end method

.method public setFadeIn(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 379
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1402(Lorg/xutils/image/ImageOptions;Z)Z

    .line 380
    return-object p0
.end method

.method public setFailureDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 374
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1302(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 375
    return-object p0
.end method

.method public setFailureDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 369
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1202(Lorg/xutils/image/ImageOptions;I)I

    .line 370
    return-object p0
.end method

.method public setForceLoadingDrawable(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 399
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1802(Lorg/xutils/image/ImageOptions;Z)Z

    .line 400
    return-object p0
.end method

.method public setGifRate(I)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 354
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$902(Lorg/xutils/image/ImageOptions;I)I

    .line 355
    return-object p0
.end method

.method public setIgnoreGif(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 349
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$802(Lorg/xutils/image/ImageOptions;Z)Z

    .line 350
    return-object p0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 394
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1702(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    .line 395
    return-object p0
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 364
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1102(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 365
    return-object p0
.end method

.method public setLoadingDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 359
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1002(Lorg/xutils/image/ImageOptions;I)I

    .line 360
    return-object p0
.end method

.method public setParamsBuilder(Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 409
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$2002(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;

    .line 410
    return-object p0
.end method

.method public setPlaceholderScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 389
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    .line 390
    return-object p0
.end method

.method public setRadius(I)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 324
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$302(Lorg/xutils/image/ImageOptions;I)I

    .line 325
    return-object p0
.end method

.method public setSize(II)Lorg/xutils/image/ImageOptions$Builder;
    .registers 4

    .line 313
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$002(Lorg/xutils/image/ImageOptions;I)I

    .line 314
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p2}, Lorg/xutils/image/ImageOptions;->access$102(Lorg/xutils/image/ImageOptions;I)I

    .line 315
    return-object p0
.end method

.method public setSquare(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 329
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$402(Lorg/xutils/image/ImageOptions;Z)Z

    .line 330
    return-object p0
.end method

.method public setUseMemCache(Z)Lorg/xutils/image/ImageOptions$Builder;
    .registers 3

    .line 404
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1902(Lorg/xutils/image/ImageOptions;Z)Z

    .line 405
    return-object p0
.end method
