.class public Lorg/antlr/v4/runtime/atn/ATNConfigSet;
.super Ljava/lang/Object;
.source "ATNConfigSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;,
        Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigEqualityComparator;,
        Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigHashSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Lorg/antlr/v4/runtime/atn/ATNConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedHashCode:I

.field public configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

.field public final configs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected conflictingAlts:Ljava/util/BitSet;

.field public dipsIntoOuterContext:Z

.field public final fullCtx:Z

.field public hasSemanticContext:Z

.field protected readonly:Z

.field public uniqueAlt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 1

    .line 112
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    .line 113
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    .line 115
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    .line 116
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 117
    iget-boolean v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 106
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigHashSet;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$ConfigHashSet;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    .line 107
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .line 26
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap",
            "<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    .line 139
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_4

    .line 140
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v1, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v0, v1, :cond_0

    .line 141
    iput-boolean v4, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    iput-boolean v4, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-ne v0, p1, :cond_2

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 149
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_0
    return v4

    .line 153
    :cond_2
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    .line 154
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3, v1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v1

    .line 159
    iget v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 163
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNConfig;->setPrecedenceFilterSuppressed(Z)V

    .line 167
    :cond_3
    iput-object v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    goto :goto_0

    .line 139
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;)Z"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 299
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 302
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->clear()V

    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not implemented for readonly sets."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsFast(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .locals 2

    .line 285
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not implemented for readonly sets."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 239
    :cond_2
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 240
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public get(I)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object v0
.end method

.method public getAlts()Ljava/util/BitSet;
    .locals 3

    .line 192
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 193
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 194
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPredicates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 202
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v4, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v3, v4, :cond_0

    .line 203
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getStates()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 177
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 254
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 259
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 262
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public optimizeConfigs(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V
    .locals 3

    .line 212
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 217
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p1, v2}, Lorg/antlr/v4/runtime/atn/ATNSimulator;->getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v2

    iput-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    goto :goto_0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setReadonly(Z)V
    .locals 1

    .line 310
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    return-void
.end method

.method public size()I
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->toArray()[Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->elements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-eqz v1, :cond_0

    const-string v1, ",hasSemanticContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v1, :cond_1

    const-string v1, ",uniqueAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    if-eqz v1, :cond_2

    const-string v1, ",conflictingAlts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    if-eqz v1, :cond_3

    const-string v1, ",dipsIntoOuterContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
