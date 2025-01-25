.class final Landroidj/support/v4/app/FragmentTransition$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroidj/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$enterTransition:Ljava/lang/Object;

.field final val$enteringViews:Ljava/util/ArrayList;

.field final val$exitTransition:Ljava/lang/Object;

.field final val$exitingViews:Ljava/util/ArrayList;

.field final val$inFragment:Landroidj/support/v4/app/Fragment;

.field final val$nonExistentView:Landroid/view/View;

.field final val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 8

    iput-object p1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p3, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$inFragment:Landroidj/support/v4/app/Fragment;

    iput-object p4, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidj/support/v4/app/FragmentTransitionCompat21;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$inFragment:Landroidj/support/v4/app/Fragment;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentTransition;->access$100(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_35
    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    return-void
.end method
