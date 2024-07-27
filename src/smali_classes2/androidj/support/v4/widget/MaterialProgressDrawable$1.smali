.class Landroidj/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

.field final val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/MaterialProgressDrawable;Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 12

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v0, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, v0, Landroidj/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroidj/support/v4/widget/MaterialProgressDrawable$Ring;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget-object v5, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v4, p1, v5}, Landroidj/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroidj/support/v4/widget/MaterialProgressDrawable$Ring;)V

    cmpg-float v4, p1, v7

    if-gtz v4, :cond_1

    div-float v4, p1, v7

    sget-object v5, Landroidj/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    sub-float v6, v8, v0

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    invoke-virtual {v5, v2}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    :cond_1
    cmpl-float v2, p1, v7

    if-lez v2, :cond_2

    sub-float v2, p1, v7

    div-float/2addr v2, v7

    sget-object v4, Landroidj/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v4, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    sub-float v0, v8, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {v4, v0}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    :cond_2
    iget-object v0, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    iget-object v0, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget v0, v0, Landroidj/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const/high16 v2, 0x44870000    # 1080.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43580000    # 216.0f

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    goto :goto_0
.end method
