.class Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionInfo"
.end annotation


# instance fields
.field private final mOverlapAllowed:Z

.field private final mSharedElementTransition:Ljava/lang/Object;

.field private final mTransition:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_44

    if-eqz p3, :cond_32

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    if-eqz p3, :cond_3b

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :goto_21
    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    :goto_23
    if-eqz p4, :cond_68

    if-eqz p3, :cond_5d

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    :goto_31
    return-void

    :cond_32
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_3b
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_21

    :cond_44
    if-eqz p3, :cond_54

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_4e
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    goto :goto_23

    :cond_54
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :cond_5d
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_31

    :cond_68
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_31
.end method

.method private getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_13

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    goto :goto_3

    :cond_13
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    goto :goto_3

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    if-ne v0, v1, :cond_15

    :cond_12
    if-eqz v0, :cond_48

    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned Transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    move-object v0, v1

    goto :goto_14
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getTransition()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isOverlapAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    return v0
.end method
