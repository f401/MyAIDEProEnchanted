.class Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;
.super Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplJBMR1"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateChildRegion(Landroidj/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroidj/support/v4/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
