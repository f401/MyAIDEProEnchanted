.class public final Labcd/as/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;,
        Labcd/as/graphics/drawable/DrawableCompat$LollipopDrawableImpl;,
        Labcd/as/graphics/drawable/DrawableCompat$KitKatDrawableImpl;,
        Labcd/as/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;,
        Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;
    }
.end annotation


# static fields
.field static final IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Labcd/as/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;

    invoke-direct {v0}, Labcd/as/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Labcd/as/graphics/drawable/DrawableCompat$KitKatDrawableImpl;

    invoke-direct {v0}, Labcd/as/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Labcd/as/graphics/drawable/DrawableCompat$LollipopDrawableImpl;

    invoke-direct {v0}, Labcd/as/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;

    invoke-direct {v0}, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-direct {v0}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    goto :goto_0
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-virtual {v0, p0}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 3

    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-virtual {v0, p0, p1}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-virtual {v0, p0, p1}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-virtual {v0, p0, p1}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat;->IMPL:Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    invoke-virtual {v0, p0}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
