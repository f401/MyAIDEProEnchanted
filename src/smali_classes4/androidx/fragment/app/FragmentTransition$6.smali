.class Landroidx/fragment/app/FragmentTransition$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$enterTransition:Ljava/lang/Object;

.field final val$finalSharedElementTransition:Ljava/lang/Object;

.field final val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final val$inEpicenter:Landroid/graphics/Rect;

.field final val$inFragment:Landroidx/fragment/app/Fragment;

.field final val$inIsPop:Z

.field final val$nameOverrides:Landroidx/collection/ArrayMap;

.field final val$nonExistentView:Landroid/view/View;

.field final val$outFragment:Landroidx/fragment/app/Fragment;

.field final val$sharedElementsIn:Ljava/util/ArrayList;

.field final val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 13

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    iput-object p10, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_48

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_48
    return-void
.end method
