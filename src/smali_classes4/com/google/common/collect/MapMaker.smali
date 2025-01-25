.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$Dummy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field useCustomMap:Z

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 99
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 110
    return-void
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_8
    const-string v3, "concurrency level was already set to %s"

    iget v4, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 182
    if-lez p1, :cond_19

    :goto_11
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 184
    return-object p0

    :cond_17
    move v0, v2

    .line 178
    goto :goto_8

    :cond_19
    move v1, v2

    .line 182
    goto :goto_11
.end method

.method getConcurrencyLevel()I
    .registers 3

    .line 188
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    :cond_6
    return v0
.end method

.method getInitialCapacity()I
    .registers 3

    .line 154
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x10

    :cond_7
    return v0
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_8
    const-string v3, "initial capacity was already set to %s"

    iget v4, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 148
    if-ltz p1, :cond_19

    :goto_11
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    iput p1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 150
    return-object p0

    :cond_17
    move v0, v2

    .line 144
    goto :goto_8

    :cond_19
    move v1, v2

    .line 148
    goto :goto_11
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    const-string v2, "key equivalence was already set to %s"

    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 124
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 125
    return-object p0

    .line 122
    :cond_18
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_14

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 283
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->create(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    goto :goto_13
.end method

.method setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .registers 6

    const/4 v1, 0x1

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_6
    const-string v2, "Key strength was already set to %s"

    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 211
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1b

    .line 213
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 215
    :cond_1b
    return-object p0

    .line 209
    :cond_1c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .registers 6

    const/4 v1, 0x1

    .line 255
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_6
    const-string v2, "Value strength was already set to %s"

    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 257
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1b

    .line 259
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 261
    :cond_1b
    return-object p0

    .line 255
    :cond_1c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    .line 292
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    if-eq v1, v3, :cond_e

    .line 294
    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 296
    :cond_e
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_17

    .line 297
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 299
    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_28

    .line 300
    const-string v2, "keyStrength"

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 302
    :cond_28
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_39

    .line 303
    const-string v2, "valueStrength"

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 305
    :cond_39
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_42

    .line 306
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 308
    :cond_42
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .registers 2

    .line 205
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/common/collect/MapMaker;
    .registers 2

    .line 241
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
