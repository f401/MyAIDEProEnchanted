.class Landroidj/support/v4/widget/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
