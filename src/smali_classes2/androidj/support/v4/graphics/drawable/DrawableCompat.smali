.class public final Landroidj/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    :cond_4
    new-instance v0, Landroidj/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-direct {v0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 11
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Landroidj/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Landroidj/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0}, Landroidj/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
