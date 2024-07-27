.class Landroidj/support/v4/app/FragmentManagerImpl$2;
.super Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/FragmentManagerImpl;

.field final val$fragment:Landroidj/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroidj/support/v4/app/Fragment;)V
    .registers 5

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object p4, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroidj/support/v4/app/Fragment;

    invoke-direct {p0, p2, p3}, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroidj/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->this$0:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroidj/support/v4/app/Fragment;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroidj/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
