.class Landroidj/support/v4/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V
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

    iput-object p1, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Landroidj/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroidj/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_c
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
