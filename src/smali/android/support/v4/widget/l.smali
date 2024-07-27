.class Landroid/support/v4/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    iput-object p1, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->start()V

    iget-object v0, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->ro:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$b;->j6()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
