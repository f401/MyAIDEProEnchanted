.class Landroid/support/v4/widget/a;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/a$a;
    }
.end annotation


# instance fields
.field DW:I

.field private j6:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3fe00000  # 1.75f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40600000  # 3.5f

    mul-float v2, v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/a;->DW:I

    invoke-direct {p0}, Landroid/support/v4/widget/a;->j6()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x40800000  # 4.0f

    mul-float p1, p1, v1

    invoke-static {p0, p1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;F)V

    goto :goto_61

    :cond_39
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/support/v4/widget/a$a;

    iget v3, p0, Landroid/support/v4/widget/a;->DW:I

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/a$a;-><init>(Landroid/support/v4/widget/a;I)V

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/widget/a;->DW:I

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x1e000000

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Landroid/support/v4/widget/a;->DW:I

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object v0, p1

    :goto_61
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private j6()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public j6(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/a;->j6:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public onAnimationEnd()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    iget-object v0, p0, Landroid/support/v4/widget/a;->j6:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    iget-object v0, p0, Landroid/support/v4/widget/a;->j6:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Landroid/support/v4/widget/a;->j6()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/a;->DW:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Landroid/support/v4/widget/a;->DW:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_1e
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_15
    return-void
.end method
