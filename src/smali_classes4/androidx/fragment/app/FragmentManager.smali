.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$PopBackStackState;,
        Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EXTRA_CREATED_FILLIN_INTENT:Ljava/lang/String; = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static USE_STATE_MANAGER:Z = true


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContainer:Landroidx/fragment/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mExitAnimationCancellationSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet",
            "<",
            "Landroidx/core/os/CancellationSignal;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private final mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

.field private mHavePendingDeferredStart:Z

.field private mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field mLaunchedFragments:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidx/fragment/app/FragmentOnAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;

.field private mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher",
            "<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSaved:Z

.field private mStopped:Z

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    iput-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    new-instance v0, Landroidx/fragment/app/FragmentManager$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    iput-object v2, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/FragmentManager$5;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    return-object v0
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget v3, v0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v1, :cond_15

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_15

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_15

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_15

    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private cancelExitAnimation(Landroidx/fragment/app/Fragment;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/os/CancellationSignal;

    invoke-virtual {v1}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method private checkStateLoss()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private collectAllSpecialEffectsController()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2f
    return-object v1
.end method

.method private collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)",
            "Ljava/util/Set",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_5
    if-ge p2, p3, :cond_32

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    invoke-static {v0, p0}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_32
    return-object v1
.end method

.method private completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, p1, v2}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v2, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_5f

    iget-object v2, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_59

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    :goto_2d
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_32
    :goto_32
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    :cond_3f
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void

    :cond_47
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v4, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v5, Landroidx/fragment/app/FragmentManager$7;

    invoke-direct {v5, p0, v2, v3, p1}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2d

    :cond_59
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    :cond_5f
    if-eqz v0, :cond_6d

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_6d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_88

    const/16 v0, 0x8

    :goto_79
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_32

    :cond_88
    move v0, v1

    goto :goto_79
.end method

.method private destroyFragmentView(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_11
    return-void
.end method

.method private dispatchStateChange(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->dispatchStateChange(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_1a

    :catchall_2a
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    throw v0

    :cond_2e
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    return-void
.end method

.method private doPendingDeferredStart()V
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    :cond_a
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    return-void
.end method

.method public static enableNewStateManager(Z)V
    .registers 1

    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    return-void
.end method

.method private endAnimatingAwayFragments()V
    .registers 3

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto :goto_2e

    :cond_41
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_53

    if-nez p1, :cond_32

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    :cond_32
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_44

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_49
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4f

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    return-void

    :catchall_4f
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
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

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_24

    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    :goto_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_24
    const/4 v1, 0x0

    goto :goto_1e

    :cond_26
    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_21

    :cond_2d
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v10, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_4d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    :goto_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    move-object v2, v1

    move v3, p3

    move v9, v6

    :goto_27
    if-ge v3, p4, :cond_5a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_41
    if-nez v9, :cond_47

    iget-boolean v0, v0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_58

    :cond_47
    move v0, v8

    :goto_48
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    move v9, v0

    goto :goto_27

    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_15

    :cond_51
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_41

    :cond_58
    move v0, v6

    goto :goto_48

    :cond_5a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_ab

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, v8, :cond_ab

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_9a

    move v1, p3

    :goto_6a
    if-ge v1, p4, :cond_ab

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_78
    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_78

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_78

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    goto :goto_78

    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    :cond_9a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_ab
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_130

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v3, p3

    :goto_bf
    if-ge v3, p4, :cond_10d

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    if-eqz v4, :cond_eb

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_d2
    if-ltz v2, :cond_109

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_e7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    :cond_e7
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_d2

    :cond_eb
    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f1
    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_f1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_f1

    :cond_109
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_bf

    :cond_10d
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v0, v8}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    invoke-direct {p0, p1, p3, p4}, Landroidx/fragment/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/SpecialEffectsController;->updateOperationDirection(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    goto :goto_11a

    :cond_130
    if-eqz v10, :cond_187

    new-instance v5, Landroidx/collection/ArraySet;

    invoke-direct {v5}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, v5}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v0

    invoke-direct {p0, v5}, Landroidx/fragment/app/FragmentManager;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    move v5, v0

    :goto_147
    if-eq v5, p3, :cond_165

    if-eqz v10, :cond_165

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, v8, :cond_160

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, v8

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_160
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v0, v8}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_165
    :goto_165
    if-ge p3, p4, :cond_189

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_181

    iget v0, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_181

    const/4 v0, -0x1

    iput v0, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    :cond_181
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_165

    :cond_187
    move v5, p4

    goto :goto_147

    :cond_189
    if-eqz v9, :cond_18e

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->reportBackStackChanged()V

    :cond_18e
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v0, :cond_41

    move v0, v2

    :goto_7
    move v4, v0

    move v3, v2

    :goto_9
    if-ge v3, v4, :cond_8b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    if-eqz p1, :cond_46

    iget-boolean v0, v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_46

    iget-object v0, v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v6, :cond_46

    if-eqz p2, :cond_46

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    move v1, v3

    :goto_3d
    add-int/lit8 v3, v0, 0x1

    move v4, v1

    goto :goto_9

    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_7

    :cond_46
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->isReady()Z

    move-result v0

    if-nez v0, :cond_5a

    if-eqz p1, :cond_88

    iget-object v0, v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, p1, v2, v5}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_5a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    if-eqz p1, :cond_85

    iget-boolean v0, v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_85

    iget-object v0, v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v6, :cond_85

    if-eqz p2, :cond_85

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    move v0, v3

    move v1, v4

    goto :goto_3d

    :cond_85
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    :cond_88
    move v0, v3

    move v1, v4

    goto :goto_3d

    :cond_8b
    return-void
.end method

.method public static findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a Fragment set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findFragmentManager(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .registers 4

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that owns View "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3a
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_6e

    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_4b

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    :goto_44
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_10

    :cond_4b
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3a

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not within a subclass of FragmentActivity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    move-object v0, v1

    goto :goto_44
.end method

.method private static findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 4

    const/4 v1, 0x0

    :goto_1
    if-eqz p0, :cond_18

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_16

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_1

    :cond_16
    move-object p0, v1

    goto :goto_1

    :cond_18
    move-object v0, v1

    goto :goto_9
.end method

.method private forcePostponedTransactions()V
    .registers 3

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->forcePostponedExecutePendingOperations()V

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_35

    :goto_20
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_20

    :cond_35
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    monitor-exit v3

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_16
    if-ge v2, v4, :cond_29

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$OpGenerator;

    invoke-interface {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_29
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3

    move v0, v1

    goto :goto_d

    :catchall_3c
    move-exception v0

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    :goto_7
    return-object v0

    :cond_8
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-gtz v0, :cond_e

    move-object v0, v1

    goto :goto_7

    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_25

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_7

    :cond_25
    move-object v0, v1

    goto :goto_7
.end method

.method static getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 3

    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_d

    check-cast v0, Landroidx/fragment/app/Fragment;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static isLoggingEnabled(I)Z
    .registers 2

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    if-nez v0, :cond_c

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_10

    :cond_8
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->checkForMenus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_20

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_24
    return-void
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    invoke-direct {p0, v6}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v6

    :goto_1b
    return v0

    :cond_1c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_36

    iput-boolean v6, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    :try_start_2c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_42

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    :cond_36
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    goto :goto_1b

    :catchall_42
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    throw v0
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    add-int/lit8 v0, p4, -0x1

    move v2, p4

    move v4, v0

    :goto_5
    if-lt v4, p3, :cond_5e

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_58

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, p1, v1, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_58

    const/4 v1, 0x1

    :goto_26
    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v1, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    :cond_33
    new-instance v1, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-direct {v1, v0, v5}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v5, :cond_5a

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    :goto_45
    add-int/lit8 v1, v2, -0x1

    if-eq v4, v1, :cond_4f

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4f
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    move v0, v1

    :goto_53
    add-int/lit8 v1, v4, -0x1

    move v2, v0

    move v4, v1

    goto :goto_5

    :cond_58
    move v1, v3

    goto :goto_26

    :cond_5a
    invoke-virtual {v0, v3}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_45

    :cond_5e
    return v2

    :cond_5f
    move v0, v2

    goto :goto_53
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_65

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_1b
    if-ge v2, v4, :cond_5f

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v0, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_6d

    if-eq v3, v2, :cond_2c

    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    :goto_3a
    if-ge v1, v4, :cond_55

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v0, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_55

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_55
    move v0, v1

    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v0, -0x1

    :goto_5b
    add-int/lit8 v2, v1, 0x1

    move v3, v0

    goto :goto_1b

    :cond_5f
    if-eq v3, v4, :cond_7

    invoke-direct {p0, p1, p2, v3, v4}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_7

    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    move v1, v2

    move v0, v3

    goto :goto_5b
.end method

.method private reportBackStackChanged()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    return-void
.end method

.method static reverseTransit(I)I
    .registers 4

    const/16 v2, 0x2002

    const/16 v1, 0x1003

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_10

    if-eq p0, v1, :cond_e

    if-eq p0, v2, :cond_d

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d

    :cond_10
    move v0, v2

    goto :goto_d
.end method

.method private setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_26

    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_17
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    :cond_26
    return-void
.end method

.method private startPendingDeferredFragments()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    goto :goto_a

    :cond_1a
    return-void
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

    new-instance v1, Landroidx/fragment/app/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v1, v2}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_33

    :try_start_20
    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    :goto_29
    throw p1

    :catch_2a
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_33
    :try_start_33
    const-string v1, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, v3}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_29

    :catch_3d
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    monitor-exit v1

    :goto_13
    return-void

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_2b

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_29

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_29

    :goto_25
    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    goto :goto_13

    :cond_29
    const/4 v0, 0x0

    goto :goto_25

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_3a

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_3a
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    :cond_43
    return-void
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method allocBackStackIndex()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_10e

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_e2

    new-instance v0, Landroidx/fragment/app/FragmentManager$8;

    invoke-direct {v0, p0, p3}, Landroidx/fragment/app/FragmentManager$8;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    :cond_14
    :goto_14
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    :cond_1b
    instance-of v0, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_2b

    move-object v0, p3

    :cond_2b
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    :cond_32
    if-eqz p3, :cond_ee

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, p3}, Landroidx/fragment/app/FragmentManager;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    :goto_3c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->setNonConfig(Landroidx/fragment/app/FragmentManagerViewModel;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v1, :cond_e1

    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v1

    if-eqz p3, :cond_10a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FragmentManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "StartActivityForResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v4, Landroidx/fragment/app/FragmentManager$9;

    invoke-direct {v4, p0}, Landroidx/fragment/app/FragmentManager$9;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    iput-object v2, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "StartIntentSenderForResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    new-instance v4, Landroidx/fragment/app/FragmentManager$10;

    invoke-direct {v4, p0}, Landroidx/fragment/app/FragmentManager$10;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    iput-object v2, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "RequestPermissions"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v3, Landroidx/fragment/app/FragmentManager$11;

    invoke-direct {v3, p0}, Landroidx/fragment/app/FragmentManager$11;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    :cond_e1
    return-void

    :cond_e2
    instance-of v0, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentOnAttachListener;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    goto/16 :goto_14

    :cond_ee
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_100

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto/16 :goto_3c

    :cond_100
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto/16 :goto_3c

    :cond_10a
    const-string v0, ""

    goto/16 :goto_6d

    :cond_10e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method attachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_52

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    :cond_52
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method checkForMenus()Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_24

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    :goto_1e
    if-eqz v0, :cond_22

    const/4 v2, 0x1

    :cond_21
    return v2

    :cond_22
    move v1, v0

    goto :goto_c

    :cond_24
    move v0, v1

    goto :goto_1e
.end method

.method public final clearFragmentResult(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearFragmentResultListener(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    :cond_d
    return-void
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .registers 14

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_71

    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    :goto_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_30

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, v5, :cond_30

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_30
    if-eqz p4, :cond_37

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_37
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_41

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_41

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_41

    iget v2, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-eqz v2, :cond_41

    iget v2, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_6c

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v3, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_6c
    if-eqz p4, :cond_75

    iput v8, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_41

    :cond_71
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_8

    :cond_75
    const/high16 v2, -0x40800000  # -1.0f

    iput v2, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    iput-boolean v4, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_41

    :cond_7c
    return-void
.end method

.method createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    goto :goto_a
.end method

.method detachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_54

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_54

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove from detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_51

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    :cond_51
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    :cond_54
    return-void
.end method

.method dispatchActivityCreated()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchAttach()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ge v0, v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_7

    :cond_28
    move v0, v1

    goto :goto_7
.end method

.method dispatchCreate()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ge v0, v4, :cond_7

    :goto_6
    return v3

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move v2, v3

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v1, :cond_35

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_14

    :cond_3a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_5c

    :goto_3e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5c

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_56

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    :cond_56
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5c
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    move v3, v2

    goto :goto_6
.end method

.method dispatchDestroy()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_30
    return-void
.end method

.method dispatchDestroyView()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchLowMemory()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method dispatchMultiWindowModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentOnAttachListener;

    invoke-interface {v0, p0, p1}, Landroidx/fragment/app/FragmentOnAttachListener;->onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ge v0, v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_7

    :cond_28
    move v0, v1

    goto :goto_7
.end method

.method dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_10
.end method

.method dispatchPause()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchPictureInPictureModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ge v1, v2, :cond_7

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v2

    goto :goto_12

    :cond_28
    move v0, v1

    goto :goto_6
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method dispatchResume()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchStart()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchStop()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method dispatchViewCreated()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentStore;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2a
    if-ge v2, v4, :cond_4f

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    :cond_4f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_62
    if-ge v2, v4, :cond_8a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_62

    :cond_8a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Back Stack Index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_aa
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_db

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ba
    if-ge v1, v3, :cond_db

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$OpGenerator;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ba

    :cond_db
    monitor-exit v2
    :try_end_dc
    .catchall {:try_start_aa .. :try_end_dc} :catchall_14c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mStopped="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_14b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_14b
    return-void

    :catchall_14c
    move-exception v0

    :try_start_14d
    monitor-exit v2
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v0
.end method

.method enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 6

    if-nez p2, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    :cond_1d
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_20
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_33

    if-eqz p2, :cond_28

    monitor-exit v1

    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Activity has been destroyed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    goto :goto_27
.end method

.method execPendingActions(Z)Z
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/FragmentManager;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    :try_start_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    move v0, v1

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    throw v0

    :cond_22
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    return v0
.end method

.method execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    :try_start_1b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_31

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    :cond_25
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    goto :goto_a

    :catchall_31
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    throw v0
.end method

.method public executePendingTransactions()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    move-result v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    return v0
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getActiveFragmentCount()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getContainer()Landroidx/fragment/app/FragmentContainer;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": unique id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_7
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    goto :goto_4

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    goto :goto_4
.end method

.method getFragmentStore()Landroidx/fragment/app/FragmentStore;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getHost()Landroidx/fragment/app/FragmentHostCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    return-object v0
.end method

.method getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    return-object v0
.end method

.method getParent()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object v0

    goto :goto_4

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    goto :goto_4
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method handleOnBackPressed()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_f
.end method

.method hideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    :cond_2d
    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    return v0
.end method

.method isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v0

    goto :goto_3
.end method

.method isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_18
    const/4 v0, 0x0

    goto :goto_3
.end method

.method isStateAtLeast(I)Z
    .registers 3

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStateSaved()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_16

    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_15
.end method

.method launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1f

    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p2, :cond_19

    if-eqz p4, :cond_19

    const-string v0, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1e
.end method

.method launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v1, :cond_90

    if-eqz p8, :cond_49

    if-nez p4, :cond_13

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v2, 0x1

    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityOptions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " were added to fillInIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    move-object/from16 v0, p8

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_49
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {v1, p4}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0, p5}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v2, v3, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "is launching an IntentSender for result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_8f
    return-void

    :cond_90
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_8f
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "since it is not added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_74

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_74

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_74

    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_57

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_57
    iput v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v1, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_7c

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_74
    :goto_74
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_3a

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_3a

    :cond_7c
    iget-object v1, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_74
.end method

.method moveToState(IZ)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    :cond_8
    if-nez p2, :cond_17

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ne p1, v0, :cond_17

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->moveToExpectedState()V

    :cond_22
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_e

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_e

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    goto :goto_e

    :cond_38
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    goto :goto_42

    :cond_52
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v4, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v4, :cond_73

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_73
    iget-boolean v4, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_86

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_86

    const/4 v1, 0x1

    :goto_7e
    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    goto :goto_5c

    :cond_86
    move v1, v2

    goto :goto_7e
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .registers 3

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;I)V
    .registers 12

    const/4 v8, 0x5

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    :cond_1b
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_2b

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v1, v7, :cond_2b

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_2b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->computeExpectedState()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-gt v1, v2, :cond_b0

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v2, :cond_46

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    :cond_46
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v6, :cond_8b

    if-eqz v1, :cond_90

    if-eq v1, v3, :cond_95

    if-eq v1, v7, :cond_9f

    if-eq v1, v5, :cond_a4

    if-eq v1, v8, :cond_a9

    move v0, v2

    :goto_55
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v0, :cond_8a

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    iput v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    :cond_8a
    return-void

    :cond_8b
    if-le v2, v6, :cond_90

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->attach()V

    :cond_90
    if-lez v2, :cond_95

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    :cond_95
    if-le v2, v6, :cond_9a

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    :cond_9a
    if-le v2, v3, :cond_9f

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->createView()V

    :cond_9f
    if-le v2, v7, :cond_a4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    :cond_a4
    if-le v2, v5, :cond_a9

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    :cond_a9
    if-le v2, v8, :cond_1a5

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    move v0, v2

    goto :goto_55

    :cond_b0
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v1, v2, :cond_1a5

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eqz v1, :cond_1a3

    if-eq v1, v3, :cond_18d

    if-eq v1, v7, :cond_102

    if-eq v1, v5, :cond_d0

    if-eq v1, v8, :cond_cb

    const/4 v4, 0x7

    if-eq v1, v4, :cond_c5

    move v0, v2

    goto :goto_55

    :cond_c5
    const/4 v1, 0x7

    if-ge v2, v1, :cond_cb

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    :cond_cb
    if-ge v2, v8, :cond_d0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    :cond_d0
    if-ge v2, v5, :cond_102

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_102

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_102

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_102

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    :cond_102
    if-ge v2, v7, :cond_18d

    const/4 v1, 0x0

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_182

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_182

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v4

    if-nez v4, :cond_182

    iget v4, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-le v4, v6, :cond_141

    iget-boolean v4, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-nez v4, :cond_141

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_141

    iget v4, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_141

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v1

    :cond_141
    const/4 v4, 0x0

    iput v4, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_14f

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    invoke-static {p1, v1, v6}, Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_14f
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_17e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing view "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for fragment "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from container "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17e
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v4, v1, :cond_8a

    :cond_182
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18d

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->destroyFragmentView()V

    :cond_18d
    if-ge v2, v3, :cond_1a3

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a0

    move v1, v3

    :goto_198
    if-gez v1, :cond_19d

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->detach()V

    :cond_19d
    move v0, v1

    goto/16 :goto_55

    :cond_1a0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->destroy()V

    :cond_1a3
    move v1, v2

    goto :goto_198

    :cond_1a5
    move v0, v2

    goto/16 :goto_55
.end method

.method noteStateNotSaved()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_19
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_f

    :cond_1b
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto :goto_f
.end method

.method public popBackStack()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .registers 5

    if-ltz p1, :cond_d

    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

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
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    if-nez p3, :cond_2c

    if-gez p4, :cond_2c

    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1a

    move v0, v2

    goto :goto_7

    :cond_1a
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    move v0, v3

    goto :goto_7

    :cond_2c
    if-nez p3, :cond_30

    if-ltz p4, :cond_52

    :cond_30
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_38
    if-ltz v1, :cond_4e

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    if-eqz p3, :cond_5f

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_4e
    if-gez v1, :cond_68

    move v0, v2

    goto :goto_7

    :cond_52
    const/4 v0, -0x1

    :goto_53
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_8c

    move v0, v2

    goto :goto_7

    :cond_5f
    if-ltz p4, :cond_65

    iget v0, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-eq p4, v0, :cond_4e

    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_68
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_8a

    :cond_6c
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    if-eqz p3, :cond_84

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    :cond_84
    if-ltz p4, :cond_8a

    iget v0, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-eq p4, v0, :cond_6c

    :cond_8a
    move v0, v1

    goto :goto_53

    :cond_8c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_94
    if-le v1, v0, :cond_2a

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_94
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 6

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eq v0, p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not currently in the FragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    :cond_22
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method removeCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_26

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    :cond_26
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_34

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    :cond_34
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_41

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    :cond_41
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    :cond_46
    return-void
.end method

.method public removeFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveState(Landroid/os/Parcelable;)V

    return-void
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->resetActiveFragments()V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentState;

    if-eqz v5, :cond_17

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iget-object v1, v5, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSaveState: re-attaching retained "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0, v2, v3, v1, v5}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    :goto_54
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSaveState: active ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    goto :goto_17

    :cond_98
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V

    goto :goto_54

    :cond_b0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ba
    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding retained Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that was not found in the set of active Fragments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    iput-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v2, Landroidx/fragment/app/FragmentStateManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v2, v3, v4, v0}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v9}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    iput-boolean v9, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_ba

    :cond_112
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->restoreAddedFragments(Ljava/util/List;)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_17f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    move v0, v6

    :goto_128
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_182

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_177

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: back stack #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Landroidx/fragment/app/LogWriter;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v1, v3, v2, v6}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_177
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    :cond_17f
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    :cond_182
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v0, :cond_198

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    :cond_198
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b4

    :goto_19c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1b4

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_19c

    :cond_1b4
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    goto/16 :goto_5
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 9

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->saveActiveFragments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "FragmentManager"

    const-string v2, "saveAllState: no fragments!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->saveAddedFragments()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_81

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_81

    new-array v1, v5, [Landroidx/fragment/app/BackStackState;

    const/4 v0, 0x0

    move v2, v0

    :goto_41
    if-ge v2, v5, :cond_80

    new-instance v6, Landroidx/fragment/app/BackStackState;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v6, v0}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v6, v1, v2

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_41

    :cond_80
    move-object v0, v1

    :cond_81
    new-instance v1, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    iput-object v3, v1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    iput-object v4, v1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_9c

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    :cond_9c
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    move-object v0, v1

    goto/16 :goto_2c
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    :cond_32
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method scheduleCommit()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    move v2, v0

    :goto_12
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v0, :cond_3e

    :goto_1a
    if-nez v2, :cond_1e

    if-eqz v0, :cond_37

    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    :cond_37
    monitor-exit v3

    return-void

    :cond_39
    move v2, v1

    goto :goto_12

    :catchall_3b
    move-exception v0

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    move v0, v1

    goto :goto_1a
.end method

.method setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V
    .registers 5

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v1, :cond_11

    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_11
    return-void
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public final setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    if-eqz v0, :cond_16

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public final setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V
    .registers 8

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v1, Landroidx/fragment/app/FragmentManager$6;

    invoke-direct {v1, p0, p1, p3, v0}, Landroidx/fragment/app/FragmentManager$6;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    new-instance v3, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    invoke-direct {v3, v0, p3, v1}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    goto :goto_c
.end method

.method setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_17

    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    if-eqz p1, :cond_16

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_23

    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setSpecialEffectsControllerFactory(Landroidx/fragment/app/SpecialEffectsControllerFactory;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_2a
    return-void
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

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_73
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    return-void
.end method
