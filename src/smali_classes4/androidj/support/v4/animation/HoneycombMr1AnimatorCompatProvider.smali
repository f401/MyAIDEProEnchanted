.class Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/animation/AnimatorProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;,
        Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;
    }
.end annotation


# instance fields
.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInterpolator(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public emptyValueAnimator()Landroidj/support/v4/animation/ValueAnimatorCompat;
    .registers 3

    new-instance v0, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_10

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;-><init>(Landroid/animation/Animator;)V

    return-object v0

    :array_10
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
