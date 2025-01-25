.class Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroidj/support/v4/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/SlidingPaneLayout;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidj/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v2, v2, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_39
    return v0

    :cond_3a
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_39
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroidj/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidj/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_2a
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p2}, Landroidj/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 8

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_2a

    cmpl-float v1, p2, v2

    if-nez v1, :cond_2f

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2f

    :cond_2a
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidj/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    :cond_40
    :goto_40
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroidj/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidj/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void

    :cond_51
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidj/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    cmpl-float v1, p2, v2

    if-gtz v1, :cond_6a

    cmpl-float v1, p2, v2

    if-nez v1, :cond_40

    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_40

    :cond_6a
    iget-object v1, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroidj/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v0, v1

    goto :goto_40
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidj/support/v4/widget/SlidingPaneLayout;

    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroidj/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    goto :goto_7
.end method
