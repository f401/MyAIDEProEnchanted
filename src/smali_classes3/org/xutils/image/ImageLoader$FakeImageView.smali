.class final Lorg/xutils/image/ImageLoader$FakeImageView;
.super Landroid/widget/ImageView;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeImageView"
.end annotation


# static fields
.field private static final hashCodeSeed:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private final hashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 608
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/image/ImageLoader$FakeImageView;->hashCodeSeed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 611
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 612
    sget-object v0, Lorg/xutils/image/ImageLoader$FakeImageView;->hashCodeSeed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->hashCode:I

    .line 613
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 627
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 617
    iget v0, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->hashCode:I

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 623
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 3

    .line 632
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 2

    .line 636
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    .line 640
    return-void
.end method
