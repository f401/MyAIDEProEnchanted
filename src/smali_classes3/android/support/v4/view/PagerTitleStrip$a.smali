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
    .registers 5

    iget p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->j6:I

    if-nez p1, :cond_2e

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v0, p1, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget p1, p1, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    :cond_2e
    return-void
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->j6:I

    return-void
.end method

.method public j6(IFI)V
    .registers 5

    const/high16 p3, 0x3f000000  # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    iget-object p3, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    return-void
.end method

.method public j6(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->j6(Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    return-void
.end method

.method public onChanged()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$a;->DW:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v1, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    return-void
.end method
