.class public Lcom/s1243808733/view/VPDrawerLayout;
.super Landroidx/drawerlayout/widget/DrawerLayout;

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private closeIng:Z

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method private block$1020()V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->init()V

    return-void
.end method

.method private findViewPager(Landroid/view/ViewGroup;)Landroidx/viewpager/widget/ViewPager;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    goto :goto_1

    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->findViewPager(Landroid/view/ViewGroup;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private init()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    invoke-virtual {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->findViewPager(Landroid/view/ViewGroup;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const v0, 0x800003

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/view/VPDrawerLayout;->closeDrawers()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x800003

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/view/VPDrawerLayout;->closeDrawers()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager/widget/ViewPager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
