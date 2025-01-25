.class public Lorg/xutils/image/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageOptions$Builder;,
        Lorg/xutils/image/ImageOptions$ParamsBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/xutils/image/ImageOptions;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private autoRotate:Z

.field private circular:Z

.field private compress:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private crop:Z

.field private fadeIn:Z

.field private failureDrawable:Landroid/graphics/drawable/Drawable;

.field private failureDrawableId:I

.field private forceLoadingDrawable:Z

.field private gifRate:I

.field private height:I

.field private ignoreGif:Z

.field private imageScaleType:Landroid/widget/ImageView$ScaleType;

.field private loadingDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingDrawableId:I

.field private maxHeight:I

.field private maxWidth:I

.field private paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

.field private placeholderScaleType:Landroid/widget/ImageView$ScaleType;

.field private radius:I

.field private square:Z

.field private useMemCache:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 24
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 25
    iput v1, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 26
    iput v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 27
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    .line 29
    iput v1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    .line 30
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    .line 31
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    .line 32
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    .line 33
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    .line 37
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    .line 38
    const/16 v0, 0x64

    iput v0, p0, Lorg/xutils/image/ImageOptions;->gifRate:I

    .line 42
    iput v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    .line 43
    iput v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    .line 44
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    .line 49
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 51
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    .line 52
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    .line 56
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    .line 60
    return-void
.end method

.method static synthetic access$002(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->width:I

    return p1
.end method

.method static synthetic access$1002(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    return p1
.end method

.method static synthetic access$102(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->height:I

    return p1
.end method

.method static synthetic access$1102(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    return p1
.end method

.method static synthetic access$1302(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return p1
.end method

.method static synthetic access$1502(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return p1
.end method

.method static synthetic access$2002(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p1
.end method

.method static synthetic access$202(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return p1
.end method

.method static synthetic access$302(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return p1
.end method

.method static synthetic access$402(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return p1
.end method

.method static synthetic access$502(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return p1
.end method

.method static synthetic access$602(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return p1
.end method

.method static synthetic access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 18
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic access$802(Lorg/xutils/image/ImageOptions;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return p1
.end method

.method static synthetic access$902(Lorg/xutils/image/ImageOptions;I)I
    .registers 2

    .line 18
    iput p1, p0, Lorg/xutils/image/ImageOptions;->gifRate:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 255
    :cond_5
    :goto_5
    return v1

    .line 241
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 243
    check-cast p1, Lorg/xutils/image/ImageOptions;

    .line 245
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-ne v2, v3, :cond_5

    .line 246
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-ne v2, v3, :cond_5

    .line 247
    iget v2, p0, Lorg/xutils/image/ImageOptions;->width:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->width:I

    if-ne v2, v3, :cond_5

    .line 248
    iget v2, p0, Lorg/xutils/image/ImageOptions;->height:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->height:I

    if-ne v2, v3, :cond_5

    .line 249
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->crop:Z

    if-ne v2, v3, :cond_5

    .line 250
    iget v2, p0, Lorg/xutils/image/ImageOptions;->radius:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->radius:I

    if-ne v2, v3, :cond_5

    .line 251
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->square:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->square:Z

    if-ne v2, v3, :cond_5

    .line 252
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->circular:Z

    if-ne v2, v3, :cond_5

    .line 253
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    if-ne v2, v3, :cond_5

    .line 254
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->compress:Z

    if-ne v2, v3, :cond_5

    .line 255
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_58

    :goto_56
    move v1, v0

    goto :goto_5

    :cond_58
    move v0, v1

    goto :goto_56
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 215
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 200
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    if-lez v0, :cond_16

    if-eqz p1, :cond_16

    .line 202
    :try_start_a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 207
    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 203
    :catchall_19
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public getGifRate()I
    .registers 2

    .line 173
    iget v0, p0, Lorg/xutils/image/ImageOptions;->gifRate:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 149
    iget v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    return v0
.end method

.method public getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 223
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 189
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    if-lez v0, :cond_16

    if-eqz p1, :cond_16

    .line 191
    :try_start_a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 196
    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 192
    :catchall_19
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public getMaxHeight()I
    .registers 2

    .line 141
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 137
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    return v0
.end method

.method public getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .registers 2

    .line 235
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object v0
.end method

.method public getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 219
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getRadius()I
    .registers 2

    .line 157
    iget v0, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 145
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 12

    .line 261
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 262
    iget v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 263
    iget v3, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 264
    iget v4, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 265
    iget-boolean v5, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    .line 266
    iget v6, p0, Lorg/xutils/image/ImageOptions;->radius:I

    .line 267
    iget-boolean v7, p0, Lorg/xutils/image/ImageOptions;->square:Z

    .line 268
    iget-boolean v8, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    .line 269
    iget-boolean v9, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    .line 270
    iget-boolean v10, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 271
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    .line 272
    :goto_1c
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    .line 271
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isAutoRotate()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return v0
.end method

.method public isCircular()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return v0
.end method

.method public isCompress()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    return v0
.end method

.method public isCrop()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return v0
.end method

.method public isFadeIn()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return v0
.end method

.method public isForceLoadingDrawable()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return v0
.end method

.method public isIgnoreGif()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return v0
.end method

.method public isSquare()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return v0
.end method

.method public isUseMemCache()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return v0
.end method

.method final optimizeMaxSize(Landroid/widget/ImageView;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 64
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-lez v0, :cond_f

    iget v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-lez v1, :cond_f

    .line 65
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 66
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 134
    :goto_e
    return-void

    .line 70
    :cond_f
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenWidth()I

    move-result v3

    .line 71
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenHeight()I

    move-result v2

    .line 73
    sget-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    if-ne p0, v0, :cond_2c

    .line 74
    mul-int/lit8 v0, v3, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 75
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto :goto_e

    .line 79
    :cond_2c
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-gez v0, :cond_38

    .line 80
    mul-int/lit8 v0, v3, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 81
    iput-boolean v4, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 83
    :cond_38
    iget v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gez v0, :cond_44

    .line 84
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 85
    iput-boolean v4, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 88
    :cond_44
    if-nez p1, :cond_53

    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-gtz v0, :cond_53

    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-gtz v0, :cond_53

    .line 89
    iput v3, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 90
    iput v2, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto :goto_e

    .line 92
    :cond_53
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 93
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 95
    if-eqz p1, :cond_8d

    .line 96
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_7b

    .line 99
    if-gtz v0, :cond_6d

    .line 100
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_98

    .line 101
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    iget v5, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-gtz v5, :cond_6d

    .line 103
    iput v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 110
    :cond_6d
    :goto_6d
    if-gtz v1, :cond_7b

    .line 111
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_a1

    .line 112
    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget v4, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gtz v4, :cond_7b

    .line 114
    iput v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 122
    :cond_7b
    :goto_7b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_8d

    .line 123
    if-gtz v0, :cond_87

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    .line 124
    :cond_87
    if-gtz v1, :cond_8d

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v1

    .line 128
    :cond_8d
    if-gtz v0, :cond_ac

    .line 129
    :goto_8f
    if-gtz v1, :cond_aa

    move v0, v2

    .line 131
    :goto_92
    iput v3, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 132
    iput v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto/16 :goto_e

    .line 105
    :cond_98
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v5, v6, :cond_6d

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    goto :goto_6d

    .line 116
    :cond_a1
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v6, :cond_7b

    .line 117
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_7b

    :cond_aa
    move v0, v1

    goto :goto_92

    :cond_ac
    move v3, v0

    goto :goto_8f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget v1, p0, Lorg/xutils/image/ImageOptions;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
