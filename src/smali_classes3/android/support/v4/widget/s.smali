.class Landroid/support/v4/widget/s;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->FH(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/s;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget-object p2, p0, Landroid/support/v4/widget/s;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v0, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->yS:F

    neg-float v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    iget-object p2, p0, Landroid/support/v4/widget/s;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(F)V

    return-void
.end method
