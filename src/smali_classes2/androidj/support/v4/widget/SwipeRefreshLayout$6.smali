.class Landroidj/support/v4/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SwipeRefreshLayout;
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

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v2, v2, Landroidj/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget-object v2, v2, Landroidj/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroidj/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroidj/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0
.end method
