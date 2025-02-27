.class Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_c

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_b
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_c

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    if-nez v1, :cond_b

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_b
.end method

.method public run()V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    goto :goto_10
.end method
