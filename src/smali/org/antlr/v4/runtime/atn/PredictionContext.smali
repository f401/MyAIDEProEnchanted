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
    .registers 1

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
    .registers 4

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
    .registers 2

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
    .registers 3

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 122
    invoke-static {v0, p0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result p0

    .line 123
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result p0

    .line 124
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result p0

    return p0
.end method

.method protected static calculateHashCode([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)I
    .registers 7

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize(I)I

    move-result v0

    .line 131
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_13

    aget-object v4, p0, v3

    .line 132
    invoke-static {v0, v4}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 135
    :cond_13
    array-length v1, p1

    :goto_14
    if-ge v2, v1, :cond_1f

    aget v3, p1, v2

    .line 136
    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 139
    :cond_1f
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {v0, p0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result p0

    return p0
.end method

.method protected static combineCommonParents([Lorg/antlr/v4/runtime/atn/PredictionContext;)V
    .registers 6

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 473
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_18

    .line 474
    aget-object v3, p0, v2

    .line 475
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 476
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 480
    :cond_18
    :goto_18
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 481
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_28
    return-void
.end method

.method public static fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 3

    if-nez p1, :cond_4

    .line 73
    sget-object p1, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    .line 77
    :cond_4
    iget-object v0, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    if-eqz v0, :cond_2d

    sget-object v0, Lorg/antlr/v4/runtime/RuleContext;->EMPTY:Lorg/antlr/v4/runtime/ParserRuleContext;

    if-ne p1, v0, :cond_d

    goto :goto_2d

    .line 83
    :cond_d
    iget-object v0, p1, Lorg/antlr/v4/runtime/RuleContext;->parent:Lorg/antlr/v4/runtime/RuleContext;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->fromRuleContext(Lorg/antlr/v4/runtime/atn/ATN;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    .line 85
    iget-object p0, p0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget p1, p1, Lorg/antlr/v4/runtime/RuleContext;->invokingState:I

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 86
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 87
    iget-object p0, p0, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget p0, p0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-static {v0, p0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2d
    :goto_2d
    sget-object p0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    return-object p0
.end method

.method public static getAllContextNodes(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ")",
            "Ljava/util/List<",
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_20

    .line 640
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_20

    .line 641
    :cond_9
    invoke-interface {p2, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 643
    :goto_10
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 644
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getAllContextNodes_(Lorg/antlr/v4/runtime/atn/PredictionContext;Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    :goto_20
    return-void
.end method

.method public static getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContextCache;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContextCache;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 551
    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_10

    return-object v0

    .line 556
    :cond_10
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->get(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 558
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 563
    :cond_1a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 564
    :goto_23
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_55

    .line 565
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContextCache;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v4

    if-nez v3, :cond_37

    .line 566
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v6

    if-eq v4, v6, :cond_52

    :cond_37
    if-nez v3, :cond_50

    .line 568
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v3, 0x0

    .line 569
    :goto_40
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v6

    if-ge v3, v6, :cond_4f

    .line 570
    invoke-virtual {p0, v3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v6

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_4f
    const/4 v3, 0x1

    .line 576
    :cond_50
    aput-object v4, v0, v2

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_55
    if-nez v3, :cond_5e

    .line 581
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->add(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 582
    invoke-virtual {p2, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 587
    :cond_5e
    array-length v2, v0

    if-nez v2, :cond_64

    .line 588
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    goto :goto_7d

    .line 590
    :cond_64
    array-length v2, v0

    if-ne v2, v5, :cond_72

    .line 591
    aget-object v0, v0, v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v0

    goto :goto_7d

    .line 594
    :cond_72
    move-object v1, p0

    check-cast v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 595
    new-instance v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    invoke-direct {v2, v0, v1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    move-object v0, v2

    .line 598
    :goto_7d
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/atn/PredictionContextCache;->add(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 599
    invoke-virtual {p2, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    if-eq p0, p1, :cond_44

    .line 152
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_44

    .line 154
    :cond_9
    instance-of v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v0, :cond_1a

    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v1, :cond_1a

    .line 155
    check-cast p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-static {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeSingletons(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p0

    return-object p0

    :cond_1a
    if-eqz p2, :cond_26

    .line 163
    instance-of v1, p0, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eqz v1, :cond_21

    return-object p0

    .line 164
    :cond_21
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eqz v1, :cond_26

    return-object p1

    :cond_26
    if-eqz v0, :cond_30

    .line 169
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V

    move-object p0, v0

    .line 171
    :cond_30
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    if-eqz v0, :cond_3c

    .line 172
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    invoke-direct {v0, p1}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;)V

    move-object p1, v0

    .line 174
    :cond_3c
    check-cast p0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    check-cast p1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-static {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeArrays(Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p0

    :cond_44
    :goto_44
    return-object p0
.end method

.method public static mergeArrays(Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;",
            "Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_1a

    .line 363
    invoke-virtual {v2, v0, v1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v3, :cond_11

    return-object v3

    .line 365
    :cond_11
    invoke-virtual {v2, v1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v3, :cond_1a

    return-object v3

    .line 374
    :cond_1a
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v3, v3

    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 376
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v4, v4

    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v5, v4, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 379
    :goto_30
    iget-object v10, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v10, v10

    const/4 v11, 0x1

    if-ge v7, v10, :cond_a8

    iget-object v10, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v10, v10

    if-ge v8, v10, :cond_a8

    .line 380
    iget-object v10, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v10, v10, v7

    .line 381
    iget-object v12, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v12, v12, v8

    .line 382
    iget-object v13, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v13, v13, v7

    iget-object v14, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v14, v14, v8

    if-ne v13, v14, :cond_84

    .line 384
    iget-object v13, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v13, v13, v7

    const v14, 0x7fffffff

    if-ne v13, v14, :cond_5c

    if-nez v10, :cond_5c

    if-nez v12, :cond_5c

    const/4 v14, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v14, 0x0

    :goto_5d
    if-eqz v10, :cond_68

    if-eqz v12, :cond_68

    .line 388
    invoke-virtual {v10, v12}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_68

    goto :goto_69

    :cond_68
    const/4 v11, 0x0

    :goto_69
    if-nez v14, :cond_7b

    if-eqz v11, :cond_70

    move/from16 v14, p2

    goto :goto_7d

    .line 395
    :cond_70
    move/from16 v14, p2

    invoke-static {v10, v12, v14, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v10

    .line 397
    aput-object v10, v5, v9

    .line 398
    aput v13, v3, v9

    goto :goto_81

    .line 388
    :cond_7b
    move/from16 v14, p2

    .line 391
    :goto_7d
    aput-object v10, v5, v9

    .line 392
    aput v13, v3, v9

    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 403
    :cond_84
    move/from16 v14, p2

    iget-object v11, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v11, v11, v7

    iget-object v13, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v13, v13, v8

    if-ge v11, v13, :cond_9b

    .line 404
    aput-object v10, v5, v9

    .line 405
    iget-object v10, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v10, v10, v7

    aput v10, v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    .line 409
    :cond_9b
    aput-object v12, v5, v9

    .line 410
    iget-object v10, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v10, v10, v8

    aput v10, v3, v9

    :goto_a3
    add-int/lit8 v8, v8, 0x1

    :goto_a5
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 417
    :cond_a8
    iget-object v10, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v10, v10

    if-ge v7, v10, :cond_c3

    .line 418
    :goto_ad
    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_d9

    .line 419
    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v8, v8, v7

    aput-object v8, v5, v9

    .line 420
    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v8, v8, v7

    aput v8, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 425
    :cond_c3
    :goto_c3
    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v7, v7

    if-ge v8, v7, :cond_d9

    .line 426
    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->parents:[Lorg/antlr/v4/runtime/atn/PredictionContext;

    aget-object v7, v7, v8

    aput-object v7, v5, v9

    .line 427
    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    aget v7, v7, v8

    aput v7, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    :cond_d9
    if-ge v9, v4, :cond_f6

    if-ne v9, v11, :cond_eb

    .line 435
    aget-object v4, v5, v6

    aget v3, v3, v6

    invoke-static {v4, v3}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object v3

    if-eqz v2, :cond_ea

    .line 438
    invoke-virtual {v2, v0, v1, v3}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    return-object v3

    .line 441
    :cond_eb
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 442
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 445
    :cond_f6
    new-instance v4, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-direct {v4, v5, v3}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    .line 450
    invoke-virtual {v4, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    if-eqz v2, :cond_106

    .line 451
    invoke-virtual {v2, v0, v1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_106
    return-object v0

    .line 454
    :cond_107
    invoke-virtual {v4, v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    if-eqz v2, :cond_112

    .line 455
    invoke-virtual {v2, v0, v1, v1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_112
    return-object v1

    .line 459
    :cond_113
    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->combineCommonParents([Lorg/antlr/v4/runtime/atn/PredictionContext;)V

    if-eqz v2, :cond_11b

    .line 461
    invoke-virtual {v2, v0, v1, v4}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11b
    return-object v4
.end method

.method public static mergeRoot(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Z)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 314
    sget-object p2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, p2, :cond_8

    return-object p2

    :cond_8
    if-ne p1, p2, :cond_44

    return-object p2

    .line 318
    :cond_b
    sget-object p2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, p2, :cond_12

    if-ne p1, p2, :cond_12

    return-object p2

    :cond_12
    const v1, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p0, p2, :cond_2e

    .line 320
    iget p0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    .line 321
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 322
    new-instance p2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v4, v4, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    filled-new-array {p0, v1}, [I

    move-result-object p0

    invoke-direct {p2, v4, p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    return-object p2

    :cond_2e
    if-ne p1, p2, :cond_44

    .line 327
    iget p1, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    .line 328
    iget-object p0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 329
    new-instance p2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v4, v4, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object p0, v4, v3

    aput-object v0, v4, v2

    filled-new-array {p1, v1}, [I

    move-result-object p0

    invoke-direct {p2, v4, p0}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    return-object p2

    :cond_44
    return-object v0
.end method

.method public static mergeSingletons(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;",
            "Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;",
            "Z",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;"
        }
    .end annotation

    if-eqz p3, :cond_14

    .line 212
    invoke-virtual {p3, p0, p1}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_b

    return-object v0

    .line 214
    :cond_b
    invoke-virtual {p3, p1, p0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz v0, :cond_14

    return-object v0

    .line 218
    :cond_14
    invoke-static {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->mergeRoot(Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;Z)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p3, :cond_1f

    .line 220
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0

    .line 224
    :cond_20
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-ne v0, v1, :cond_44

    .line 225
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-static {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p2

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-ne p2, v0, :cond_33

    return-object p0

    .line 228
    :cond_33
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-ne p2, v0, :cond_38

    return-object p1

    .line 233
    :cond_38
    iget v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    invoke-static {p2, v0}, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->create(Lorg/antlr/v4/runtime/atn/PredictionContext;I)Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    move-result-object p2

    if-eqz p3, :cond_43

    .line 234
    invoke-virtual {p3, p0, p1, p2}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    return-object p2

    :cond_44
    if-eq p0, p1, :cond_57

    .line 240
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    if-eqz p2, :cond_55

    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p2, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    goto :goto_57

    :cond_55
    const/4 p2, 0x0

    goto :goto_59

    .line 241
    :cond_57
    :goto_57
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    :goto_59
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_86

    .line 245
    iget v3, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v4, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 246
    iget v4, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v5, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-le v4, v5, :cond_74

    .line 247
    iget v4, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v4, v3, v2

    .line 248
    iget v4, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v4, v3, v1

    .line 250
    :cond_74
    nop

    .line 251
    new-instance v4, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object p2, v0, v2

    aput-object p2, v0, v1

    invoke-direct {v4, v0, v3}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    if-eqz p3, :cond_85

    .line 252
    invoke-virtual {p3, p0, p1, v4}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    return-object v4

    .line 258
    :cond_86
    iget p2, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    filled-new-array {p2, v3}, [I

    move-result-object p2

    .line 259
    new-array v3, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v4, v3, v2

    iget-object v4, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v4, v3, v1

    .line 260
    iget v4, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    iget v5, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    if-le v4, v5, :cond_b0

    .line 261
    iget v3, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v3, p2, v2

    .line 262
    iget v3, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->returnState:I

    aput v3, p2, v1

    .line 263
    new-array v3, v0, [Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v0, v3, v2

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;->parent:Lorg/antlr/v4/runtime/atn/PredictionContext;

    aput-object v0, v3, v1

    .line 265
    :cond_b0
    new-instance v0, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    invoke-direct {v0, v3, p2}, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;-><init>([Lorg/antlr/v4/runtime/atn/PredictionContext;[I)V

    if-eqz p3, :cond_ba

    .line 266
    invoke-virtual {p3, p0, p1, v0}, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    return-object v0
.end method

.method public static toDOTString(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_5

    .line 486
    const-string p0, ""

    return-object p0

    .line 487
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "digraph G {\nrankdir=LR;\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getAllContextNodes(Lorg/antlr/v4/runtime/atn/PredictionContext;)Ljava/util/List;

    move-result-object p0

    .line 492
    new-instance v1, Lorg/antlr/v4/runtime/atn/PredictionContext$1;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/atn/PredictionContext$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 499
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "]\"];\n"

    const-string v4, "  s"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 500
    instance-of v7, v2, Lorg/antlr/v4/runtime/atn/SingletonPredictionContext;

    const-string v8, "$"

    if-eqz v7, :cond_5b

    .line 501
    iget v3, v2, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    .line 502
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v2, v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v3

    .line 504
    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-eqz v2, :cond_49

    goto :goto_4d

    :cond_49
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 505
    :goto_4d
    const-string v2, " [label=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"];\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 508
    :cond_5b
    check-cast v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;

    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const-string v4, " [shape=box, label=\"["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ArrayPredictionContext;->returnStates:[I

    array-length v4, v2

    const/4 v7, 0x0

    :goto_6e
    if-ge v7, v4, :cond_89

    aget v9, v2, v7

    if-nez v6, :cond_79

    .line 514
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    const v6, 0x7fffffff

    if-ne v9, v6, :cond_82

    .line 515
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 516
    :cond_82
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_85
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_6e

    .line 519
    :cond_89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 523
    :cond_8d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_91
    :goto_91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/PredictionContext;

    .line 524
    sget-object v2, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne v1, v2, :cond_a2

    goto :goto_91

    :cond_a2
    const/4 v2, 0x0

    .line 525
    :goto_a3
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v7

    if-ge v2, v7, :cond_91

    .line 526
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v7

    if-nez v7, :cond_b0

    goto :goto_ea

    .line 527
    :cond_b0
    iget v7, v1, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    .line 528
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v7, "->s"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v7

    iget v7, v7, Lorg/antlr/v4/runtime/atn/PredictionContext;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v7

    if-le v7, v6, :cond_e5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " [label=\"parent["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ea

    .line 533
    :cond_e5
    const-string v7, ";\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 537
    :cond_ed
    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;
.end method

.method public abstract getReturnState(I)I
.end method

.method public hasEmptyPath()Z
    .registers 4

    .line 103
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 108
    iget v0, p0, Lorg/antlr/v4/runtime/atn/PredictionContext;->cachedHashCode:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 98
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract size()I
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStrings(Lorg/antlr/v4/runtime/Recognizer;I)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 654
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionContext;->EMPTY:Lorg/antlr/v4/runtime/atn/EmptyPredictionContext;

    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->toStrings(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/atn/PredictionContext;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStrings(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/atn/PredictionContext;I)[Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 667
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move v8, p3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p0

    .line 669
    :goto_16
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_98

    if-eq v5, p2, :cond_98

    .line 671
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v9

    if-lez v9, :cond_49

    const/4 v9, 0x1

    :goto_25
    shl-int v10, v4, v9

    .line 673
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v11

    if-ge v10, v11, :cond_30

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_30
    add-int/lit8 v10, v10, -0x1

    shr-int v11, v2, v7

    and-int/2addr v10, v11

    .line 679
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v11

    sub-int/2addr v11, v4

    if-lt v10, v11, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v11, 0x0

    :goto_3f
    and-int/2addr v6, v11

    .line 680
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->size()I

    move-result v11

    if-lt v10, v11, :cond_47

    goto :goto_b3

    :cond_47
    add-int/2addr v7, v9

    goto :goto_4a

    :cond_49
    const/4 v10, 0x0

    :goto_4a
    const/16 v9, 0x20

    if-eqz p1, :cond_6f

    .line 687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-le v11, v4, :cond_57

    .line 689
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    :cond_57
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v9

    .line 693
    iget-object v9, v9, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 694
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object v9

    iget v8, v8, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v8, v9, v8

    .line 695
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 697
    :cond_6f
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v8

    const v11, 0x7fffffff

    if-eq v8, v11, :cond_8e

    .line 698
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/PredictionContext;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8e

    .line 699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v4, :cond_87

    .line 701
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    :cond_87
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    :cond_8e
    :goto_8e
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getReturnState(I)I

    move-result v8

    .line 708
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/PredictionContext;->getParent(I)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v5

    goto/16 :goto_16

    .line 710
    :cond_98
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_b3

    .line 718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7
.end method
