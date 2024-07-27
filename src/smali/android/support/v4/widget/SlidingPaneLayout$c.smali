.class Landroid/support/v4/widget/SlidingPaneLayout$c;
.super Landroid/support/v4/widget/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;II)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public DW(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->we:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    goto :goto_0
.end method

.method public FH(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->Zo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->DW(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    goto :goto_0
.end method

.method public j6(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    return v0
.end method

.method public j6(Landroid/view/View;II)I
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v2, v2, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public j6(II)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;I)V

    return-void
.end method

.method public j6(Landroid/view/View;FF)V
    .registers 8

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/w;->Hw(II)Z

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    cmpl-float v1, p2, v2

    if-gtz v1, :cond_4

    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public j6(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo()V

    return-void
.end method

.method public j6(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
