.class public abstract Landroidx/fragment/app/FragmentStatePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I = 0x1

.field public static final BEHAVIOR_SET_USER_VISIBLE_HINT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapt"


# instance fields
.field private final mBehavior:I

.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mExecutingFinishUpdate:Z

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_f
    :goto_f
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v0

    :goto_2b
    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_42
    return-void

    :cond_43
    move-object v0, v1

    goto :goto_2b
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_14

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    throw v0
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_14

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_14

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_20
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_39

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment$SavedState;

    if-eqz v0, :cond_39

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    :cond_39
    :goto_39
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_48

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_48
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-nez v0, :cond_52

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_52
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    iget v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6c

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_6c
    move-object v0, v1

    goto :goto_13
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

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
    .registers 9

    const/4 v2, 0x0

    if-eqz p1, :cond_87

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_2b

    move v1, v2

    :goto_1b
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_2b
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, p1, v0}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_70

    :goto_58
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_67

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_67
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad fragment at key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FragmentStatePagerAdapt"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_87
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/fragment/app/Fragment$SavedState;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_1f
    const/4 v2, 0x0

    move-object v1, v0

    :goto_21
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5d

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_56

    if-nez v1, :cond_40

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v1, v3, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_56
    move-object v0, v1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_21

    :cond_5b
    const/4 v0, 0x0

    goto :goto_1f

    :cond_5d
    return-object v1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, v0, :cond_42

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v0, v3, :cond_43

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_26
    :goto_26
    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_39

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_39
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p3, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :goto_40
    iput-object p3, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_42
    return-void

    :cond_43
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_26

    :cond_49
    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_40
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
