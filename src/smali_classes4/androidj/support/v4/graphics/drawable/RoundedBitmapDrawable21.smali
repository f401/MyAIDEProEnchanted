.class Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;
.super Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    invoke-virtual {p0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->updateDstRect()V

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->getCornerRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasMipMap()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setMipMap(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    invoke-virtual {p0}, Landroidj/support/v4/graphics/drawable/RoundedBitmapDrawable21;->invalidateSelf()V

    :cond_c
    return-void
.end method
