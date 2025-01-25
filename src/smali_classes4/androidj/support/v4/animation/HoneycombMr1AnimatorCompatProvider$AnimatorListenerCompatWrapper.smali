.class Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorListenerCompatWrapper"
.end annotation


# instance fields
.field final mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

.field final mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;


# direct methods
.method public constructor <init>(Landroidj/support/v4/animation/AnimatorListenerCompat;Landroidj/support/v4/animation/ValueAnimatorCompat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;

    iput-object p2, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationRepeat(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Landroidj/support/v4/animation/AnimatorListenerCompat;

    iget-object v1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Landroidj/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroidj/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroidj/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method
