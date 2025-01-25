.class final Landroidj/support/v4/app/BackStackRecord;
.super Landroidj/support/v4/app/FragmentTransaction;

# interfaces
.implements Landroidj/support/v4/app/FragmentManager$BackStackEntry;
.implements Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final SUPPORTS_TRANSITIONS:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mAllowOptimization:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mIndex:I

.field final mManager:Landroidj/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroidj/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroidj/support/v4/app/FragmentManagerImpl;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentTransaction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    iput-object p1, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-void
.end method

.method private doAddOp(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_49

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must be a public static class to be  properly recreated from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Landroidj/support/v4/app/Fragment;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    if-eqz p3, :cond_8c

    iget-object v0, p2, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_8a

    iget-object v0, p2, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    iput-object p3, p2, Landroidj/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    :cond_8c
    if-eqz p1, :cond_f5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_ba

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    iget v0, p2, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_f1

    iget v0, p2, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_f1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f1
    iput p1, p2, Landroidj/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidj/support/v4/app/Fragment;->mContainerId:I

    :cond_f5
    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    iput p4, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p2, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-void
.end method

.method private static isFragmentPostponed(Landroidj/support/v4/app/BackStackRecord$Op;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget-boolean v1, v0, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Landroidj/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->isPostponed()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public add(ILandroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidj/support/v4/app/BackStackRecord;->doAddOp(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidj/support/v4/app/BackStackRecord;->doAddOp(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Landroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroidj/support/v4/app/BackStackRecord;->doAddOp(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 7

    sget-boolean v0, Landroidj/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v0, :cond_2e

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :cond_24
    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-object p0

    :cond_2f
    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A shared element with the target name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been added to the transaction."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A shared element with the source name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has already been added to the transaction."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addToBackStack(Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    iput-object p1, p0, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public attach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .registers 8

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_33
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    if-eqz v3, :cond_74

    iget-object v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v4, v3, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    sget-boolean v3, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_74

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v0, v0, Landroidj/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33
.end method

.method public commit()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroidj/support/v4/util/LogWriter;

    const-string v2, "FragmentManager"

    invoke-direct {v1, v2}, Landroidj/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    invoke-virtual {p0, v1, v3, v0, v3}, Landroidj/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mCommitted:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroidj/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    :goto_4c
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroidj/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    return v0

    :cond_54
    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_4c
.end method

.method public commitNow()V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroidj/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroidj/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroidj/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public detach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public disallowAddToBackStack()Landroidj/support/v4/app/FragmentTransaction;
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroidj/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_da

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_46

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_6d

    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6d
    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_75

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_94

    :cond_75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_94
    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    :cond_9c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b7
    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    :cond_bf
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_da
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_104
    if-ge v2, v3, :cond_1b5

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v1, :pswitch_data_1b6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_195

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v1, :cond_14f

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v1, :cond_16e

    :cond_14f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16e
    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v1, :cond_176

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v1, :cond_195

    :cond_176
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_195
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_104

    :pswitch_19a  #0x0
    const-string v1, "NULL"

    goto :goto_128

    :pswitch_19d  #0x1
    const-string v1, "ADD"

    goto :goto_128

    :pswitch_1a0  #0x2
    const-string v1, "REPLACE"

    goto :goto_128

    :pswitch_1a3  #0x3
    const-string v1, "REMOVE"

    goto :goto_128

    :pswitch_1a6  #0x4
    const-string v1, "HIDE"

    goto :goto_128

    :pswitch_1a9  #0x5
    const-string v1, "SHOW"

    goto/16 :goto_128

    :pswitch_1ad  #0x6
    const-string v1, "DETACH"

    goto/16 :goto_128

    :pswitch_1b1  #0x7
    const-string v1, "ATTACH"

    goto/16 :goto_128

    :cond_1b5
    return-void

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_19a  #00000000
        :pswitch_19d  #00000001
        :pswitch_1a0  #00000002
        :pswitch_1a3  #00000003
        :pswitch_1a6  #00000004
        :pswitch_1a9  #00000005
        :pswitch_1ad  #00000006
        :pswitch_1b1  #00000007
    .end packed-switch
.end method

.method executeOps()V
    .registers 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_9
    if-ge v1, v3, :cond_8e

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v4, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v5, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v5, v6}, Landroidj/support/v4/app/Fragment;->setNextTransition(II)V

    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_9c

    :pswitch_21  #0x2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3c  #0x1
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->addFragment(Landroidj/support/v4/app/Fragment;Z)V

    :goto_46
    iget-boolean v5, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v5, :cond_53

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    if-eq v0, v7, :cond_53

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidj/support/v4/app/Fragment;)V

    :cond_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :pswitch_57  #0x3
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->removeFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_46

    :pswitch_62  #0x4
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->hideFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_46

    :pswitch_6d  #0x5
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->showFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_46

    :pswitch_78  #0x6
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->detachFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_46

    :pswitch_83  #0x7
    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v4, v5}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v5, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->attachFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_46

    :cond_8e
    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v0, :cond_9b

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v0, v1, v7}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_9b
    return-void

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_21  #00000002
        :pswitch_57  #00000003
        :pswitch_62  #00000004
        :pswitch_6d  #00000005
        :pswitch_78  #00000006
        :pswitch_83  #00000007
    .end packed-switch
.end method

.method executePopOps(Z)V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_94

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v2, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v3, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroidj/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v3, v4}, Landroidj/support/v4/app/Fragment;->setNextTransition(II)V

    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_a6

    :pswitch_25  #0x2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_40  #0x1
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->removeFragment(Landroidj/support/v4/app/Fragment;)V

    :goto_4a
    iget-boolean v3, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v3, :cond_58

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_58

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidj/support/v4/app/Fragment;)V

    :cond_58
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :pswitch_5c  #0x3
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidj/support/v4/app/FragmentManagerImpl;->addFragment(Landroidj/support/v4/app/Fragment;Z)V

    goto :goto_4a

    :pswitch_68  #0x4
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->showFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_4a

    :pswitch_73  #0x5
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->hideFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_4a

    :pswitch_7e  #0x6
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->attachFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_4a

    :pswitch_89  #0x7
    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v2, v3}, Landroidj/support/v4/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->detachFragment(Landroidj/support/v4/app/Fragment;)V

    goto :goto_4a

    :cond_94
    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v0, :cond_a4

    if-eqz p1, :cond_a4

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_25  #00000002
        :pswitch_5c  #00000003
        :pswitch_68  #00000004
        :pswitch_73  #00000005
        :pswitch_7e  #00000006
        :pswitch_89  #00000007
    .end packed-switch
.end method

.method expandReplaceOps(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_3
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget v3, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_82

    :goto_18
    :pswitch_18  #0x4, 0x5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_1c  #0x1, 0x7
    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :pswitch_22  #0x3, 0x6
    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    :pswitch_28  #0x2
    iget-object v7, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v8, v7, Landroidj/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    move v3, v1

    move v5, v2

    :goto_34
    if-ltz v6, :cond_6d

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/app/Fragment;

    iget v9, v1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-ne v9, v8, :cond_7e

    if-ne v1, v7, :cond_47

    move v1, v4

    :goto_43
    add-int/lit8 v6, v6, -0x1

    move v5, v1

    goto :goto_34

    :cond_47
    new-instance v9, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v9}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v10, 0x3

    iput v10, v9, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object v1, v9, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v10, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v10, v9, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iget v10, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v10, v9, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iget v10, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v10, v9, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iget v10, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v10, v9, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iget-object v10, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_43

    :cond_6d
    if-eqz v5, :cond_77

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v3, -0x1

    goto :goto_18

    :cond_77
    iput v4, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_18

    :cond_7e
    move v1, v5

    goto :goto_43

    :cond_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_28  #00000002
        :pswitch_22  #00000003
        :pswitch_18  #00000004
        :pswitch_18  #00000005
        :pswitch_22  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
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

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroidj/support/v4/app/BackStackRecord;)V

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_12
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_12
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method interactsWith(I)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v0, v0, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-ne v0, p1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1e
    move v0, v1

    goto :goto_19
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-ne p3, p2, :cond_5

    move v0, v2

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, -0x1

    move v6, v2

    :goto_d
    if-ge v6, v7, :cond_4f

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v3, v0, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-eqz v3, :cond_51

    if-eq v3, v1, :cond_51

    move v5, p2

    :goto_20
    if-ge v5, p3, :cond_49

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v2

    :goto_2f
    if-ge v4, v8, :cond_45

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v1, v1, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v1, v1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-ne v1, v3, :cond_41

    const/4 v0, 0x1

    goto :goto_4

    :cond_41
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2f

    :cond_45
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_20

    :cond_49
    move v0, v3

    :goto_4a
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v1, v0

    goto :goto_d

    :cond_4f
    move v0, v2

    goto :goto_4

    :cond_51
    move v0, v1

    goto :goto_4a
.end method

.method public isAddToBackStackAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-static {v0}, Landroidj/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroidj/support/v4/app/BackStackRecord$Op;)Z

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

.method public remove(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public replace(ILandroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/app/BackStackRecord;->replace(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroidj/support/v4/app/BackStackRecord;->doAddOp(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public setAllowOptimization(Z)Landroidj/support/v4/app/FragmentTransaction;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    return-object p0
.end method

.method public setBreadCrumbShortTitle(I)Landroidj/support/v4/app/FragmentTransaction;
    .registers 3

    iput p1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput-object p1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroidj/support/v4/app/FragmentTransaction;
    .registers 3

    iput p1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput-object p1, p0, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomAnimations(II)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroidj/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroidj/support/v4/app/FragmentTransaction;
    .registers 5

    iput p1, p0, Landroidj/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput p2, p0, Landroidj/support/v4/app/BackStackRecord;->mExitAnim:I

    iput p3, p0, Landroidj/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput p4, p0, Landroidj/support/v4/app/BackStackRecord;->mPopExitAnim:I

    return-object p0
.end method

.method setOnStartPostponedListener(Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-static {v0}, Landroidj/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroidj/support/v4/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    return-void
.end method

.method public setTransition(I)Landroidj/support/v4/app/FragmentTransaction;
    .registers 2

    iput p1, p0, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    return-object p0
.end method

.method public setTransitionStyle(I)Landroidj/support/v4/app/FragmentTransaction;
    .registers 2

    iput p1, p0, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return-object p0
.end method

.method public show(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .registers 4

    new-instance v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    return-object p0
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

    iget v1, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget v2, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_28

    :goto_17
    :pswitch_17  #0x2, 0x4, 0x5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_1b  #0x1, 0x7
    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    :pswitch_21  #0x3, 0x6
    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    return-void

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1b  #00000001
        :pswitch_17  #00000002
        :pswitch_21  #00000003
        :pswitch_17  #00000004
        :pswitch_17  #00000005
        :pswitch_21  #00000006
        :pswitch_1b  #00000007
    .end packed-switch
.end method
