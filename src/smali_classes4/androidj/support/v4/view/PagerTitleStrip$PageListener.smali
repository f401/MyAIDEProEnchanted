.class Landroidj/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;

# interfaces
.implements Landroidj/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroidj/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final this$0:Landroidj/support/v4/view/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/PagerTitleStrip;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidj/support/v4/view/ViewPager;Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p2, p3}, Landroidj/support/v4/view/PagerTitleStrip;->updateAdapter(Landroidj/support/v4/view/PagerAdapter;Landroidj/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidj/support/v4/view/PagerTitleStrip;->updateText(ILandroidj/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget v1, v1, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_22

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_22
    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidj/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez v1, :cond_34

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidj/support/v4/view/PagerTitleStrip;->updateText(ILandroidj/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget v1, v1, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_26

    iget-object v0, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroidj/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_26
    iget-object v1, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroidj/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroidj/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroidj/support/v4/view/PagerTitleStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidj/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_34
    return-void
.end method
