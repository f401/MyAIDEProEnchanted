.class public abstract Lorg/antlr/v4/runtime/atn/PredictionContext;
.super Ljava/lang/Object;
.source "PredictionContext.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field public static final EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

.field public static final EMPTY_RETURN_STATE:I = 0x7fffffff

.field private static final INITIAL_HASH:I = 0x1

.field public static globalNodeCount:I


# instance fields
.field public final cachedHashCode:I

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 39
    const/4 v0, 0x0

    sput v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->globalNodeCount:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->globalNodeCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/antlr/v4/runtime/atn/PredictionContext;->globalNodeCount:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    .line 66
    iput p1, p0, Lorg/antlr/v4/runtime/atn/PredictionContext;->cachedHashCode:I

    return-void
.end method

.method protected static calculateEmptyHashCode()I
    .locals 2

    .line 115
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 116
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method protected static calculateHashCode(Lorg/antlr/v4/runtime/atn/PredictionContext;I)I
    .locals 2

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 122
    invoke-static {v0, p0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 123
    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 124
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method protected static calculateHashCode([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)I
    .locals 5

    const/4 v0, 0x0

    .line 129
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v1

    .line 131
    array-length v3, p0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 132
    invoke-static {v1, v4}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    .line 136
    invoke-static {v1, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method protected static combineCommonParents([Lorg/antlr/v4/runtime/atn/PredictionContext;)V
    .locals 5

    const/4 v1, 0x0

    .line 470
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 473
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 474
    aget-object v3, p0, v0

    .line 475
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 476
    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 481
    aget-object v0, p0, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 3

    if-nez p1, :cond_0

    .line 73
    sget-object p1, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 77
    :cond_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-ne p1, v0, :cond_2

    .line 78
    :cond_1
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_2
    iget-object v0, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget v2, p1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 87
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAllContextNodes(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;"
        }
    .end annotation

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 632
    invoke-static {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getAllContextNodes_(Lorg/antlr/v4/runtime/atn/PredictionContext;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public static getAllContextNodes_(Lorg/antlr/v4/runtime/atn/PredictionContext;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 640
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    return-void

    .line 641
    :cond_1
    invoke-interface {p2, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 643
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 644
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getAllContextNodes_(Lorg/antlr/v4/runtime/atn/PredictionContext;Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContextCache;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContextCache;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 547
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-object p0

    .line 551
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->get(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-object v1, v0

    move v2, v3

    move v4, v3

    .line 564
    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_6

    .line 565
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContextCache;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v6

    if-nez v4, :cond_3

    .line 566
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    if-eq v6, v0, :cond_a

    :cond_3
    if-nez v4, :cond_5

    .line 568
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    new-array v1, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    move v0, v3

    .line 569
    :goto_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 570
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v4, v5

    .line 576
    :cond_5
    aput-object v6, v1, v2

    move-object v0, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    .line 581
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->add(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 582
    invoke-virtual {p2, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 587
    :cond_7
    array-length v0, v1

    if-nez v0, :cond_8

    .line 588
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    .line 598
    :goto_4
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->add(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 599
    invoke-virtual {p2, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    .line 590
    :cond_8
    array-length v0, v1

    if-ne v0, v5, :cond_9

    .line 591
    aget-object v0, v1, v3

    invoke-virtual {p0, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, p0

    .line 594
    check-cast v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 595
    new-instance v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    invoke-direct {v2, v1, v0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    move-object v0, v2

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method

.method public static merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    if-eq p0, p1, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object p0

    .line 154
    :cond_1
    instance-of v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v1, :cond_2

    .line 155
    check-cast p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-static {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeSingletons(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 163
    instance-of v1, p0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-nez v1, :cond_0

    .line 164
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eqz v1, :cond_3

    move-object p0, p1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    .line 169
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V

    .line 171
    :goto_1
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v1, :cond_4

    .line 172
    new-instance v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v1, p1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V

    .line 174
    :goto_2
    check-cast v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-static {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeArrays(Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object v1, p1

    goto :goto_2

    :cond_5
    move-object v0, p0

    goto :goto_1
.end method

.method public static mergeArrays(Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;",
            "Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 363
    invoke-virtual {p3, p0, p1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :cond_1
    invoke-virtual {p3, p1, p0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-nez v0, :cond_0

    .line 374
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v0, v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v3, v0, [I

    .line 376
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v0, v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v1, v1

    add-int v7, v0, v1

    new-array v4, v7, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 379
    :goto_1
    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v6, v5

    const/4 v5, 0x1

    if-ge v1, v6, :cond_9

    iget-object v6, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v6, v6

    if-ge v0, v6, :cond_9

    .line 380
    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v8, v6, v1

    .line 381
    iget-object v6, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v9, v6, v0

    .line 382
    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v6, v6, v1

    iget-object v10, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v10, v10, v0

    if-ne v6, v10, :cond_7

    .line 384
    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v10, v6, v1

    const v6, 0x7fffffff

    if-ne v10, v6, :cond_4

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    const/4 v6, 0x1

    :goto_2
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 388
    invoke-virtual {v8, v9}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_3
    if-nez v6, :cond_3

    if-eqz v5, :cond_6

    :cond_3
    aput-object v8, v4, v2

    .line 392
    aput v10, v3, v2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 410
    :goto_5
    add-int/lit8 v0, v0, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 388
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 395
    :cond_6
    invoke-static {v8, v9, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v5

    .line 397
    aput-object v5, v4, v2

    .line 398
    aput v10, v3, v2

    goto :goto_4

    .line 403
    :cond_7
    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v5, v5, v1

    iget-object v6, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v6, v6, v0

    if-ge v5, v6, :cond_8

    .line 404
    aput-object v8, v4, v2

    .line 405
    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v5, v5, v1

    aput v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 409
    :cond_8
    aput-object v9, v4, v2

    .line 410
    iget-object v5, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v5, v5, v0

    aput v5, v3, v2

    goto :goto_5

    .line 417
    :cond_9
    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v5, v5

    if-ge v1, v5, :cond_a

    .line 418
    :goto_7
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 419
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v0, v0, v1

    aput-object v0, v4, v2

    .line 420
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v0, v0, v1

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 425
    :cond_a
    :goto_8
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 426
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v1, v1, v0

    aput-object v1, v4, v2

    .line 427
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v1, v1, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    if-ge v2, v7, :cond_12

    const/4 v0, 0x1

    if-ne v2, v0, :cond_c

    .line 435
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v1, 0x0

    aget v1, v3, v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 438
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 441
    :cond_c
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 442
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 445
    :goto_9
    new-instance v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-direct {v2, v0, v1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    .line 450
    invoke-virtual {v2, p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p3, :cond_d

    .line 451
    invoke-virtual {p3, p0, p1, p0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object v0, p0

    goto/16 :goto_0

    .line 454
    :cond_e
    invoke-virtual {v2, p1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p3, :cond_f

    .line 455
    invoke-virtual {p3, p0, p1, p1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object v0, p1

    goto/16 :goto_0

    .line 459
    :cond_10
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->combineCommonParents([Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    if-eqz p3, :cond_11

    .line 461
    invoke-virtual {p3, p0, p1, v2}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object v0, v2

    goto/16 :goto_0

    :cond_12
    move-object v1, v3

    move-object v0, v4

    goto :goto_9
.end method

.method public static mergeRoot(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Z)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 9

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    .line 314
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    if-eq p1, v0, :cond_0

    :cond_2
    move-object v0, v1

    .line 329
    goto :goto_0

    .line 318
    :cond_3
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, v0, :cond_4

    if-eq p1, v0, :cond_0

    :cond_4
    if-ne p0, v0, :cond_5

    .line 320
    iget v2, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    .line 321
    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 322
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v4, v7, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    new-array v1, v7, [I

    aput v2, v1, v5

    aput v8, v1, v6

    invoke-direct {v0, v4, v1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_2

    .line 327
    iget v2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    .line 328
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 329
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v4, v7, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    new-array v1, v7, [I

    aput v2, v1, v5

    aput v8, v1, v6

    invoke-direct {v0, v4, v1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    goto :goto_0
.end method

.method public static mergeSingletons(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;",
            "Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 212
    invoke-virtual {p3, p0, p1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-virtual {p3, p1, p0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-nez v0, :cond_0

    .line 218
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeRoot(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Z)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    .line 220
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_3
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-ne v0, v1, :cond_6

    .line 225
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-ne v0, v1, :cond_4

    move-object v0, p0

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-ne v0, v1, :cond_5

    move-object v0, p1

    goto :goto_0

    .line 233
    :cond_5
    iget v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 234
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    if-eq p0, p1, :cond_7

    .line 240
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    :cond_7
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_a

    .line 245
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v2, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    new-array v3, v6, [I

    aput v0, v3, v4

    aput v2, v3, v5

    .line 246
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v2, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-le v0, v2, :cond_8

    .line 247
    iget v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v0, v3, v4

    .line 248
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v0, v3, v5

    .line 250
    :cond_8
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v2, v6, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v1, v2, v4

    aput-object v1, v2, v5

    invoke-direct {v0, v2, v3}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    if-eqz p3, :cond_0

    .line 252
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_9
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 258
    :cond_a
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    new-array v2, v6, [I

    aput v0, v2, v4

    aput v1, v2, v5

    .line 259
    new-array v0, v6, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v1, v0, v4

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v1, v0, v5

    .line 260
    iget v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-le v1, v3, :cond_b

    .line 261
    iget v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v0, v2, v4

    .line 262
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v0, v2, v5

    .line 263
    new-array v0, v6, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v1, v0, v5

    .line 265
    :cond_b
    new-instance v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-direct {v1, v0, v2}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    if-eqz p3, :cond_c

    .line 266
    invoke-virtual {p3, p0, p1, v1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static toDOTString(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 486
    const-string v0, ""

    .line 538
    :goto_0
    return-object v0

    .line 487
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "digraph G {\nrankdir=LR;\n"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getAllContextNodes(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/util/List;

    move-result-object v5

    .line 492
    new-instance v0, Lorg/antlr/v4/runtime/atn/PredictionContext$1;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext$1;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 499
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 500
    instance-of v7, v0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    const-string v1, "$"

    if-eqz v7, :cond_2

    .line 501
    iget v7, v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    .line 502
    const-string v8, "  s"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v7

    .line 504
    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 505
    :goto_2
    const-string v1, " [label=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"];\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 504
    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 508
    :cond_2
    check-cast v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 509
    const-string v1, "  s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->id:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, " [shape=box, label=\"["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v7, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v8, v7

    move v0, v3

    move v1, v2

    :goto_3
    if-ge v1, v8, :cond_5

    aget v9, v7, v1

    if-nez v0, :cond_3

    .line 514
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const v0, 0x7fffffff

    if-ne v9, v0, :cond_4

    .line 515
    const-string v0, "$"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 519
    :cond_5
    const-string v0, "]\"];\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 523
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 524
    sget-object v1, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eq v0, v1, :cond_7

    move v1, v2

    .line 525
    :goto_5
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 526
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v6

    if-nez v6, :cond_8

    .line 533
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 527
    :cond_8
    iget v6, v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    .line 528
    const-string v7, "  s"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v6, "->s"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v6

    iget v6, v6, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    if-le v6, v3, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " [label=\"parent["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]\"];\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 533
    :cond_9
    const-string v6, ";\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 537
    :cond_a
    const-string v0, "}\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
.end method

.method public abstract getReturnState(I)I
.end method

.method public hasEmptyPath()Z
    .locals 3

    .line 103
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v1

    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContext;->cachedHashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract size()I
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStrings(Lorg/antlr/v4/runtime/Recognizer;I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 654
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->toStrings(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/atn/PredictionContext;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStrings(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/atn/PredictionContext;I)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 659
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 667
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    const-string v0, "["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move v3, v0

    move v5, p3

    .line 669
    :goto_1
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-eq v2, p2, :cond_9

    .line 671
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    const/4 v6, 0x1

    shl-int/2addr v6, v0

    .line 673
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, -0x1

    shr-int v7, v1, v4

    and-int/2addr v7, v6

    .line 679
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v7, v6, :cond_2

    const/4 v6, 0x1

    :goto_3
    and-int/2addr v3, v6

    .line 680
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    if-lt v7, v6, :cond_3

    .line 718
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 679
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 680
    :cond_3
    add-int/2addr v4, v0

    move v6, v7

    :goto_4
    if-eqz p1, :cond_7

    .line 687
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_4

    .line 689
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    :cond_4
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v0

    .line 693
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 694
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object v5

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v0, v5, v0

    .line 695
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_5
    :goto_5
    invoke-virtual {v2, v6}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v5

    .line 708
    invoke-virtual {v2, v6}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 680
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    goto :goto_4

    .line 697
    :cond_7
    invoke-virtual {v2, v6}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_5

    .line 698
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 699
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_8

    .line 701
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    :cond_8
    invoke-virtual {v2, v6}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 710
    :cond_9
    const-string v0, "]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    .line 718
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
