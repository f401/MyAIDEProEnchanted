.class Landroidj/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.super Landroidj/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanMr1DrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method
