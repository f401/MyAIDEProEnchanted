.class public Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;
.super Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)V

    return-void
.end method


# virtual methods
.method protected getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    return-object p1
.end method

.method protected bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
