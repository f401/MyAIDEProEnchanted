.class final Landroidj/support/v4/app/BackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAllowOptimization:Z

.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

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

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroidj/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroidj/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    :goto_54
    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackState;->mAllowOptimization:Z

    return-void

    :cond_57
    const/4 v0, 0x0

    goto :goto_54
.end method

.method public constructor <init>(Landroidj/support/v4/app/BackStackRecord;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v1, v3, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    iget-boolean v1, p1, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move v1, v0

    move v2, v0

    :goto_1e
    if-ge v2, v3, :cond_64

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    iget-object v4, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v6, v4, v1

    iget-object v4, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v1, v1, Landroidj/support/v4/app/Fragment;->mIndex:I

    :goto_3c
    aput v1, v4, v5

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v6, 0x1

    iget v5, v0, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v5, v1, v6

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v1, v4

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v1, v5

    iget-object v5, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v1, v4, 0x1

    iget v0, v0, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v0, v5, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e

    :cond_62
    const/4 v1, -0x1

    goto :goto_3c

    :cond_64
    iget v0, p1, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mTransition:I

    iget v0, p1, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mTransitionStyle:I

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iget v0, p1, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mIndex:I

    iget v0, p1, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p1, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v0, p1, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    iput-boolean v0, p0, Landroidj/support/v4/app/BackStackState;->mAllowOptimization:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidj/support/v4/app/FragmentManagerImpl;)Landroidj/support/v4/app/BackStackRecord;
    .registers 10

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroidj/support/v4/app/BackStackRecord;

    invoke-direct {v3, p1}, Landroidj/support/v4/app/BackStackRecord;-><init>(Landroidj/support/v4/app/FragmentManagerImpl;)V

    move v0, v1

    move v2, v1

    :goto_9
    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9d

    new-instance v1, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-direct {v1}, Landroidj/support/v4/app/BackStackRecord$Op;-><init>()V

    iget-object v4, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v4, v0

    iput v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    sget-boolean v0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiate "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    if-ltz v0, :cond_99

    iget-object v5, p1, Landroidj/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    iput-object v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    :goto_61
    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iget-object v4, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v0, v5, 0x1

    aget v4, v4, v5

    iput v4, v1, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iget v4, v1, Landroidj/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v3, Landroidj/support/v4/app/BackStackRecord;->mEnterAnim:I

    iget v4, v1, Landroidj/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v3, Landroidj/support/v4/app/BackStackRecord;->mExitAnim:I

    iget v4, v1, Landroidj/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v3, Landroidj/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iget v4, v1, Landroidj/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v3, Landroidj/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-virtual {v3, v1}, Landroidj/support/v4/app/BackStackRecord;->addOp(Landroidj/support/v4/app/BackStackRecord$Op;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_9

    :cond_99
    const/4 v0, 0x0

    iput-object v0, v1, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    goto :goto_61

    :cond_9d
    iget v0, p0, Landroidj/support/v4/app/BackStackState;->mTransition:I

    iput v0, v3, Landroidj/support/v4/app/BackStackRecord;->mTransition:I

    iget v0, p0, Landroidj/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v0, v3, Landroidj/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v0, v3, Landroidj/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iget v0, p0, Landroidj/support/v4/app/BackStackState;->mIndex:I

    iput v0, v3, Landroidj/support/v4/app/BackStackRecord;->mIndex:I

    iput-boolean v7, v3, Landroidj/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    iget v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v0, v3, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v0, v3, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroidj/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, v3, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroidj/support/v4/app/BackStackState;->mAllowOptimization:Z

    iput-boolean v0, v3, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    invoke-virtual {v3, v7}, Landroidj/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v1, p0, Landroidj/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroidj/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroidj/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v1, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Landroidj/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v1, p0, Landroidj/support/v4/app/BackStackState;->mAllowOptimization:Z

    if-eqz v1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
