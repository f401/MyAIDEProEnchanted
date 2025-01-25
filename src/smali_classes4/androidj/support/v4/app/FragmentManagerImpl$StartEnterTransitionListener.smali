.class Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroidj/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/BackStackRecord;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    return-void
.end method

.method static synthetic access$000(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic access$100(Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroidj/support/v4/app/BackStackRecord;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    return-object v0
.end method


# virtual methods
.method public cancelTransaction()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroidj/support/v4/app/FragmentManagerImpl;->access$300(Landroidj/support/v4/app/FragmentManagerImpl;Landroidj/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v0, :cond_2f

    move v1, v2

    :goto_7
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-object v5, v0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v5, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_12
    if-ge v4, v6, :cond_31

    iget-object v0, v5, Landroidj/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/Fragment;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidj/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroidj/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v0}, Landroidj/support/v4/app/Fragment;->startPostponedEnterTransition()V

    :cond_2b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    :cond_2f
    move v1, v3

    goto :goto_7

    :cond_31
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v4, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-boolean v5, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v1, :cond_3c

    move v3, v2

    :cond_3c
    invoke-static {v0, v4, v5, v3, v2}, Landroidj/support/v4/app/FragmentManagerImpl;->access$300(Landroidj/support/v4/app/FragmentManagerImpl;Landroidj/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStartEnterTransition()V
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidj/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroidj/support/v4/app/BackStackRecord;->mManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-static {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->access$200(Landroidj/support/v4/app/FragmentManagerImpl;)V

    goto :goto_a
.end method

.method public startListening()V
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
