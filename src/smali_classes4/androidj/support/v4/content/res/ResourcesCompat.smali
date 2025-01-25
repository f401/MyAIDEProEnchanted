.class public final Landroidj/support/v4/content/res/ResourcesCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .registers 5
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/res/ResourcesCompatApi23;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 5
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/res/ResourcesCompatApi23;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/res/ResourcesCompatApi21;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3  # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/content/res/ResourcesCompatApi21;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_16

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/res/ResourcesCompatIcsMr1;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method
