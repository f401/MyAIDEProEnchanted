.class Landroid/support/v4/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->DW(F)V
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

    iput-object p1, p0, Landroid/support/v4/widget/p;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/widget/p;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_a
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
