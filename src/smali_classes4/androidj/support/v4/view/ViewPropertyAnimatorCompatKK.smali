.class Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpdateListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;

    invoke-direct {v0, p1, p0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatKK$1;-><init>(Landroidj/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
