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
    .registers 3

    iget-object p1, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-eqz v0, :cond_2c

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    iget-object p1, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/support/v4/widget/CircularProgressDrawable;->start()V

    iget-object p1, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->ro:Z

    if-eqz v0, :cond_21

    iget-object p1, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Landroid/support/v4/widget/SwipeRefreshLayout$b;->j6()V

    :cond_21
    iget-object p1, p0, Landroid/support/v4/widget/l;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    goto :goto_2f

    :cond_2c
    invoke-virtual {p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW()V

    :goto_2f
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
