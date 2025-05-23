.class final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mCurrentMaxLifecycleStates:[I

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOldMaxLifecycleStates:[I

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/fragment/app/BackStackState$1;

    invoke-direct {v0}, Landroidx/fragment/app/BackStackState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    :goto_60
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void

    :cond_63
    const/4 v0, 0x0

    goto :goto_60
.end method

.method public constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v1, v3, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    iget-boolean v1, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_a7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    new-array v1, v3, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    move v1, v0

    move v2, v0

    :goto_25
    if-ge v2, v3, :cond_7e

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aput v6, v4, v1

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_7c

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    :goto_41
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    aput v6, v1, v5

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    aput v6, v1, v4

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    aput v6, v1, v5

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    iget v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    aput v5, v1, v4

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aput v5, v1, v2

    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    goto :goto_25

    :cond_7c
    const/4 v1, 0x0

    goto :goto_41

    :cond_7e
    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v0, p1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v0, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void

    :cond_a7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    move v0, v1

    move v2, v1

    :goto_9
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b0

    new-instance v1, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>()V

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v4, v0

    iput v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ac

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    :goto_5c
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    aget v4, v4, v2

    aget-object v0, v0, v4

    iput-object v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    aget v4, v4, v2

    aget-object v0, v0, v4

    iput-object v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    aget v0, v0, v4

    iput v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iget v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    iget v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    iget v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iget v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-virtual {v3, v1}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v4, 0x1

    move v2, v1

    goto/16 :goto_9

    :cond_ac
    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_5c

    :cond_b0
    iget v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput-boolean v6, v3, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v0, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v3, v6}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
