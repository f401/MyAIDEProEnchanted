.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 10

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, Landroidx/core/os/CancellationSignal;

    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    new-instance v0, Landroidx/fragment/app/FragmentAnim$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentAnim$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    invoke-interface {p2, p0, v5}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_35

    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    iget-object v3, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    new-instance v2, Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {v2, v1, p0, p2, v5}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_34
    return-void

    :cond_35
    iget-object v6, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    new-instance v0, Landroidx/fragment/app/FragmentAnim$3;

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentAnim$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_34
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_22

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v5, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v5, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_22
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2f

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    if-eqz v4, :cond_2f

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {p1, v3, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3b

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_2e

    :cond_3b
    invoke-virtual {p1, v3, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_47

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    goto :goto_2e

    :cond_47
    if-nez v1, :cond_96

    if-eqz v3, :cond_96

    invoke-static {v3, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(IZ)I

    move-result v1

    move v3, v1

    :goto_50
    if-eqz v3, :cond_2e

    const-string v1, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    :try_start_62
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_6f

    new-instance v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v1, v5}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_6d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_62 .. :try_end_6d} :catch_82
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_6d} :catch_7f

    move-object v0, v1

    goto :goto_2e

    :cond_6f
    const/4 v1, 0x1

    :goto_70
    if-nez v1, :cond_2e

    :try_start_72
    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_7d} :catch_84

    move-object v0, v1

    goto :goto_2e

    :catch_7f
    move-exception v1

    move v1, v2

    goto :goto_70

    :catch_82
    move-exception v0

    throw v0

    :catch_84
    move-exception v1

    if-nez v4, :cond_93

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2e

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_2e

    :cond_93
    throw v1

    :cond_94
    move v1, v2

    goto :goto_70

    :cond_96
    move v3, v1

    goto :goto_50
.end method

.method private static transitToAnimResourceId(IZ)I
    .registers 3

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    if-eqz p1, :cond_13

    sget v0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_d

    :cond_13
    sget v0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    goto :goto_d

    :cond_16
    if-eqz p1, :cond_1b

    sget v0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_d

    :cond_1b
    sget v0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    goto :goto_d

    :cond_1e
    if-eqz p1, :cond_23

    sget v0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_d

    :cond_23
    sget v0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    goto :goto_d
.end method
