.class final Landroidj/support/v4/app/FragmentTransition$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentTransition;->configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$enterTransition:Ljava/lang/Object;

.field final val$finalSharedElementTransition:Ljava/lang/Object;

.field final val$fragments:Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

.field final val$inEpicenter:Landroid/graphics/Rect;

.field final val$inFragment:Landroidj/support/v4/app/Fragment;

.field final val$inIsPop:Z

.field final val$nameOverrides:Landroidj/support/v4/util/ArrayMap;

.field final val$nonExistentView:Landroid/view/View;

.field final val$outFragment:Landroidj/support/v4/app/Fragment;

.field final val$sharedElementsIn:Ljava/util/ArrayList;

.field final val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 12

    iput-object p1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$nameOverrides:Landroidj/support/v4/util/ArrayMap;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p3, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$fragments:Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p6, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inFragment:Landroidj/support/v4/app/Fragment;

    iput-object p7, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$outFragment:Landroidj/support/v4/app/Fragment;

    iput-boolean p8, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p9, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p10, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p11, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$nameOverrides:Landroidj/support/v4/util/ArrayMap;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$fragments:Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2}, Landroidj/support/v4/app/FragmentTransition;->access$300(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidj/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inFragment:Landroidj/support/v4/app/Fragment;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$outFragment:Landroidj/support/v4/app/Fragment;

    iget-boolean v3, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidj/support/v4/app/FragmentTransition;->access$200(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroidj/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$fragments:Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentTransition;->access$400(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidj/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroidj/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
