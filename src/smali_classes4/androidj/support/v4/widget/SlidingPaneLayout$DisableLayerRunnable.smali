.class Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field final mChildView:Landroid/view/View;

.field final this$0:Landroidj/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
