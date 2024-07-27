.class final Lorg/xutils/image/ImageLoader$1;
.super Lorg/xutils/cache/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/cache/LruCache",
        "<",
        "Lorg/xutils/image/MemCacheKey;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private deepClear:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lorg/xutils/cache/LruCache;-><init>(I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 69
    check-cast p2, Lorg/xutils/image/MemCacheKey;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xutils/image/ImageLoader$1;->entryRemoved(ZLorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected entryRemoved(ZLorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/xutils/image/ReusableDrawable;

    if-eqz v0, :cond_0

    .line 96
    check-cast p3, Lorg/xutils/image/ReusableDrawable;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/xutils/image/ReusableDrawable;->setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 69
    check-cast p1, Lorg/xutils/image/MemCacheKey;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lorg/xutils/image/ImageLoader$1;->sizeOf(Lorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Lorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;)I
    .registers 4

    .line 74
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 75
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    instance-of v0, p2, Lorg/xutils/image/GifDrawable;

    if-eqz v0, :cond_2

    .line 78
    check-cast p2, Lorg/xutils/image/GifDrawable;

    invoke-virtual {p2}, Lorg/xutils/image/GifDrawable;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/xutils/cache/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public trimToSize(I)V
    .registers 3

    .line 85
    if-gez p1, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    .line 90
    return-void
.end method
