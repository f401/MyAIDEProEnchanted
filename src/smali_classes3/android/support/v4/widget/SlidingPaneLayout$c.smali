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
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public DW(Landroid/view/View;I)Z
    .registers 3

    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-boolean p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->we:Z

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    return p1
.end method

.method public FH(I)V
    .registers 4

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/support/v4/widget/w;->Zo()I

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v0, 0x0

    goto :goto_2b

    :cond_23
    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v0, 0x1

    :goto_2b
    iput-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    :cond_2d
    return-void
.end method

.method public j6(Landroid/view/View;)I
    .registers 2

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    return p1
.end method

.method public j6(Landroid/view/View;II)I
    .registers 5

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result p3

    if-eqz p3, :cond_39

    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr p3, v0

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_4f

    :cond_39
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p1

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_4f
    return p1
.end method

.method public j6(II)V
    .registers 4

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;I)V

    return-void
.end method

.method public j6(Landroid/view/View;FF)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    cmpg-float p3, p2, v2

    if-ltz p3, :cond_2a

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2f

    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2f

    :cond_2a
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    add-int/2addr v0, p2

    :cond_2f
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    goto :goto_5e

    :cond_40
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_59

    cmpl-float p2, p2, v2

    if-nez p2, :cond_5e

    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5e

    :cond_59
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    add-int/2addr p3, p2

    :cond_5e
    :goto_5e
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/support/v4/widget/w;->Hw(II)Z

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public j6(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo()V

    return-void
.end method

.method public j6(Landroid/view/View;IIII)V
    .registers 6

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(I)V

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->j6:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
