.class public final enum Lorg/antlr/v4/runtime/atn/PredictionMode;
.super Ljava/lang/Enum;
.source "PredictionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextConfigEqualityComparator;,
        Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/antlr/v4/runtime/atn/PredictionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/antlr/v4/runtime/atn/PredictionMode;

.field public static final enum LL:Lorg/antlr/v4/runtime/atn/PredictionMode;

.field public static final enum LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/PredictionMode;

.field public static final enum SLL:Lorg/antlr/v4/runtime/atn/PredictionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v0, Lorg/antlr/v4/runtime/atn/PredictionMode;

    const-string v1, "SLL"

    invoke-direct {v0, v1, v4}, Lorg/antlr/v4/runtime/atn/PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode;->SLL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    .line 65
    new-instance v1, Lorg/antlr/v4/runtime/atn/PredictionMode;

    const-string v2, "LL"

    invoke-direct {v1, v2, v5}, Lorg/antlr/v4/runtime/atn/PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    .line 83
    new-instance v2, Lorg/antlr/v4/runtime/atn/PredictionMode;

    const-string v3, "LL_EXACT_AMBIG_DETECTION"

    invoke-direct {v2, v3, v6}, Lorg/antlr/v4/runtime/atn/PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/antlr/v4/runtime/atn/PredictionMode;->LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/PredictionMode;

    .line 24
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/antlr/v4/runtime/atn/PredictionMode;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/antlr/v4/runtime/atn/PredictionMode;->$VALUES:[Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static allConfigsInRuleStopStates(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 279
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static allSubsetsConflict(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 441
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasNonConflictingAltSet(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static allSubsetsEqual(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 486
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 488
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 490
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAlts(Ljava/util/Collection;)Ljava/util/BitSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 517
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 518
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 519
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getAlts(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .locals 3

    .line 530
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 531
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 532
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v2, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;

    invoke-direct {v2}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;-><init>()V

    .line 548
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 549
    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_0

    .line 551
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 552
    invoke-virtual {v2, v0, v1}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_0
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/PredictionMode$AltAndContextMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleViableAlt(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 589
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 590
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 591
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 592
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 593
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    move v0, v1

    .line 597
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getStateToAltMap(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfigSet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 569
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 570
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_0

    .line 572
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 573
    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_0
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static getUniqueAlt(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 503
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getAlts(Ljava/util/Collection;)Ljava/util/BitSet;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static hasConfigInRuleStopState(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z
    .locals 2

    .line 258
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 259
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasConflictingAltSet(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    .line 470
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 471
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNonConflictingAltSet(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    .line 453
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 454
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSLLConflictTerminatingPrediction(Lorg/antlr/v4/runtime/atn/PredictionMode;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z
    .locals 6

    const/4 v2, 0x1

    .line 218
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->allConfigsInRuleStopStates(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return v2

    .line 223
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode;->SLL:Lorg/antlr/v4/runtime/atn/PredictionMode;

    if-ne p0, v0, :cond_2

    .line 227
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-eqz v0, :cond_2

    .line 229
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>()V

    .line 230
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 231
    new-instance v4, Lorg/antlr/v4/runtime/atn/ATNConfig;

    sget-object v5, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-direct {v4, v0, v5}, Lorg/antlr/v4/runtime/atn/ATNConfig;-><init>(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 232
    invoke-virtual {v1, v4}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 230
    :cond_2
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getConflictingAltSubsets(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Collection;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasConflictingAltSet(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/PredictionMode;->hasStateAssociatedWithOneAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static hasStateAssociatedWithOneAlt(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Z
    .locals 3

    const/4 v1, 0x1

    .line 581
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getStateToAltMap(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/Map;

    move-result-object v0

    .line 582
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 583
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolvesToJustOneViableAlt(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    .line 429
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/PredictionMode;->getSingleViableAlt(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/PredictionMode;
    .locals 1

    .line 24
    const-class v0, Lorg/antlr/v4/runtime/atn/PredictionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-object v0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/PredictionMode;
    .locals 1

    .line 24
    sget-object v0, Lorg/antlr/v4/runtime/atn/PredictionMode;->$VALUES:[Lorg/antlr/v4/runtime/atn/PredictionMode;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/PredictionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/PredictionMode;

    return-object v0
.end method
