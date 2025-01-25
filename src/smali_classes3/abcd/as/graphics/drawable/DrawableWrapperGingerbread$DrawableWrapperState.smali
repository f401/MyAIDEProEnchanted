.class public abstract Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/as/graphics/drawable/DrawableWrapperGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    sget-object p2, Labcd/as/graphics/drawable/DrawableWrapperGingerbread;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1c

    iget p2, p1, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mChangingConfigurations:I

    iput p2, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mChangingConfigurations:I

    iget-object p2, p1, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object p2, p1, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1c
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .registers 2

    iget-object v0, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v0, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v1, p0, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method
