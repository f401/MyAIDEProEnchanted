.class final Landroidj/support/v4/app/FragmentManagerImpl;
.super Landroidj/support/v4/app/FragmentManager;

# interfaces
.implements Landroidj/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroidj/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;,
        Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;,
        Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidj/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidj/support/v4/app/FragmentHostCallback;

.field private mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidj/support/v4/util/Pair",
            "<",
            "Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroidj/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/high16 v4, 0x40200000  # 2.5f

    const/high16 v3, 0x3fc00000  # 1.5f

    sput-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    const/4 v0, 0x0

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManager;-><init>()V

    iput v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/FragmentManagerImpl$1;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Landroidj/support/v4/app/FragmentManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$300(Landroidj/support/v4/app/FragmentManagerImpl;Landroidj/support/v4/app/BackStackRecord;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentManagerImpl;->completeExecute(Landroidj/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Landroidj/support/v4/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArraySet",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_41

    move v6, v5

    :goto_13
    move v7, v5

    :goto_14
    if-ge v7, v6, :cond_6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/app/Fragment;

    iget v0, v1, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_3d

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getNextTransition()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_3d

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p1, v1}, Landroidj/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_14

    :cond_41
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    goto :goto_13
.end method

.method private burpActive()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method

.method private cleanupExec()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private completeExecute(Landroidj/support/v4/app/BackStackRecord;ZZZ)V
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2, v3, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz p3, :cond_21

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/app/FragmentTransition;->startTransitions(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_21
    if-eqz p4, :cond_28

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v3

    :goto_33
    if-ge v1, v2, :cond_71

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_66

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_66

    iget-boolean v4, v0, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_66

    iget v4, v0, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v4}, Landroidj/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v4

    if-eqz v4, :cond_66

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_62

    iget v4, v0, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_62

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v5, v0, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_62
    if-eqz p4, :cond_6a

    iput v6, v0, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    :cond_66
    :goto_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    :cond_6a
    const/high16 v4, -0x40800000  # -1.0f

    iput v4, v0, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    iput-boolean v3, v0, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_66

    :cond_71
    return-void
.end method

.method private endAnimatingAwayFragments()V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_3b

    move v6, v3

    :goto_6
    move v7, v3

    :goto_7
    if-ge v7, v6, :cond_43

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/app/Fragment;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidj/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_31
    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    :cond_37
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    :cond_3b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v6, v0

    goto :goto_6

    :cond_43
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-nez p1, :cond_2a

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_2a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_3c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_41
    invoke-direct {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_47

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void

    :catchall_47
    move-exception v0

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    const/4 v2, 0x1

    :goto_1
    if-ge p2, p3, :cond_2d

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_24

    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroidj/support/v4/app/BackStackRecord;->executePopOps(Z)V

    :goto_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_24
    const/4 v1, 0x0

    goto :goto_1e

    :cond_26
    invoke-virtual {v0, v2}, Landroidj/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_21

    :cond_2d
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v8, v0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_47

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    :goto_15
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    move v2, p3

    move v7, v5

    :goto_22
    if-ge v2, p4, :cond_55

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/BackStackRecord;->expandReplaceOps(Ljava/util/ArrayList;)V

    :goto_3b
    if-nez v7, :cond_41

    iget-boolean v0, v0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_53

    :cond_41
    move v0, v6

    :goto_42
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v7, v0

    goto :goto_22

    :cond_47
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_15

    :cond_4d
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    goto :goto_3b

    :cond_53
    move v0, v5

    goto :goto_42

    :cond_55
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v8, :cond_64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/app/FragmentTransition;->startTransitions(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_64
    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v8, :cond_b8

    new-instance v5, Landroidj/support/v4/util/ArraySet;

    invoke-direct {v5}, Landroidj/support/v4/util/ArraySet;-><init>()V

    invoke-direct {p0, v5}, Landroidj/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroidj/support/v4/util/ArraySet;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidj/support/v4/util/ArraySet;)I

    move-result v4

    invoke-direct {p0, v5}, Landroidj/support/v4/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidj/support/v4/util/ArraySet;)V

    :goto_7d
    if-eq v4, p3, :cond_8e

    if-eqz v8, :cond_8e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/app/FragmentTransition;->startTransitions(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v6}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_8e
    :goto_8e
    if-ge p3, p4, :cond_b2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_af

    iget v0, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_af

    iget v0, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v0, -0x1

    iput v0, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    :cond_af
    add-int/lit8 p3, p3, 0x1

    goto :goto_8e

    :cond_b2
    if-eqz v7, :cond_b7

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    :cond_b7
    return-void

    :cond_b8
    move v4, p4

    goto :goto_7d
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v0, :cond_3a

    move v0, v2

    :goto_7
    move v4, v2

    move v3, v0

    :goto_9
    if-ge v4, v3, :cond_8a

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    if-eqz p1, :cond_41

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidj/support/v4/app/BackStackRecord;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_41

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    move v0, v3

    move v1, v4

    :goto_36
    add-int/lit8 v4, v1, 0x1

    move v3, v0

    goto :goto_9

    :cond_3a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_7

    :cond_41
    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v1

    if-nez v1, :cond_57

    if-eqz p1, :cond_8b

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidj/support/v4/app/BackStackRecord;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, p1, v2, v5}, Landroidj/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_57
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    if-eqz p1, :cond_84

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v1

    if-nez v1, :cond_84

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidj/support/v4/app/BackStackRecord;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_84

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    move v1, v4

    move v0, v3

    goto :goto_36

    :cond_84
    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    move v0, v3

    move v1, v4

    goto :goto_36

    :cond_8a
    return-void

    :cond_8b
    move v0, v3

    move v1, v4

    goto :goto_36
.end method

.method private findFragmentUnder(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/Fragment;
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_9

    if-nez v0, :cond_b

    :cond_9
    move-object v0, v1

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14
    if-ltz v2, :cond_2a

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v4, v3, :cond_26

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v4, :cond_a

    :cond_26
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_2a
    move-object v0, v1

    goto :goto_a
.end method

.method private forcePostponedTransactions()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    :goto_4
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    monitor-exit p0

    move v0, v1

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_18
    if-ge v2, v3, :cond_29

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    :cond_29
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    if-lez v3, :cond_41

    const/4 v0, 0x1

    goto :goto_10

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    move v0, v1

    goto :goto_10
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroidj/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000  # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Landroidj/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroidj/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private makeRemovedFragmentsInvisible(Landroidj/support/v4/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArraySet",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidj/support/v4/util/ArraySet;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_33

    invoke-virtual {p1, v1}, Landroidj/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    iget-boolean v3, v0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_24

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_28

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_28
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_24

    :cond_33
    return-void
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_8

    move v1, v2

    :cond_7
    :goto_7
    return v1

    :cond_8
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_23

    move v1, v2

    goto :goto_7

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_16

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-direct {p0, p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_27
    if-ge v2, v4, :cond_6b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v0, v0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v0, :cond_71

    if-eq v3, v2, :cond_38

    invoke-direct {p0, p1, p2, v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_38
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_61

    :goto_46
    if-ge v1, v4, :cond_61

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v0, v0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v0, :cond_61

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_61
    move v0, v1

    invoke-direct {p0, p1, p2, v2, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v0, -0x1

    :goto_67
    add-int/lit8 v2, v1, 0x1

    move v3, v0

    goto :goto_27

    :cond_6b
    if-eq v3, v4, :cond_9

    invoke-direct {p0, p1, p2, v3, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_9

    :cond_71
    move v1, v2

    move v0, v3

    goto :goto_67
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 11

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    invoke-direct {p0, v6}, Landroidj/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-boolean v6, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_17
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    :cond_21
    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->burpActive()V

    return v0

    :catchall_28
    move-exception v0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidj/support/v4/util/ArraySet;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidj/support/v4/util/ArraySet",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    add-int/lit8 v0, p4, -0x1

    move v4, v0

    move v2, p4

    :goto_5
    if-lt v4, p3, :cond_60

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_58

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, p1, v1, p4}, Landroidj/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_58

    const/4 v1, 0x1

    :goto_26
    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v1, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    :cond_33
    new-instance v1, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v1, v0, v5}, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidj/support/v4/app/BackStackRecord;Z)V

    iget-object v6, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/BackStackRecord;->setOnStartPostponedListener(Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v5, :cond_5a

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->executeOps()V

    :goto_45
    add-int/lit8 v1, v2, -0x1

    if-eq v4, v1, :cond_4f

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4f
    invoke-direct {p0, p5}, Landroidj/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroidj/support/v4/util/ArraySet;)V

    move v0, v1

    :goto_53
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v2, v0

    goto :goto_5

    :cond_58
    move v1, v3

    goto :goto_26

    :cond_5a
    invoke-virtual {v0, v3}, Landroidj/support/v4/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_45

    :cond_5e
    move v0, v2

    goto :goto_53

    :cond_60
    return v2
.end method

.method public static reverseTransit(I)I
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_e

    :goto_4
    return v0

    :sswitch_5
    const/16 v0, 0x2002

    goto :goto_4

    :sswitch_8
    const/16 v0, 0x1001

    goto :goto_4

    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private scheduleCommit()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    move v2, v0

    :goto_10
    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3a

    :goto_1c
    if-nez v2, :cond_20

    if-eqz v0, :cond_36

    :cond_20
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_36
    monitor-exit p0

    return-void

    :cond_38
    move v2, v1

    goto :goto_10

    :cond_3a
    move v0, v1

    goto :goto_1c

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-static {p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_c
    sget-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_20

    const-class v0, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_20
    sget-object v0, Landroidj/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_28} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_28} :catch_3f

    :goto_28
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    new-instance v1, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v1, p1, p2, v0}, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_5

    :catch_35
    move-exception v0

    const-string v2, "FragmentManager"

    const-string v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_28

    :catch_3f
    move-exception v0

    const-string v2, "FragmentManager"

    const-string v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_28
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Landroidj/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroidj/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 7

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroidj/support/v4/util/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v1, v2}, Landroidj/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v1, :cond_35

    :try_start_20
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidj/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    :goto_2b
    throw p1

    :catch_2c
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :cond_35
    :try_start_35
    const-string v1, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_2b

    :catch_3f
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_18

    :goto_4
    return v0

    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    goto :goto_4

    :cond_f
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_4

    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroidj/support/v4/app/BackStackRecord;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragment(Landroidj/support/v4/app/Fragment;Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    :cond_d
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->makeActive(Landroidj/support/v4/app/Fragment;)V

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_54
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_74

    iput-boolean v4, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_64

    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_64
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6e

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6e

    iput-boolean v4, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_6e
    if-eqz p2, :cond_73

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;)V

    :cond_73
    return-void

    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public addOnBackStackChangedListener(Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocBackStackIndex(Landroidj/support/v4/app/BackStackRecord;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4b

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentManager"

    const-string v3, "Setting back stack index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_4a
    return v0

    :cond_4b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentManager"

    const-string v3, "Adding back stack index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_4a

    :catchall_8c
    move-exception v0

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public attachController(Landroidj/support/v4/app/FragmentHostCallback;Landroidj/support/v4/app/FragmentContainer;Landroidj/support/v4/app/Fragment;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    iput-object p3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    return-void
.end method

.method public attachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_85

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_85

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    :cond_33
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_70

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_73
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_86

    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_85

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_85

    iput-boolean v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_85
    return-void

    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public beginTransaction()Landroidj/support/v4/app/FragmentTransaction;
    .registers 2

    new-instance v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/BackStackRecord;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransition()I

    move-result v3

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_5b

    move v0, v1

    :goto_f
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v3, v0, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroidj/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v3, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v3, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_2b
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_5d

    const/16 v0, 0x8

    :goto_37
    iget-object v3, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1, v2}, Landroidj/support/v4/app/Fragment;->setHideReplaced(Z)V

    :cond_45
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_53

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_53
    iput-boolean v2, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->onHiddenChanged(Z)V

    return-void

    :cond_5b
    move v0, v2

    goto :goto_f

    :cond_5d
    move v0, v2

    goto :goto_37
.end method

.method public detachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_5d

    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_47

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5e

    :cond_50
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_5a

    iput-boolean v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_5a
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public dispatchActivityCreated()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_1f
    return v2

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public dispatchCreate()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_31

    move-object v1, v0

    move v2, v3

    move v4, v3

    :goto_9
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_33

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    if-nez v1, :cond_29

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move-object v0, v1

    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_9

    :cond_31
    move-object v1, v0

    move v2, v3

    :cond_33
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_55

    :goto_37
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_55

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v1, :cond_4f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    :cond_4f
    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_55
    iput-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v2
.end method

.method public dispatchDestroy()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    invoke-virtual {p0, v1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    return-void
.end method

.method public dispatchDestroyView()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchLowMemory()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->performLowMemory()V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_1d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e
.end method

.method dispatchOnFragmentActivityCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p3, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p3, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p3, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentDestroyed(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentDetached(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentPaused(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentPreAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p3, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentResumed(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p3, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentStarted(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentStopped(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentViewCreated(Landroidj/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidj/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p4, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1f
.end method

.method dispatchOnFragmentViewDestroyed(Landroidj/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidj/support/v4/app/Fragment;Z)V

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    if-eqz p2, :cond_37

    iget-object v1, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_37
    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidj/support/v4/app/FragmentManager;Landroidj/support/v4/app/Fragment;)V

    goto :goto_1f
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_1f
    return v2

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public dispatchPause()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_1d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    move v1, v0

    move v2, v0

    :goto_7
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_25

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_20
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_7

    :cond_24
    move v1, v0

    :cond_25
    return v1

    :cond_26
    move v0, v1

    goto :goto_20
.end method

.method public dispatchReallyStop()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchResume()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchStart()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method public dispatchStop()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void
.end method

.method doPendingDeferredStart()V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_2f

    move v1, v2

    move v3, v2

    :goto_7
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_24

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_24

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v3, v0

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_28
    if-nez v3, :cond_2f

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_2f
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_39
    if-ge v2, v4, :cond_5f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v3, p2, p3, p4}, Landroidj/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    :cond_5f
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_99

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_99

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_74
    if-ge v2, v4, :cond_99

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    :cond_99
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_ae
    if-ge v2, v4, :cond_d3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ae

    :cond_d3
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_110

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_110

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_e8
    if-ge v2, v4, :cond_110

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, p3, p4}, Landroidj/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e8

    :cond_110
    monitor-enter p0

    :try_start_111
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_147

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_147

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_126
    if-ge v2, v3, :cond_147

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_126

    :cond_147
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_168

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_168

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_111 .. :try_end_169} :catchall_19e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17d
    if-ge v1, v2, :cond_1a1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17d

    :catchall_19e
    move-exception v0

    :try_start_19f
    monitor-exit p0
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v0

    :cond_1a1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1d4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1d4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_206

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_206
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_217

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_217
    return-void
.end method

.method public enqueueAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5

    if-nez p2, :cond_5

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1d

    :cond_e
    if-eqz p2, :cond_12

    monitor-exit p0

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_1a

    goto :goto_11
.end method

.method public execPendingActions()Z
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_11
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    move v0, v1

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    :cond_22
    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->burpActive()V

    return v0
.end method

.method public execSingleAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_1b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2c

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    :cond_25
    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->burpActive()V

    goto :goto_a

    :catchall_2c
    move-exception v0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method public executePendingTransactions()Z
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Landroidj/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_22

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1e

    iget v2, v0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1e

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_22
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2f
    if-ltz v1, :cond_43

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_3f

    iget v2, v0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1d

    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2f

    :cond_43
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_28

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_24

    iget-object v2, v0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    :cond_28
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_37
    if-ltz v1, :cond_4f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_4b

    iget-object v2, v0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_4b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_37

    :cond_4f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_26

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    :goto_21
    return-object v0

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public freeBackStackIndex(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_12
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentManager"

    const-string v2, "Freeing back stack index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method getActiveFragmentCount()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_5
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public getBackStackEntryAt(I)Landroidj/support/v4/app/FragmentManager$BackStackEntry;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
    .registers 8

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_8
.end method

.method public getFragments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_6

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method

.method getLayoutInflaterFactory()Landroidj/support/v4/view/LayoutInflaterFactory;
    .registers 1

    return-object p0
.end method

.method public hideFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 6

    const/4 v0, 0x1

    sget-boolean v1, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_29

    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_2a

    :goto_27
    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method loadAnimation(Landroidj/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 11

    const v5, 0x3f79999a  # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroidj/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_28
    if-nez p2, :cond_2c

    move-object v0, v1

    goto :goto_11

    :cond_2c
    invoke-static {p2, p3}, Landroidj/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v0

    if-gez v0, :cond_34

    move-object v0, v1

    goto :goto_11

    :cond_34
    packed-switch v0, :pswitch_data_96

    if-nez p4, :cond_47

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    :cond_47
    if-nez p4, :cond_92

    move-object v0, v1

    goto :goto_11

    :pswitch_4b  #0x1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000  # 1.125f

    invoke-static {v0, v1, v3, v4, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :pswitch_58  #0x2
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v5, v3, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :pswitch_63  #0x3
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3, v4, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :pswitch_6e  #0x4
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a  # 1.075f

    invoke-static {v0, v3, v1, v3, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :pswitch_7c  #0x5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :pswitch_87  #0x6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11

    :cond_92
    move-object v0, v1

    goto/16 :goto_11

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_58  #00000002
        :pswitch_63  #00000003
        :pswitch_6e  #00000004
        :pswitch_7c  #00000005
        :pswitch_87  #00000006
    .end packed-switch
.end method

.method makeActive(Landroidj/support/v4/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidj/support/v4/app/Fragment;->setIndex(ILandroidj/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    :cond_1b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method makeInactive(Landroidj/support/v4/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidj/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->initState()V

    goto :goto_4
.end method

.method moveFragmentToExpectedState(Landroidj/support/v4/app/Fragment;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_16
    :goto_16
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_74

    invoke-direct {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->findFragmentUnder(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ge v2, v0, :cond_45

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_45
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_74

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_74

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_81

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    :goto_58
    iput v6, p1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    iput-boolean v5, p1, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, p1, v0, v7, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroidj/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_74
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_5

    :cond_7c
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_16

    :cond_81
    iget v0, p1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_58

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v1, p1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_58
.end method

.method moveToState(IZ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p2, :cond_16

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iput p1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_28
    if-ge v3, v4, :cond_45

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidj/support/v4/app/Fragment;)V

    iget-object v5, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_92

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v0, v1

    :goto_40
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_28

    :cond_44
    move v1, v2

    :cond_45
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    :goto_4c
    if-ge v3, v4, :cond_76

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_90

    iget-boolean v5, v0, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_60

    iget-boolean v5, v0, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_90

    :cond_60
    iget-boolean v5, v0, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-nez v5, :cond_90

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidj/support/v4/app/Fragment;)V

    iget-object v5, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_90

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v0, v1

    :goto_72
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4c

    :cond_76
    if-nez v1, :cond_7b

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_7b
    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_15

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_15

    :cond_90
    move v0, v1

    goto :goto_72

    :cond_92
    move v0, v1

    goto :goto_40
.end method

.method moveToState(Landroidj/support/v4/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    return-void
.end method

.method moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V
    .registers 16

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_10

    :cond_d
    if-le p2, v5, :cond_10

    move p2, v5

    :cond_10
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_23

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_23

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-nez v0, :cond_3b

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_3b

    move p2, v5

    :cond_23
    :goto_23
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_2e

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v0, v9, :cond_2e

    if-le p2, v6, :cond_2e

    move p2, v6

    :cond_2e
    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_32d

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_3e

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget p2, p1, Landroidj/support/v4/app/Fragment;->mState:I

    goto :goto_23

    :cond_3e
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p1, v7}, Landroidj/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    :cond_51
    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_492

    :cond_56
    :goto_56
    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-eq v0, p2, :cond_3a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not updated inline; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidj/support/v4/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p1, Landroidj/support/v4/app/Fragment;->mState:I

    goto :goto_3a

    :pswitch_91  #0x0
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_ad

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_f5

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    :cond_e2
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_f5

    iput-boolean v5, p1, Landroidj/support/v4/app/Fragment;->mDeferStart:Z

    if-le p2, v6, :cond_f5

    move p2, v6

    :cond_f5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_13e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    :goto_105
    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_145

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13e
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroidj/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_105

    :cond_145
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    if-nez v0, :cond_2f9

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroidj/support/v4/app/Fragment;)V

    :goto_14e
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidj/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_300

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :goto_165
    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_1a5

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroidj/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_313

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_309

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v3}, Landroidj/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    :goto_18c
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_197

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_197
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidj/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidj/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_1a5
    :goto_1a5
    :pswitch_1a5  #0x1
    if-le p2, v5, :cond_2a6

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c3
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_291

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_48e

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_1f1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    iget v1, p1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_240

    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mRestored:Z

    if-nez v1, :cond_240

    :try_start_201
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_20a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_201 .. :try_end_20a} :catch_317

    move-result-object v1

    :goto_20b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No view found for id 0x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") for fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_240
    :goto_240
    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidj/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroidj/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_329

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_31c

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v3}, Landroidj/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    :goto_263
    if-eqz v0, :cond_26a

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_26a
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_275

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_275
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidj/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidj/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_326

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_326

    :goto_28f
    iput-boolean v5, p1, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    :cond_291
    :goto_291
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2a4

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_2a4
    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2a6
    :pswitch_2a6  #0x2
    const/4 v0, 0x2

    if-le p2, v0, :cond_2ab

    iput v6, p1, Landroidj/support/v4/app/Fragment;->mState:I

    :cond_2ab
    :pswitch_2ab  #0x3
    if-le p2, v6, :cond_2cf

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c9

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c9
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performStart()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidj/support/v4/app/Fragment;Z)V

    :cond_2cf
    :pswitch_2cf  #0x4
    if-le p2, v9, :cond_56

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2ed

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ed
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performResume()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidj/support/v4/app/Fragment;Z)V

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_56

    :cond_2f9
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->onAttachFragment(Landroidj/support/v4/app/Fragment;)V

    goto/16 :goto_14e

    :cond_300
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iput v5, p1, Landroidj/support/v4/app/Fragment;->mState:I

    goto/16 :goto_165

    :cond_309
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_18c

    :cond_313
    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_1a5

    :catch_317
    move-exception v1

    const-string v1, "unknown"

    goto/16 :goto_20b

    :cond_31c
    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidj/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_263

    :cond_326
    move v5, v3

    goto/16 :goto_28f

    :cond_329
    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_291

    :cond_32d
    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_56

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4a0

    goto/16 :goto_56

    :cond_338
    :goto_338
    :pswitch_338  #0x1
    if-ge p2, v5, :cond_56

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_34e

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34e

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v7}, Landroidj/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_34e
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44a

    invoke-virtual {p1, p2}, Landroidj/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    move p2, v5

    goto/16 :goto_56

    :pswitch_35a  #0x5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_37f

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_379

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_379
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performPause()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidj/support/v4/app/Fragment;Z)V

    :cond_37f
    :pswitch_37f  #0x4
    if-ge p2, v9, :cond_3a3

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_39d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39d
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performStop()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidj/support/v4/app/Fragment;Z)V

    :cond_3a3
    :pswitch_3a3  #0x3
    if-ge p2, v6, :cond_3c4

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3c1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c1
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performReallyStop()V

    :cond_3c4
    :pswitch_3c4  #0x2
    const/4 v0, 0x2

    if-ge p2, v0, :cond_338

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3e3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e3
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3f6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidj/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_3f6

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroidj/support/v4/app/Fragment;)V

    :cond_3f6
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performDestroyView()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidj/support/v4/app/Fragment;Z)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_442

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_442

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_48c

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_48c

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48c

    iget v0, p1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_48c

    invoke-virtual {p0, p1, p3, v3, p4}, Landroidj/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroidj/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_41f
    const/4 v1, 0x0

    iput v1, p1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    if-eqz v0, :cond_43b

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidj/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroidj/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    new-instance v1, Landroidj/support/v4/app/FragmentManagerImpl$2;

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl$2;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroidj/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_43b
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_442
    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_338

    :cond_44a
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_466

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_466
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_481

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performDestroy()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidj/support/v4/app/Fragment;Z)V

    :goto_470
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->performDetach()V

    invoke-virtual {p0, p1, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidj/support/v4/app/Fragment;Z)V

    if-nez p5, :cond_56

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_484

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->makeInactive(Landroidj/support/v4/app/Fragment;)V

    goto/16 :goto_56

    :cond_481
    iput v3, p1, Landroidj/support/v4/app/Fragment;->mState:I

    goto :goto_470

    :cond_484
    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    iput-object v7, p1, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_56

    :cond_48c
    move-object v0, v7

    goto :goto_41f

    :cond_48e
    move-object v0, v7

    goto/16 :goto_240

    nop

    :pswitch_data_492
    .packed-switch 0x0
        :pswitch_91  #00000000
        :pswitch_1a5  #00000001
        :pswitch_2a6  #00000002
        :pswitch_2ab  #00000003
        :pswitch_2cf  #00000004
    .end packed-switch

    :pswitch_data_4a0
    .packed-switch 0x1
        :pswitch_338  #00000001
        :pswitch_3c4  #00000002
        :pswitch_3a3  #00000003
        :pswitch_37f  #00000004
        :pswitch_35a  #00000005
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v1, :cond_1c

    move v1, v0

    :goto_8
    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_23

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->noteStateNotSaved()V

    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_1c
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_8

    :cond_23
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v4

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v0, :cond_192

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_21
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroidj/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    move-object v0, v4

    goto :goto_d

    :cond_3b
    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :goto_41
    if-ne v1, v5, :cond_6a

    if-ne v7, v5, :cond_6a

    if-nez v8, :cond_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    move v1, v3

    goto :goto_41

    :cond_6a
    if-eq v7, v5, :cond_10d

    invoke-virtual {p0, v7}, Landroidj/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    :goto_70
    if-nez v0, :cond_78

    if-eqz v8, :cond_78

    invoke-virtual {p0, v8}, Landroidj/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    :cond_78
    if-nez v0, :cond_80

    if-eq v1, v5, :cond_80

    invoke-virtual {p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    :cond_80
    sget-boolean v4, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_b4

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    if-nez v0, :cond_112

    invoke-static {p3, v6}, Landroidj/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v2, v4, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v7, :cond_110

    move v0, v7

    :goto_bf
    iput v0, v4, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    iput v1, v4, Landroidj/support/v4/app/Fragment;->mContainerId:I

    iput-object v8, v4, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v2, v4, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    iput-object p0, v4, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object v0, v4, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroidj/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->addFragment(Landroidj/support/v4/app/Fragment;Z)V

    move-object v1, v4

    :goto_dc
    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v2, :cond_175

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_175

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    :goto_ea
    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_17a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    move-object v0, v4

    goto/16 :goto_70

    :cond_110
    move v0, v1

    goto :goto_bf

    :cond_112
    iget-boolean v4, v0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v4, :cond_15d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15d
    iput-boolean v2, v0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput-object v1, v0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-boolean v1, v0, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_172

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p4, v4}, Landroidj/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_172
    move-object v1, v0

    goto/16 :goto_dc

    :cond_175
    invoke-virtual {p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;)V

    goto/16 :goto_ea

    :cond_17a
    if-eqz v7, :cond_181

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    :cond_181
    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18e

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_18e
    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_d

    :cond_192
    move-object v6, v0

    goto/16 :goto_21
.end method

.method public performPendingDeferredStart(Landroidj/support/v4/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mDeferStart:Z

    iget v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    goto :goto_c
.end method

.method public popBackStack()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .registers 6

    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidj/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    if-gez p1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    if-nez p3, :cond_2e

    if-gez p4, :cond_2e

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1c

    move v0, v1

    goto :goto_7

    :cond_1c
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move v0, v2

    goto :goto_7

    :cond_2e
    const/4 v0, -0x1

    if-nez p3, :cond_33

    if-ltz p4, :cond_84

    :cond_33
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_3b
    if-ltz v3, :cond_51

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    if-eqz p3, :cond_55

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_51
    if-gez v3, :cond_5e

    move v0, v1

    goto :goto_7

    :cond_55
    if-ltz p4, :cond_5b

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p4, v0, :cond_51

    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    :cond_5e
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_83

    add-int/lit8 v3, v3, -0x1

    :goto_64
    if-ltz v3, :cond_83

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    if-eqz p3, :cond_7a

    invoke-virtual {v0}, Landroidj/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    :cond_7a
    if-ltz p4, :cond_83

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p4, v0, :cond_83

    :cond_80
    add-int/lit8 v3, v3, -0x1

    goto :goto_64

    :cond_83
    move v0, v3

    :cond_84
    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_91

    move v0, v1

    goto/16 :goto_7

    :cond_91
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_99
    if-le v1, v0, :cond_2c

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_99
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidj/support/v4/app/Fragment;)V
    .registers 7

    iget v0, p3, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_25
    iget v0, p3, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidj/support/v4/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidj/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_31
    iget-boolean v3, p1, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_37

    if-eqz v0, :cond_52

    :cond_37
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3e
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_55

    :cond_44
    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4e

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_4e
    iput-boolean v2, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    iput-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    :cond_52
    return-void

    :cond_53
    move v0, v2

    goto :goto_31

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public removeOnBackStackChangedListener(Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0}, Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidj/support/v4/app/FragmentManagerNonConfig;)V
    .registers 14

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    check-cast p1, Landroidj/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_ae

    invoke-virtual {p2}, Landroidj/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Landroidj/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v4

    if-eqz v7, :cond_54

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1c
    move v6, v2

    :goto_1d
    if-ge v6, v1, :cond_26d

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    sget-boolean v3, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_41

    const-string v3, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    move v3, v2

    :goto_42
    iget-object v8, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    array-length v8, v8

    if-ge v3, v8, :cond_56

    iget-object v8, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    aget-object v8, v8, v3

    iget v8, v8, Landroidj/support/v4/app/FragmentState;->mIndex:I

    iget v9, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-eq v8, v9, :cond_56

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_54
    move v1, v2

    goto :goto_1c

    :cond_56
    iget-object v8, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    array-length v8, v8

    if-ne v3, v8, :cond_78

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find active fragment with index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_78
    iget-object v8, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    aget-object v3, v8, v3

    iput-object v0, v3, Landroidj/support/v4/app/FragmentState;->mInstance:Landroidj/support/v4/app/Fragment;

    iput-object v5, v0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput v2, v0, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    iput-boolean v2, v0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    iput-boolean v2, v0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    iput-object v5, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iget-object v8, v3, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v8, :cond_a9

    iget-object v8, v3, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v9, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v3, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v3, v3, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v3, v0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_a9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1d

    :cond_ae
    move-object v1, v5

    :goto_af
    new-instance v0, Landroid/util/SparseArray;

    iget-object v3, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v3, v2

    :goto_ba
    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    array-length v0, v0

    if-ge v3, v0, :cond_10e

    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    aget-object v4, v0, v3

    if-eqz v4, :cond_10a

    if-eqz v1, :cond_26a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_26a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentManagerNonConfig;

    :goto_d3
    iget-object v6, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v7, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v4, v6, v7, v0}, Landroidj/support/v4/app/FragmentState;->instantiate(Landroidj/support/v4/app/FragmentHostCallback;Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/FragmentManagerNonConfig;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    sget-boolean v6, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_101

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    iget-object v6, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v7, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v5, v4, Landroidj/support/v4/app/FragmentState;->mInstance:Landroidj/support/v4/app/Fragment;

    :cond_10a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ba

    :cond_10e
    if-eqz p2, :cond_163

    invoke-virtual {p2}, Landroidj/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_161

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    :goto_11b
    move v4, v2

    :goto_11c
    if-ge v4, v3, :cond_163

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidj/support/v4/app/Fragment;

    iget v0, v1, Landroidj/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v0, :cond_15d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v7, v1, Landroidj/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    iput-object v0, v1, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    if-nez v0, :cond_15d

    const-string v0, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Re-attaching retained fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v1, v1, Landroidj/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_11c

    :cond_161
    move v3, v2

    goto :goto_11b

    :cond_163
    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v0, :cond_1ed

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v1, v2

    :goto_172
    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1ef

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-nez v0, :cond_1a4

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No instantiated fragment for index #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_1a4
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    sget-boolean v3, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1cd

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: added #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cd
    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dd

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1dd
    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1e0
    iget-object v4, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_172

    :catchall_1ea
    move-exception v0

    monitor-exit v3
    :try_end_1ec
    .catchall {:try_start_1e0 .. :try_end_1ec} :catchall_1ea

    throw v0

    :cond_1ed
    iput-object v5, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    :cond_1ef
    iget-object v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mBackStack:[Landroidj/support/v4/app/BackStackState;

    if-eqz v0, :cond_262

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidj/support/v4/app/FragmentManagerState;->mBackStack:[Landroidj/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v0, v2

    :goto_1fe
    iget-object v1, p1, Landroidj/support/v4/app/FragmentManagerState;->mBackStack:[Landroidj/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_264

    iget-object v1, p1, Landroidj/support/v4/app/FragmentManagerState;->mBackStack:[Landroidj/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidj/support/v4/app/BackStackState;->instantiate(Landroidj/support/v4/app/FragmentManagerImpl;)Landroidj/support/v4/app/BackStackRecord;

    move-result-object v1

    sget-boolean v3, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_251

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Landroidj/support/v4/util/LogWriter;

    const-string v5, "FragmentManager"

    invoke-direct {v4, v5}, Landroidj/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "  "

    invoke-virtual {v1, v4, v3, v2}, Landroidj/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_251
    iget-object v3, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_25f

    iget v3, v1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v3, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroidj/support/v4/app/BackStackRecord;)V

    :cond_25f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fe

    :cond_262
    iput-object v5, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_264
    iget v0, p1, Landroidj/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    goto/16 :goto_4

    :cond_26a
    move-object v0, v5

    goto/16 :goto_d3

    :cond_26d
    move-object v1, v4

    goto/16 :goto_af
.end method

.method retainNonConfig()Landroidj/support/v4/app/FragmentManagerNonConfig;
    .registers 11

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_82

    move-object v2, v3

    move-object v1, v3

    move v4, v5

    :goto_a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_84

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_91

    iget-boolean v6, v0, Landroidj/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_52

    if-nez v2, :cond_27

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v0, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    iget-object v6, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    if-eqz v6, :cond_6e

    iget-object v6, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iget v6, v6, Landroidj/support/v4/app/Fragment;->mIndex:I

    :goto_34
    iput v6, v0, Landroidj/support/v4/app/Fragment;->mTargetIndex:I

    sget-boolean v6, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_52

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget-object v6, v0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v6, :cond_8f

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroidj/support/v4/app/FragmentManagerNonConfig;

    move-result-object v6

    if-eqz v6, :cond_8f

    if-nez v1, :cond_70

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_66
    if-ge v1, v4, :cond_71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_6e
    const/4 v6, -0x1

    goto :goto_34

    :cond_70
    move-object v0, v1

    :cond_71
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v6, v7

    :goto_76
    if-eqz v1, :cond_93

    if-nez v6, :cond_93

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_7e
    add-int/lit8 v4, v4, 0x1

    move-object v2, v0

    goto :goto_a

    :cond_82
    move-object v1, v3

    move-object v2, v3

    :cond_84
    if-nez v2, :cond_89

    if-nez v1, :cond_89

    :goto_88
    return-object v3

    :cond_89
    new-instance v3, Landroidj/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v3, v2, v1}, Landroidj/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_88

    :cond_8f
    move v6, v5

    goto :goto_76

    :cond_91
    move-object v0, v2

    goto :goto_7e

    :cond_93
    move-object v0, v2

    goto :goto_7e
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    :cond_12
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    :cond_1e
    :goto_1e
    return-object v3

    :cond_1f
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v7, v6, [Landroidj/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    :goto_29
    if-ge v5, v6, :cond_fa

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1ea

    iget v2, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_60

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_60
    new-instance v2, Landroidj/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroidj/support/v4/app/FragmentState;-><init>(Landroidj/support/v4/app/Fragment;)V

    aput-object v2, v7, v5

    iget v8, v0, Landroidj/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_f5

    iget-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_f5

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidj/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v8, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    if-eqz v8, :cond_c7

    iget-object v8, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iget v8, v8, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-gez v8, :cond_a6

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_a6
    iget-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_b1

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_b1
    iget-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroidj/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidj/support/v4/app/Fragment;)V

    iget v8, v0, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_c7

    iget-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c7
    :goto_c7
    sget-boolean v8, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_ef

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    move v0, v1

    :goto_f0
    add-int/lit8 v5, v5, 0x1

    move v2, v0

    goto/16 :goto_29

    :cond_f5
    iget-object v8, v0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v2, Landroidj/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_c7

    :cond_fa
    if-nez v2, :cond_109

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_109
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_187

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_187

    new-array v1, v5, [I

    move v2, v4

    :goto_118
    if-ge v2, v5, :cond_188

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    iget v0, v0, Landroidj/support/v4/app/Fragment;->mIndex:I

    aput v0, v1, v2

    aget v0, v1, v2

    if-gez v0, :cond_157

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_157
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_183

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_183
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_118

    :cond_187
    move-object v1, v3

    :cond_188
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d8

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d8

    new-array v3, v5, [Landroidj/support/v4/app/BackStackState;

    move v2, v4

    :goto_197
    if-ge v2, v5, :cond_1d8

    new-instance v4, Landroidj/support/v4/app/BackStackState;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-direct {v4, v0}, Landroidj/support/v4/app/BackStackState;-><init>(Landroidj/support/v4/app/BackStackRecord;)V

    aput-object v4, v3, v2

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d4

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_197

    :cond_1d8
    new-instance v0, Landroidj/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroidj/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v7, v0, Landroidj/support/v4/app/FragmentManagerState;->mActive:[Landroidj/support/v4/app/FragmentState;

    iput-object v1, v0, Landroidj/support/v4/app/FragmentManagerState;->mAdded:[I

    iput-object v3, v0, Landroidj/support/v4/app/FragmentManagerState;->mBackStack:[Landroidj/support/v4/app/BackStackState;

    iget v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v1, v0, Landroidj/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    move-object v3, v0

    goto/16 :goto_1e

    :cond_1ea
    move v0, v2

    goto/16 :goto_f0
.end method

.method saveFragmentBasicState(Landroidj/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidj/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :goto_23
    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2a

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroidj/support/v4/app/Fragment;)V

    :cond_2a
    iget-object v1, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3c

    if-nez v0, :cond_35

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_35
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3c
    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_4e

    if-nez v0, :cond_47

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_47
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4e
    return-object v0

    :cond_4f
    move-object v0, v1

    goto :goto_23
.end method

.method public saveFragmentInstanceState(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/Fragment$SavedState;
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-gez v1, :cond_26

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_26
    iget v1, p1, Landroidj/support/v4/app/Fragment;->mState:I

    if-lez v1, :cond_35

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidj/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v0, Landroidj/support/v4/app/Fragment$SavedState;

    invoke-direct {v0, v1}, Landroidj/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_35
    return-object v0
.end method

.method saveFragmentViewState(Landroidj/support/v4/app/Fragment;)V
    .registers 4

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :goto_10
    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_4

    :cond_27
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method public setBackStackIndex(ILandroidj/support/v4/app/BackStackRecord;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_41

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentManager"

    const-string v2, "Setting back stack index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3f
    monitor-exit p0

    return-void

    :cond_41
    :goto_41
    if-ge v0, p1, :cond_7c

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_54

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_54
    sget-boolean v1, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentManager"

    const-string v3, "Adding available back stack index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_7c
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentManager"

    const-string v2, "Adding back stack index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :catchall_a8
    move-exception v0

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method public showFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 6

    const/4 v0, 0x0

    sget-boolean v1, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_2a

    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-nez v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    iput-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_2a
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidj/support/v4/app/Fragment;)V

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mParent:Landroidj/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroidj/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_25
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroidj/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_25
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v2, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_28

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_23
    monitor-exit v2

    goto :goto_4

    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method
