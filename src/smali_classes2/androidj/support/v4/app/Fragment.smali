.class public Landroidj/support/v4/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/Fragment$AnimationInfo;,
        Landroidj/support/v4/app/Fragment$InstantiationException;,
        Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;,
        Landroidj/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroidj/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

.field mChildNonConfig:Landroidj/support/v4/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidj/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Landroidj/support/v4/app/Fragment;

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidj/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidj/support/v4/app/Fragment;->sClassMap:Landroidj/support/v4/util/SimpleArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    iput v1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    iput v1, p0, Landroidj/support/v4/app/Fragment;->mTargetIndex:I

    iput-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    iput-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    return-void
.end method

.method static synthetic access$800(Landroidj/support/v4/app/Fragment;)V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method private callStartTransitionListener()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v1, v1, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;

    iget-object v2, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iput-object v0, v2, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;

    move-object v0, v1

    goto :goto_0
.end method

.method private ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidj/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidj/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidj/support/v4/app/Fragment;
    .registers 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    sget-object v0, Landroidj/support/v4/app/Fragment;->sClassMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/Fragment;->sClassMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, v0, Landroidj/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidj/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroidj/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroidj/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    sget-object v0, Landroidj/support/v4/app/Fragment;->sClassMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/Fragment;->sClassMap:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Landroidj/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidj/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidj/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Landroidj/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$600(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$600(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$700(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$700(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroidj/support/v4/app/FragmentManager;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-object v0

    :cond_1
    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$000(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getEnterTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidj/support/v4/app/SharedElementCallback;

    goto :goto_0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$200(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getExitTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidj/support/v4/app/SharedElementCallback;

    goto :goto_0
.end method

.method public final getFragmentManager()Landroidj/support/v4/app/FragmentManager;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getChildFragmentManager()Landroidj/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroidj/support/v4/view/LayoutInflaterFactory;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V

    return-object v0
.end method

.method public getLoaderManager()Landroidj/support/v4/app/LoaderManager;
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v3, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method getNextAnim()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    goto :goto_0
.end method

.method getNextTransition()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    goto :goto_0
.end method

.method getNextTransitionStyle()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    goto :goto_0
.end method

.method public final getParentFragment()Landroidj/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mParentFragment:Landroidj/support/v4/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$300(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$300(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$100(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$100(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$400(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$500(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$500(Landroidj/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getStateAfterAnimating()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .param p1    # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1    # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroidj/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1    # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mRestored:Z

    iput v1, p0, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iput v1, p0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    iput v1, p0, Landroidj/support/v4/app/Fragment;->mContainerId:I

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    iput-object v2, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidj/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    new-instance v2, Landroidj/support/v4/app/Fragment$2;

    invoke-direct {v2, p0}, Landroidj/support/v4/app/Fragment$2;-><init>(Landroidj/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidj/support/v4/app/FragmentManagerImpl;->attachController(Landroidj/support/v4/app/FragmentHostCallback;Landroidj/support/v4/app/FragmentContainer;Landroidj/support/v4/app/Fragment;)V

    return-void
.end method

.method public final isAdded()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    goto :goto_0
.end method

.method final isInBackStack()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    goto :goto_0
.end method

.method public final isRemoving()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method noteStateNotSaved()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getActivity()Landroidj/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doDestroy()V

    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Landroidj/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 5
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0
.end method

.method public onStop()V
    .registers 2
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Landroidj/support/v4/app/FragmentManager;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidj/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    :cond_0
    iput v1, p0, Landroidj/support/v4/app/Fragment;->mState:I

    iput-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-void
.end method

.method performDestroyView()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    :cond_2
    return-void
.end method

.method performDetach()V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onDetach()V

    iput-object v1, p0, Landroidj/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    iput-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    :cond_2
    return-void
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method performLowMemory()V
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onPause()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performReallyStop()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroidj/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doRetain()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performResume()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onStart()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    :cond_2
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doReportStart()V

    :cond_3
    return-void
.end method

.method performStop()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->onStop()V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public postponeEnterTransition()V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 6
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidj/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    :cond_0
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroidj/support/v4/app/Fragment;->mChildNonConfig:Landroidj/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidj/support/v4/app/FragmentManagerNonConfig;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildNonConfig:Landroidj/support/v4/app/FragmentManagerNonConfig;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mChildFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroidj/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 4

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$602(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 4

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$702(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroidj/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidj/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$002(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidj/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$202(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILandroidj/support/v4/app/Fragment;)V
    .registers 5

    iput p1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroidj/support/v4/app/Fragment$SavedState;)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidj/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidj/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroidj/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidj/support/v4/app/Fragment;->mMenuVisible:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    goto :goto_0
.end method

.method setNextTransition(II)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iput p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iput p2, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    goto :goto_0
.end method

.method setOnStartEnterTransitionListener(Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mAnimationInfo:Landroidj/support/v4/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    goto :goto_0
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$302(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/Fragment;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$102(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$402(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroidj/support/v4/app/Fragment$AnimationInfo;->access$502(Landroidj/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public setTargetFragment(Landroidj/support/v4/app/Fragment;I)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/app/Fragment;->mTarget:Landroidj/support/v4/app/Fragment;

    iput p2, p0, Landroidj/support/v4/app/Fragment;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4

    const/4 v1, 0x4

    iget-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidj/support/v4/app/Fragment;)V

    :cond_0
    iput-boolean p1, p0, Landroidj/support/v4/app/Fragment;->mUserVisibleHint:Z

    iget v0, p0, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidj/support/v4/app/Fragment;->mDeferStart:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidj/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidj/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidj/support/v4/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->ensureAnimationInfo()Landroidj/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidj/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidj/support/v4/app/Fragment$1;

    invoke-direct {v1, p0}, Landroidj/support/v4/app/Fragment$1;-><init>(Landroidj/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;->callStartTransitionListener()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroidj/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidj/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
