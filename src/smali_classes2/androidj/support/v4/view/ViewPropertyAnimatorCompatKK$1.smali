.class final Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK;->setUpdateListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p2, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method
