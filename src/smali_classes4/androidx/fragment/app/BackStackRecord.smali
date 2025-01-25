.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_16
    invoke-direct {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .registers 8

    const/4 v5, 0x2

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bump nesting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    if-ge v1, v2, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_71

    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v4, v3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_71

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "FragmentManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32
.end method

.method public commit()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .registers 5

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_50

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroidx/fragment/app/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v1, v2}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->allocBackStackIndex()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    :goto_44
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0

    :cond_4c
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_44

    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitNow()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_f

    :cond_a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_cc

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_38

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_40

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_5f

    :cond_40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_67

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_86

    :cond_67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_86
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a9

    :cond_8e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a9
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_b1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_cc

    :cond_b1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_cc
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19f

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_e4
    if-ge v2, v3, :cond_19f

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v1, :pswitch_data_1a0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_173

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v1, :cond_12d

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v1, :cond_14c

    :cond_12d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14c
    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v1, :cond_154

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v1, :cond_173

    :cond_154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_173
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_e4

    :pswitch_178  #0xa
    const-string v1, "OP_SET_MAX_LIFECYCLE"

    goto :goto_106

    :pswitch_17b  #0x9
    const-string v1, "UNSET_PRIMARY_NAV"

    goto :goto_106

    :pswitch_17e  #0x8
    const-string v1, "SET_PRIMARY_NAV"

    goto :goto_106

    :pswitch_181  #0x7
    const-string v1, "ATTACH"

    goto :goto_106

    :pswitch_184  #0x6
    const-string v1, "DETACH"

    goto :goto_106

    :pswitch_187  #0x5
    const-string v1, "SHOW"

    goto/16 :goto_106

    :pswitch_18b  #0x4
    const-string v1, "HIDE"

    goto/16 :goto_106

    :pswitch_18f  #0x3
    const-string v1, "REMOVE"

    goto/16 :goto_106

    :pswitch_193  #0x2
    const-string v1, "REPLACE"

    goto/16 :goto_106

    :pswitch_197  #0x1
    const-string v1, "ADD"

    goto/16 :goto_106

    :pswitch_19b  #0x0
    const-string v1, "NULL"

    goto/16 :goto_106

    :cond_19f
    return-void

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_19b  #00000000
        :pswitch_197  #00000001
        :pswitch_193  #00000002
        :pswitch_18f  #00000003
        :pswitch_18b  #00000004
        :pswitch_187  #00000005
        :pswitch_184  #00000006
        :pswitch_181  #00000007
        :pswitch_17e  #00000008
        :pswitch_17b  #00000009
        :pswitch_178  #0000000a
    .end packed-switch
.end method

.method executeOps()V
    .registers 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_9
    if-ge v1, v3, :cond_bd

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_23

    iget v5, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_23
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v5, :pswitch_data_ce

    :pswitch_28  #0x2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_41  #0xa
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    :goto_48
    iget-boolean v5, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_5b

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v0, v7, :cond_5b

    if-eqz v4, :cond_5b

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :pswitch_5f  #0x9
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_66  #0x8
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_6c  #0x7
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_7c  #0x6
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_87  #0x5
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_97  #0x4
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_a2  #0x3
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :pswitch_ad  #0x1
    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v2}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_48

    :cond_bd
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_cc

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_cc

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_ad  #00000001
        :pswitch_28  #00000002
        :pswitch_a2  #00000003
        :pswitch_97  #00000004
        :pswitch_87  #00000005
        :pswitch_7c  #00000006
        :pswitch_6c  #00000007
        :pswitch_66  #00000008
        :pswitch_5f  #00000009
        :pswitch_41  #0000000a
    .end packed-switch
.end method

.method executePopOps(Z)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a
    if-ltz v1, :cond_c3

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_28

    iget v3, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->reverseTransit(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_28
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_d6

    :pswitch_2d  #0x2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_46  #0xa
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    :goto_4d
    iget-boolean v3, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_61

    iget v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_61

    if-eqz v2, :cond_61

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_61
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a

    :pswitch_65  #0x9
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_6b  #0x8
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_72  #0x7
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v5}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_82  #0x6
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_8d  #0x5
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v5}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_9d  #0x4
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_a8  #0x3
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :pswitch_b3  #0x1
    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2, v5}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4d

    :cond_c3
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_d4

    if-eqz p1, :cond_d4

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_d4

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_b3  #00000001
        :pswitch_2d  #00000002
        :pswitch_a8  #00000003
        :pswitch_9d  #00000004
        :pswitch_8d  #00000005
        :pswitch_82  #00000006
        :pswitch_72  #00000007
        :pswitch_6b  #00000008
        :pswitch_65  #00000009
        :pswitch_46  #0000000a
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c7

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_57

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x7

    if-eq v2, v3, :cond_c0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2b

    :cond_27
    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2b
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object p2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_27

    :cond_3c
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne v2, p2, :cond_27

    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v4, 0x9

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_27

    :cond_57
    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v7, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    const/4 v4, 0x0

    move v3, v1

    move-object v2, p2

    :goto_64
    if-ltz v5, :cond_aa

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget v8, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v8, v7, :cond_c8

    if-ne v1, v6, :cond_77

    const/4 v1, 0x1

    :goto_73
    add-int/lit8 v5, v5, -0x1

    move v4, v1

    goto :goto_64

    :cond_77
    if-ne v1, v2, :cond_88

    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :cond_88
    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v9, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iget-object v9, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_73

    :cond_aa
    if-eqz v4, :cond_b6

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v3, -0x1

    move-object p2, v2

    goto/16 :goto_27

    :cond_b6
    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move-object p2, v2

    goto/16 :goto_27

    :cond_c0
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_c7
    return-object p2

    :cond_c8
    move v1, v4

    goto :goto_73
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
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

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_14
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_14
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_f

    :cond_a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method interactsWith(I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_26

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_1a
    if-eqz v0, :cond_22

    if-ne v0, p1, :cond_22

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1a

    :cond_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_26
    move v0, v1

    goto :goto_1f
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-ne p3, p2, :cond_5

    move v0, v3

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, -0x1

    move v6, v3

    :goto_d
    if-ge v6, v7, :cond_5b

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_49

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v2, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_1f
    if-eqz v2, :cond_5d

    if-eq v2, v1, :cond_5d

    move v5, p2

    :goto_24
    if-ge v5, p3, :cond_55

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_33
    if-ge v4, v8, :cond_51

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v9, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_4b

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    :goto_45
    if-ne v1, v2, :cond_4d

    const/4 v0, 0x1

    goto :goto_4

    :cond_49
    move v2, v3

    goto :goto_1f

    :cond_4b
    move v1, v3

    goto :goto_45

    :cond_4d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_33

    :cond_51
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_24

    :cond_55
    move v0, v2

    :goto_56
    add-int/lit8 v2, v6, 0x1

    move v1, v0

    move v6, v2

    goto :goto_d

    :cond_5b
    move v0, v3

    goto :goto_4

    :cond_5d
    move v0, v1

    goto :goto_56
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-static {v0}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_f

    :cond_a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runOnCommitRunnables()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_20
    return-void
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_30

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_f

    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_14

    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set maximum Lifecycle to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after the Fragment has been created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-static {v0}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4

    if-eqz p1, :cond_c

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_11

    :cond_c
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_f

    :cond_a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v1, p2

    :goto_a
    if-ltz v2, :cond_3d

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_36

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2f

    packed-switch v3, :pswitch_data_3e

    move-object v0, v1

    :goto_20
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_a

    :pswitch_24  #0xa
    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    move-object v0, v1

    goto :goto_20

    :pswitch_2a  #0x9
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_20

    :pswitch_2d  #0x8
    const/4 v0, 0x0

    goto :goto_20

    :cond_2f
    :pswitch_2f  #0x6
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_20

    :cond_36
    :pswitch_36  #0x7
    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_20

    :cond_3d
    return-object v1

    :pswitch_data_3e
    .packed-switch 0x6
        :pswitch_2f  #00000006
        :pswitch_36  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_24  #0000000a
    .end packed-switch
.end method
