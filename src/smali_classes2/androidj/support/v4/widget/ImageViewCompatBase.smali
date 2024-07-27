.class Landroidj/support/v4/widget/ImageViewCompatBase;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_0

    check-cast p0, Landroidj/support/v4/widget/TintableImageSourceView;

    invoke-interface {p0}, Landroidj/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    instance-of v0, p0, Landroidj/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_0

    check-cast p0, Landroidj/support/v4/widget/TintableImageSourceView;

    invoke-interface {p0}, Landroidj/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_0

    check-cast p0, Landroidj/support/v4/widget/TintableImageSourceView;

    invoke-interface {p0, p1}, Landroidj/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    instance-of v0, p0, Landroidj/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_0

    check-cast p0, Landroidj/support/v4/widget/TintableImageSourceView;

    invoke-interface {p0, p1}, Landroidj/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
