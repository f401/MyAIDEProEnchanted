.class Landroidj/support/v4/widget/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v1, v1

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method
