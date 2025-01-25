.class Landroidj/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidj/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .registers 2

    invoke-static {p0, p1}, Landroidj/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;
    .registers 4

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/FragmentTransition;->captureInSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/FragmentTransition;->getInEpicenterView(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidj/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidj/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_20

    invoke-virtual {p1, v1}, Landroidj/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    :cond_20
    return-void
.end method

.method private static addToFirstInLastOut(Landroidj/support/v4/app/BackStackRecord;Landroidj/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/BackStackRecord;",
            "Landroidj/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Landroidj/support/v4/app/BackStackRecord$Op;->fragment:Landroidj/support/v4/app/Fragment;

    iget v9, v1, Landroidj/support/v4/app/Fragment;->mContainerId:I

    if-nez v9, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p3, :cond_6c

    sget-object v0, Landroidj/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v0, v0, v4

    :goto_12
    packed-switch v0, :pswitch_data_f4

    :pswitch_15  #0x2
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    :goto_19
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v4, :cond_f1

    invoke-static {v0, p2, v9}, Landroidj/support/v4/app/FragmentTransition;->ensureContainer(Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    iput-object v1, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    iput-boolean p3, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object p0, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidj/support/v4/app/BackStackRecord;

    :goto_2b
    if-nez p4, :cond_4d

    if-eqz v5, :cond_4d

    if-eqz v8, :cond_37

    iget-object v0, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    if-ne v0, v1, :cond_37

    iput-object v10, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    :cond_37
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget v4, v1, Landroidj/support/v4/app/Fragment;->mState:I

    if-ge v4, v2, :cond_4d

    iget v4, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v2, :cond_4d

    iget-boolean v4, p0, Landroidj/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v4, :cond_4d

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentManagerImpl;->makeActive(Landroidj/support/v4/app/Fragment;)V

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidj/support/v4/app/FragmentManagerImpl;->moveToState(Landroidj/support/v4/app/Fragment;IIIZ)V

    :cond_4d
    if-eqz v6, :cond_ee

    if-eqz v8, :cond_55

    iget-object v0, v8, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    if-nez v0, :cond_ee

    :cond_55
    invoke-static {v8, p2, v9}, Landroidj/support/v4/app/FragmentTransition;->ensureContainer(Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v0

    iput-object v1, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    iput-boolean p3, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object p0, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidj/support/v4/app/BackStackRecord;

    :goto_5f
    if-nez p4, :cond_9

    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    iget-object v2, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    if-ne v2, v1, :cond_9

    iput-object v10, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    goto :goto_9

    :cond_6c
    iget v0, p1, Landroidj/support/v4/app/BackStackRecord$Op;->cmd:I

    goto :goto_12

    :pswitch_6f  #0x5
    if-eqz p4, :cond_85

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_83

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_83

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_83

    move v0, v2

    :goto_7e
    move v4, v0

    move v6, v3

    move v7, v3

    move v5, v2

    goto :goto_19

    :cond_83
    move v0, v3

    goto :goto_7e

    :cond_85
    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    goto :goto_7e

    :pswitch_88  #0x1, 0x7
    if-eqz p4, :cond_91

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mIsNewlyAdded:Z

    :goto_8c
    move v4, v0

    move v6, v3

    move v7, v3

    move v5, v2

    goto :goto_19

    :cond_91
    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_9b

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_9b

    move v0, v2

    goto :goto_8c

    :cond_9b
    move v0, v3

    goto :goto_8c

    :pswitch_9d  #0x4
    if-eqz p4, :cond_b4

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_b2

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_b2

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_b2

    move v0, v2

    :goto_ac
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    goto/16 :goto_19

    :cond_b2
    move v0, v3

    goto :goto_ac

    :cond_b4
    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_be

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_be

    move v0, v2

    goto :goto_ac

    :cond_be
    move v0, v3

    goto :goto_ac

    :pswitch_c0  #0x3, 0x6
    if-eqz p4, :cond_e2

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_e0

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_e0

    iget-object v0, v1, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e0

    iget v0, v1, Landroidj/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_e0

    move v0, v2

    :goto_da
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    goto/16 :goto_19

    :cond_e0
    move v0, v3

    goto :goto_da

    :cond_e2
    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_ec

    iget-boolean v0, v1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_ec

    move v0, v2

    goto :goto_da

    :cond_ec
    move v0, v3

    goto :goto_da

    :cond_ee
    move-object v0, v8

    goto/16 :goto_5f

    :cond_f1
    move-object v8, v0

    goto/16 :goto_2b

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_88  #00000001
        :pswitch_15  #00000002
        :pswitch_c0  #00000003
        :pswitch_9d  #00000004
        :pswitch_6f  #00000005
        :pswitch_c0  #00000006
        :pswitch_88  #00000007
    .end packed-switch
.end method

.method public static calculateFragments(Landroidj/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_19

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    invoke-static {p0, v0, p1, v2, p2}, Landroidj/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroidj/support/v4/app/BackStackRecord;Landroidj/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidj/support/v4/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_8
    if-lt v6, p3, :cond_62

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_16
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_8

    :cond_1a
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v1, :cond_57

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    :goto_36
    const/4 v0, 0x0

    move v5, v0

    :goto_38
    if-ge v5, v8, :cond_16

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5e

    invoke-virtual {v7, v1, v0}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_53
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_38

    :cond_57
    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_36

    :cond_5e
    invoke-virtual {v7, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_62
    return-object v7
.end method

.method public static calculatePopFragments(Landroidj/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_14
    if-ltz v1, :cond_a

    iget-object v0, p0, Landroidj/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord$Op;

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroidj/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroidj/support/v4/app/BackStackRecord;Landroidj/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_14
.end method

.method private static callSharedElementStartEnd(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/Fragment;",
            "Landroidj/support/v4/app/Fragment;",
            "Z",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    move-object v3, v0

    :goto_9
    if-eqz v3, :cond_3e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_33

    move v0, v1

    move v2, v1

    :goto_19
    if-ge v2, v0, :cond_39

    invoke-virtual {p3, v2}, Landroidj/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v2}, Landroidj/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    :cond_2d
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    move-object v3, v0

    goto :goto_9

    :cond_33
    invoke-virtual {p3}, Landroidj/support/v4/util/ArrayMap;->size()I

    move-result v0

    move v2, v1

    goto :goto_19

    :cond_39
    if-eqz p4, :cond_3f

    invoke-virtual {v3, v5, v4, v6}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    invoke-virtual {v3, v5, v4, v6}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3e
.end method

.method private static captureInSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz p1, :cond_10

    if-nez v1, :cond_15

    :cond_10
    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    new-instance v2, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    invoke-static {v2, v1}, Landroidj/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v3, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v3, :cond_58

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getExitTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v4, v1

    :goto_2a
    if-eqz v4, :cond_2f

    invoke-virtual {v2, v4}, Landroidj/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2f
    if-eqz v0, :cond_78

    invoke-virtual {v0, v4, v2}, Landroidj/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3b
    if-ltz v3, :cond_7b

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_60

    invoke-static {p0, v0}, Landroidj/support/v4/app/FragmentTransition;->findKeyForValue(Landroidj/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    :goto_54
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3b

    :cond_58
    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v4, v1

    goto :goto_2a

    :cond_60
    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    invoke-static {p0, v0}, Landroidj/support/v4/app/FragmentTransition;->findKeyForValue(Landroidj/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_78
    invoke-static {p0, v2}, Landroidj/support/v4/app/FragmentTransition;->retainValues(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/util/ArrayMap;)V

    :cond_7b
    move-object v0, v2

    goto :goto_14
.end method

.method private static captureOutSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_d

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    new-instance v3, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v1}, Landroidj/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v1, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v2, p2, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v2, :cond_4e

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v2, v1

    :goto_28
    invoke-virtual {v3, v2}, Landroidj/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_6e

    invoke-virtual {v0, v2, v3}, Landroidj/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_37
    if-ltz v4, :cond_75

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_56

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_37

    :cond_4e
    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->getExitTransitionCallback()Landroidj/support/v4/app/SharedElementCallback;

    move-result-object v0

    iget-object v1, v1, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v2, v1

    goto :goto_28

    :cond_56
    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroidj/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_6e
    invoke-virtual {v3}, Landroidj/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_75
    move-object v0, v3

    goto :goto_c
.end method

.method private static configureEnteringExitingViews(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidj/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v0, v1}, Landroidj/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_11
    if-eqz p2, :cond_16

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_22
    return-object v0
.end method

.method private static configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v1, p3, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    iget-object v2, p3, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz v1, :cond_12

    if-nez v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    iget-boolean v3, p3, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_1d
    invoke-static {p2, v0, p3}, Landroidj/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;

    move-result-object v5

    invoke-static {p2, v0, p3}, Landroidj/support/v4/app/FragmentTransition;->captureInSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;

    move-result-object v4

    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_43

    const/4 v7, 0x0

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroidj/support/v4/util/ArrayMap;->clear()V

    :cond_31
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroidj/support/v4/util/ArrayMap;->clear()V

    :cond_36
    :goto_36
    if-nez p6, :cond_53

    if-nez p7, :cond_53

    if-nez v7, :cond_53

    const/4 v0, 0x0

    goto :goto_13

    :cond_3e
    invoke-static {v1, v2, v3}, Landroidj/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_43
    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {p4, v5, v6}, Landroidj/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidj/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {p5, v4, v6}, Landroidj/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidj/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    move-object v7, v0

    goto :goto_36

    :cond_53
    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v5, v0}, Landroidj/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V

    if-eqz v7, :cond_7e

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, p1, p4}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v0, p3, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iget-object v6, p3, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidj/support/v4/app/BackStackRecord;

    invoke-static {v7, p7, v5, v0, v6}, Landroidj/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/util/ArrayMap;ZLandroidj/support/v4/app/BackStackRecord;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, p3, p6, v3}, Landroidj/support/v4/app/FragmentTransition;->getInEpicenterView(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_74

    invoke-static {p6, v6}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_74
    :goto_74
    new-instance v0, Landroidj/support/v4/app/FragmentTransition$3;

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/FragmentTransition$3;-><init>(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v0}, Landroidj/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidj/support/v4/app/OneShotPreDrawListener;

    move-object v0, v7

    goto :goto_13

    :cond_7e
    const/4 v6, 0x0

    const/4 v5, 0x0

    goto :goto_74
.end method

.method private static configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v7, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    if-eqz v7, :cond_c

    if-nez v8, :cond_e

    :cond_c
    const/4 v3, 0x0

    :goto_d
    return-object v3

    :cond_e
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    :goto_19
    move-object/from16 v0, p3

    invoke-static {p2, v1, v0}, Landroidj/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroidj/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {p2}, Landroidj/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x0

    :goto_26
    if-nez p6, :cond_3e

    if-nez p7, :cond_3e

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_d

    :cond_2e
    invoke-static {v7, v8, v9}, Landroidj/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    :cond_33
    invoke-virtual {v2}, Landroidj/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v1

    goto :goto_26

    :cond_3e
    const/4 v1, 0x1

    invoke-static {v7, v8, v9, v2, v1}, Landroidj/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLandroidj/support/v4/util/ArrayMap;Z)V

    if-eqz v3, :cond_75

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p4

    invoke-static {v3, p1, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p3

    iget-object v4, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidj/support/v4/app/BackStackRecord;

    move-object/from16 v0, p7

    invoke-static {v3, v0, v2, v1, v4}, Landroidj/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/util/ArrayMap;ZLandroidj/support/v4/app/BackStackRecord;)V

    if-eqz p6, :cond_62

    move-object/from16 v0, p6

    invoke-static {v0, v12}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_62
    :goto_62
    new-instance v1, Landroidj/support/v4/app/FragmentTransition$4;

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Landroidj/support/v4/app/FragmentTransition$4;-><init>(Landroidj/support/v4/util/ArrayMap;Ljava/lang/Object;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p0, v1}, Landroidj/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidj/support/v4/app/OneShotPreDrawListener;

    goto :goto_d

    :cond_75
    const/4 v12, 0x0

    goto :goto_62
.end method

.method private static configureTransitionsOptimized(Landroidj/support/v4/app/FragmentManagerImpl;ILandroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroidj/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_17
    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object/from16 v0, p2

    iget-object v9, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-object v10, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-boolean v12, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v12}, Landroidj/support/v4/app/FragmentTransition;->getEnterTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v2}, Landroidj/support/v4/app/FragmentTransition;->getExitTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Landroidj/support/v4/app/FragmentTransition;->configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_4c

    if-nez v14, :cond_4c

    if-eqz v8, :cond_19

    :cond_4c
    move-object/from16 v0, p3

    invoke-static {v8, v10, v5, v0}, Landroidj/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-static {v7, v9, v6, v0}, Landroidj/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v2, 0x4

    invoke-static {v11, v2}, Landroidj/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-static {v7, v8, v14, v9, v12}, Landroidj/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_19

    invoke-static {v8, v10, v13}, Landroidj/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    invoke-static {v6}, Landroidj/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesOptimized(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v10, v7

    move-object v12, v8

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Landroidj/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-static {v1, v9}, Landroidj/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-static {v1, v5, v6, v2, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroidj/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-static {v14, v5, v6}, Landroidj/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_19
.end method

.method private static configureTransitionsUnoptimized(Landroidj/support/v4/app/FragmentManagerImpl;ILandroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    invoke-virtual {v2}, Landroidj/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mContainer:Landroidj/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_17
    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object/from16 v0, p2

    iget-object v15, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidj/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidj/support/v4/app/Fragment;

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    invoke-static {v15, v2}, Landroidj/support/v4/app/FragmentTransition;->getEnterTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v3}, Landroidj/support/v4/app/FragmentTransition;->getExitTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Landroidj/support/v4/app/FragmentTransition;->configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_4c

    if-nez v13, :cond_4c

    if-eqz v8, :cond_19

    :cond_4c
    move-object/from16 v0, p3

    invoke-static {v8, v9, v5, v0}, Landroidj/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_5a

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_5a
    const/4 v11, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-static {v7, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-static {v7, v11, v13, v15, v2}, Landroidj/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v7

    move-object v14, v6

    invoke-static/range {v8 .. v14}, Landroidj/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v13, v1

    move-object v14, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-static/range {v13 .. v20}, Landroidj/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroidj/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setNameOverridesUnoptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v1, v8}, Landroidj/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_19

    :cond_93
    move-object v11, v8

    goto :goto_5b
.end method

.method private static ensureContainer(Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method private static findKeyForValue(Landroidj/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static getEnterTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static getExitTransition(Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static getInEpicenterView(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidj/support/v4/app/BackStackRecord;

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    if-eqz p3, :cond_24

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1d
    invoke-virtual {p0, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_23
    return-object v0

    :cond_24
    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static getSharedElementTransition(Landroidj/support/v4/app/Fragment;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    if-eqz p2, :cond_15

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    invoke-static {v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_15
    invoke-virtual {p0}, Landroidj/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    if-eqz p4, :cond_14

    invoke-virtual {p3}, Landroidj/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :cond_d
    :goto_d
    if-eqz v0, :cond_19

    invoke-static {p1, p0, p2}, Landroidj/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p3}, Landroidj/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_d

    :cond_19
    invoke-static {p1, p0, p2}, Landroidj/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method private static replaceHide(Ljava/lang/Object;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidj/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroidj/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidj/support/v4/app/Fragment;->setHideReplaced(Z)V

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidj/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p1, Landroidj/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroidj/support/v4/app/FragmentTransition$1;

    invoke-direct {v1, p2}, Landroidj/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroidj/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidj/support/v4/app/OneShotPreDrawListener;

    :cond_25
    return-void
.end method

.method private static retainValues(Landroidj/support/v4/util/ArrayMap;Landroidj/support/v4/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_1c

    invoke-virtual {p0, v1}, Landroidj/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidj/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, v1}, Landroidj/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    :cond_1c
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroidj/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidj/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/app/FragmentTransition$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidj/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroidj/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroidj/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidj/support/v4/app/OneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroidj/support/v4/util/ArrayMap;ZLandroidj/support/v4/app/BackStackRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidj/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p4, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    iget-object v0, p4, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p3, :cond_26

    iget-object v0, p4, Landroidj/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_17
    invoke-virtual {p2, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p1, :cond_25

    invoke-static {p1, v0}, Landroidj/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_25
    return-void

    :cond_26
    iget-object v0, p4, Landroidj/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_17
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a
.end method

.method static startTransitions(Landroidj/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    :cond_b
    return-void

    :cond_c
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v2, p3

    :goto_12
    if-ge v2, p4, :cond_31

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/BackStackRecord;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v0, v3, p5}, Landroidj/support/v4/app/FragmentTransition;->calculatePopFragments(Landroidj/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_2d
    invoke-static {v0, v3, p5}, Landroidj/support/v4/app/FragmentTransition;->calculateFragments(Landroidj/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_29

    :cond_31
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_48
    if-ge v1, v4, :cond_b

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidj/support/v4/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;

    if-eqz p5, :cond_61

    invoke-static {p0, v5, v0, v2, v6}, Landroidj/support/v4/app/FragmentTransition;->configureTransitionsOptimized(Landroidj/support/v4/app/FragmentManagerImpl;ILandroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;)V

    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_48

    :cond_61
    invoke-static {p0, v5, v0, v2, v6}, Landroidj/support/v4/app/FragmentTransition;->configureTransitionsUnoptimized(Landroidj/support/v4/app/FragmentManagerImpl;ILandroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidj/support/v4/util/ArrayMap;)V

    goto :goto_5d
.end method
