.class Landroid/support/v4/view/PagerTitleStrip$a;
.super Landroid/database/DataSetObserver;

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Landroid/support/v4/view/PagerTitleStrip;

.field private j6:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->j6:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v1, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->j6:I

    return-void
.end method

.method public j6(IFI)V
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    return-void
.end method

.method public j6(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->j6(Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    return-void
.end method

.method public onChanged()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v1, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
