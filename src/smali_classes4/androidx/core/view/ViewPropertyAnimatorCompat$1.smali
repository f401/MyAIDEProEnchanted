.class Landroidx/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iput-object p3, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
