.class Landroidj/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

.field final val$endingAlpha:I

.field final val$startingAlpha:I


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SwipeRefreshLayout;II)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iput p2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroidj/support/v4/widget/MaterialProgressDrawable;

    iget v1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v1

    iget v2, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    iget v3, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method
