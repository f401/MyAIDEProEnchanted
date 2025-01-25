.class public Lcom/s1243808733/view/VPDrawerLayout;
.super Landroidj/support/v4/widget/DrawerLayout;

# interfaces
.implements Landroidj/support/v4/widget/DrawerLayout$DrawerListener;
.implements Landroidj/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private closeIng:Z

.field private viewPager:Landroidj/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidj/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidj/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->block$1020()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    return-void
.end method

.method private block$1020()V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/view/VPDrawerLayout;->init()V

    return-void
.end method

.method private findViewPager(Landroid/view/ViewGroup;)Landroidj/support/v4/view/ViewPager;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_c

    const/4 v0, 0x0

    check-cast v0, Landroidj/support/v4/view/ViewPager;

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidj/support/v4/view/ViewPager;

    if-eqz v2, :cond_17

    check-cast v0, Landroidj/support/v4/view/ViewPager;

    goto :goto_b

    :cond_17
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_23

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->findViewPager(Landroid/view/ViewGroup;)Landroidj/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private init()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    invoke-virtual {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .registers 3
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
    .registers 3
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

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidj/support/v4/view/ViewPager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->onPageSelected(I)V

    :cond_11
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 3
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
    .registers 2
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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0, p0}, Lcom/s1243808733/view/VPDrawerLayout;->findViewPager(Landroid/view/ViewGroup;)Landroidj/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setViewPager(Landroidj/support/v4/view/ViewPager;)V

    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    const v0, 0x800003

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/s1243808733/view/VPDrawerLayout;->closeDrawers()V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroidj/support/v4/widget/DrawerLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
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
    .registers 4
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getAdapter()Landroidj/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const v0, 0x800003

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/VPDrawerLayout;->setDrawerLockMode(I)V

    goto :goto_12
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :cond_8
    :goto_8
    return v1

    :pswitch_9  #0x0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    goto :goto_8

    :pswitch_d  #0x1
    iget-boolean v0, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/s1243808733/view/VPDrawerLayout;->closeDrawers()V

    goto :goto_8

    :pswitch_15  #0x2
    iput-boolean v1, p0, Lcom/s1243808733/view/VPDrawerLayout;->closeIng:Z

    goto :goto_8

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_d  #00000001
        :pswitch_15  #00000002
    .end packed-switch
.end method

.method public setViewPager(Landroidj/support/v4/view/ViewPager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/s1243808733/view/VPDrawerLayout;->viewPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroidj/support/v4/view/ViewPager;->addOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
