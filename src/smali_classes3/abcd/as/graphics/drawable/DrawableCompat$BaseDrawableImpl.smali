.class Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/as/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 4

    instance-of v0, p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Labcd/as/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    instance-of v0, p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_9

    check-cast p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Labcd/as/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    instance-of v0, p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_a

    new-instance v0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;

    invoke-direct {v0, p1}, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_a
    return-object p1
.end method
