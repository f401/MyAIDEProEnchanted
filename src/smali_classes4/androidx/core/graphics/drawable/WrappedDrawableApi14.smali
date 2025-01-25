.class Landroidx/core/graphics/drawable/WrappedDrawableApi14;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/WrappedDrawable;
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Landroidx/core/graphics/drawable/WrappedDrawableState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-direct {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-direct {p0, p2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method private mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableState;
    .registers 3

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/WrappedDrawableState;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableState;)V

    return-object v0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v0, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

.method private updateTint([I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-boolean v4, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    if-eqz v4, :cond_29

    iget v4, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    if-ne v2, v4, :cond_29

    iget-object v4, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_8

    :cond_29
    invoke-virtual {p0, v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput v2, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    iput-object v3, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    move v0, v1

    goto :goto_8

    :cond_34
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->clearColorFilter()V

    goto :goto_8
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/WrappedDrawableState;->getChangingConfigurations()I

    move-result v0

    :goto_c
    or-int/2addr v0, v1

    iget-object v1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/WrappedDrawableState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method protected isCompatTintEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public jumpToCurrentState()V
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    if-nez v0, :cond_28

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_28

    invoke-direct {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_17
    iget-object v1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v1, :cond_25

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_23
    iput-object v0, v1, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    :cond_28
    return-object p0

    :cond_29
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setState([I)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    invoke-direct {p0, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setTint(I)V
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iput-object p1, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    iput-object p1, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object p1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_36

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_36
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
