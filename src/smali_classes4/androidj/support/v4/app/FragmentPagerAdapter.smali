.class public abstract Landroidj/support/v4/app/FragmentPagerAdapter;
.super Landroidj/support/v4/view/PagerAdapter;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

.field private final mFragmentManager:Landroidj/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidj/support/v4/app/FragmentManager;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidj/support/v4/view/PagerAdapter;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    iput-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    iput-object p1, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroidj/support/v4/app/FragmentManager;

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroidj/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManager;->beginTransaction()Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    check-cast p3, Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroidj/support/v4/app/FragmentTransaction;->detach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    :cond_c
    return-void
.end method

.method public abstract getItem(I)Landroidj/support/v4/app/Fragment;
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroidj/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManager;->beginTransaction()Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    :cond_d
    invoke-virtual {p0, p2}, Landroidj/support/v4/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Landroidj/support/v4/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Landroidj/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v1, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentTransaction;->attach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;

    :goto_26
    iget-object v1, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    if-eq v0, v1, :cond_30

    invoke-virtual {v0, v6}, Landroidj/support/v4/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v6}, Landroidj/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_30
    return-object v0

    :cond_31
    invoke-virtual {p0, p2}, Landroidj/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Landroidj/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Landroidj/support/v4/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroidj/support/v4/app/FragmentTransaction;->add(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;

    goto :goto_26
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Landroidj/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p3, Landroidj/support/v4/app/Fragment;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/Fragment;->setMenuVisibility(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_16
    if-eqz p3, :cond_1e

    invoke-virtual {p3, v2}, Landroidj/support/v4/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p3, v2}, Landroidj/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1e
    iput-object p3, p0, Landroidj/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidj/support/v4/app/Fragment;

    :cond_20
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-void
.end method
