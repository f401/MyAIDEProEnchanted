.class Labcd/as/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.super Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/as/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p1

    return p1
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    instance-of v0, p1, Labcd/as/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_a

    new-instance v0, Labcd/g;

    invoke-direct {v0, p1}, Labcd/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_a
    return-object p1
.end method
