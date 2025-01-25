.class Landroid/support/v4/widget/q;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
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

    iput-object p1, p0, Landroid/support/v4/widget/q;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget-object p2, p0, Landroid/support/v4/widget/q;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->sh:Z

    if-nez v0, :cond_10

    iget v0, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    iget p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_12

    :cond_10
    iget v0, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    :goto_12
    iget-object p2, p0, Landroid/support/v4/widget/q;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->er:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    iget-object v2, p0, Landroid/support/v4/widget/q;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget-object p2, p0, Landroid/support/v4/widget/q;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(F)V

    return-void
.end method
