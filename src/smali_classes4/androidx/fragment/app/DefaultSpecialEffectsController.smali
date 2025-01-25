.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private startAnimations(Ljava/util/List;ZLjava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_14

    :cond_2a
    invoke-virtual {v0, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_14

    :cond_34
    iget-object v7, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-nez v7, :cond_3c

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3c
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-static {v10}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring Animator set on "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as this Fragment was involved in a Transition."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_14

    :cond_75
    const/4 v1, 0x1

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    invoke-direct {v8, p0, v3, v2, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v0

    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {v2, p0, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V

    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    move v2, v1

    goto/16 :goto_14

    :cond_98
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz p2, :cond_d7

    invoke-static {v10}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_d3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring Animation set on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as Animations cannot run alongside Transitions."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_9c

    :cond_d7
    if-eqz v2, :cond_fe

    invoke-static {v10}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_fa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring Animation set on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as Animations cannot run alongside Animators."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_9c

    :cond_fe
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object v1, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v6

    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v6, v8, :cond_12e

    invoke-virtual {v7, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    :goto_120
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    invoke-direct {v1, p0, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_9c

    :cond_12e
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v6, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v6, v1, v3, v7}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {v1, p0, v3, v7, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_120

    :cond_142
    return-void
.end method

.method private startTransitions(Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v4

    if-nez v2, :cond_24

    move-object v2, v4

    goto :goto_a

    :cond_24
    if-eqz v4, :cond_a

    if-eq v2, v4, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned Transition "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_58
    if-nez v2, :cond_7f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    goto :goto_5e

    :cond_7c
    move-object/from16 v2, v20

    :goto_7e
    return-object v2

    :cond_7f
    new-instance v21, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Landroidx/collection/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    :goto_ad
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    move-result v10

    if-eqz v10, :cond_327

    if-eqz v5, :cond_327

    if-eqz v4, :cond_327

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v4, 0x0

    :goto_e8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_107

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_104

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_104
    add-int/lit8 v4, v4, 0x1

    goto :goto_e8

    :cond_107
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v18

    if-nez p2, :cond_144

    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v5

    move-object v8, v4

    move-object v10, v5

    :goto_123
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v4, 0x0

    move v11, v4

    :goto_129
    if-ge v11, v12, :cond_157

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_129

    :cond_144
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v5

    move-object v8, v4

    move-object v10, v5

    goto :goto_123

    :cond_157
    new-instance v19, Landroidx/collection/ArrayMap;

    invoke-direct/range {v19 .. v19}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_1b9

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v8, v4

    :goto_180
    if-ltz v8, :cond_1c2

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_19d

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_199
    :goto_199
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto :goto_180

    :cond_19d
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_199

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_199

    :cond_1b9
    invoke-virtual/range {v19 .. v19}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_1c2
    new-instance v15, Landroidx/collection/ArrayMap;

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v10, :cond_22b

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v15}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v8, v4

    :goto_1ec
    if-ltz v8, :cond_230

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_20f

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20b

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20b
    :goto_20b
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto :goto_1ec

    :cond_20f
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20b

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20b

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20b

    :cond_22b
    move-object/from16 v0, v24

    invoke-static {v0, v15}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    :cond_230
    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_258

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    :goto_255
    move-object v8, v3

    goto/16 :goto_ad

    :cond_258
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    const/4 v8, 0x1

    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v4, v5, v0, v1, v8}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v10, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    move/from16 v14, p2

    invoke-direct/range {v10 .. v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v4, v10}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    invoke-virtual/range {v19 .. v19}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_284
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_298

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_284

    :cond_298
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49d

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    move-object v10, v4

    :goto_2b3
    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2cd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_2bb

    :cond_2cd
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_325

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v2, v4, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v5, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    const/4 v4, 0x1

    move v11, v4

    :goto_2f6
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual/range {v2 .. v9}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object v6, v10

    move v7, v11

    goto/16 :goto_255

    :cond_325
    move v11, v7

    goto :goto_2f6

    :cond_327
    move-object v3, v8

    goto/16 :goto_255

    :cond_32a
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    const/16 v19, 0x0

    const/16 v18, 0x0

    :goto_337
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_427

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v10

    if-eqz v10, :cond_35b

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    goto :goto_337

    :cond_35b
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v27

    if-eqz v8, :cond_38e

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_371

    move-object/from16 v0, v27

    if-ne v0, v4, :cond_38e

    :cond_371
    const/4 v10, 0x1

    :goto_372
    if-nez v11, :cond_390

    if-nez v10, :cond_385

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    :cond_385
    move-object/from16 v3, v18

    move-object/from16 v10, v19

    :goto_389
    move-object/from16 v18, v3

    move-object/from16 v19, v10

    goto :goto_337

    :cond_38e
    const/4 v10, 0x0

    goto :goto_372

    :cond_390
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v27 .. v27}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v10, :cond_3ab

    move-object/from16 v0, v27

    if-ne v0, v5, :cond_3e6

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3ab
    :goto_3ab
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3ea

    move-object/from16 v0, v21

    invoke-virtual {v2, v11, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    :cond_3b6
    :goto_3b6
    invoke-virtual/range {v27 .. v27}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v12, :cond_418

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v7, :cond_3ca

    move-object/from16 v0, v22

    invoke-virtual {v2, v11, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_3ca
    :goto_3ca
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    move-result v3

    if-eqz v3, :cond_41c

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v10, v19

    goto :goto_389

    :cond_3e6
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3ab

    :cond_3ea
    invoke-virtual {v2, v11, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move-object v12, v11

    invoke-virtual/range {v10 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual/range {v27 .. v27}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v12, :cond_3b6

    invoke-virtual/range {v27 .. v27}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v11, v10, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v10

    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    invoke-static {v10, v12}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_3b6

    :cond_418
    invoke-virtual {v2, v11, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_3ca

    :cond_41c
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v3, v18

    goto/16 :goto_389

    :cond_427
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_433
    :goto_433
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_471

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v6

    if-nez v6, :cond_433

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v6

    if-eqz v8, :cond_46f

    if-eq v6, v5, :cond_453

    if-ne v6, v4, :cond_46f

    :cond_453
    const/4 v6, 0x1

    :goto_454
    if-nez v11, :cond_458

    if-eqz v6, :cond_433

    :cond_458
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v11

    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V

    invoke-virtual {v2, v6, v7, v11, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    goto :goto_433

    :cond_46f
    const/4 v6, 0x0

    goto :goto_454

    :cond_471
    const/4 v3, 0x4

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    move-object/from16 v4, v23

    move-object v5, v9

    move-object/from16 v7, v24

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v8, v0, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v20

    goto/16 :goto_7e

    :cond_49d
    move-object v10, v6

    goto/16 :goto_2b3

    :cond_4a0
    move v11, v7

    goto/16 :goto_2f6
.end method


# virtual methods
.method applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    return-void
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method executeOperations(Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    move-object v2, v0

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v5

    sget-object v6, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_3b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3b

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v5, v6, :cond_8

    move-object v2, v0

    goto :goto_8

    :cond_3b
    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v5, v6, :cond_8

    if-nez v1, :cond_8

    move-object v1, v0

    goto :goto_8

    :cond_43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    new-instance v3, Landroidx/core/os/CancellationSignal;

    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v9, v0, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/core/os/CancellationSignal;

    invoke-direct {v9}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_91

    if-ne v0, v1, :cond_80

    :goto_7f
    move v3, v4

    :cond_80
    new-instance v10, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-direct {v10, v0, v9, p2, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v3, p0, v7, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    goto :goto_56

    :cond_91
    if-ne v0, v2, :cond_80

    goto :goto_7f

    :cond_94
    invoke-direct {p0, v6, p2, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v5, v1, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;ZLjava/util/Map;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    goto :goto_a7

    :cond_b7
    invoke-interface {v7}, Ljava/util/List;->clear()V

    return-void
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_26

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    return-void
.end method

.method retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
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

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_28
    return-void
.end method
