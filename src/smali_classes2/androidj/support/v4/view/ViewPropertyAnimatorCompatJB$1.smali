.class final Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorListener;

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    iput-object p2, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
