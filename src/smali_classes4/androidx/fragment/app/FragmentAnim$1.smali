.class Landroidx/fragment/app/FragmentAnim$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    return-void
.end method
