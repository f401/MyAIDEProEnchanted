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
        "Ljava/util/Set<",
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
            "Ljava/util/ArrayList<",
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
    .registers 2

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 3

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
    iget-boolean p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

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
    .registers 2

    .line 26
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .registers 3

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/antlr/v4/runtime/atn/ATNConfig;Lorg/antlr/v4/runtime/misc/DoubleKeyMap;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            "Lorg/antlr/v4/runtime/misc/DoubleKeyMap<",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            "Lorg/antlr/v4/runtime/atn/PredictionContext;",
            ">;)Z"
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_49

    .line 140
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v1, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    .line 141
    iput-boolean v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    .line 143
    :cond_d
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->getOuterContextDepth()I

    move-result v0

    if-lez v0, :cond_15

    .line 144
    iput-boolean v2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    .line 146
    :cond_15
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->getOrAdd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-ne v0, p1, :cond_28

    .line 148
    const/4 p2, -0x1

    iput p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 149
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    .line 153
    :cond_28
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    .line 154
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    iget-object v4, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    xor-int/2addr v1, v2

    invoke-static {v3, v4, v1, p2}, Lorg/antlr/v4/runtime/atn/PredictionContext;->merge(Lorg/antlr/v4/runtime/atn/PredictionContext;Lorg/antlr/v4/runtime/atn/PredictionContext;ZLorg/antlr/v4/runtime/misc/DoubleKeyMap;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object p2

    .line 159
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->reachesIntoOuterContext:I

    .line 163
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/ATNConfig;->isPrecedenceFilterSuppressed()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 164
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNConfig;->setPrecedenceFilterSuppressed(Z)V

    .line 167
    :cond_46
    iput-object p2, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    return v2

    .line 139
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This set is readonly"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;)Z"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->add(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z

    goto :goto_4

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 3

    .line 299
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_12

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
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 277
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    if-eqz v0, :cond_9

    .line 281
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 278
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not implemented for readonly sets."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public containsFast(Lorg/antlr/v4/runtime/atn/ATNConfig;)Z
    .registers 3

    .line 285
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    if-eqz v0, :cond_9

    .line 289
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->containsFast(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 286
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not implemented for readonly sets."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public elements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 234
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 239
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;

    .line 240
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->fullCtx:Z

    if-ne v1, v3, :cond_37

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-ne v1, v3, :cond_37

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    if-ne v1, v3, :cond_37

    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    iget-boolean v3, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    if-ne v1, v3, :cond_37

    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    iget-boolean p1, p1, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    if-ne v1, p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0
.end method

.method public get(I)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 3

    .line 209
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object p1
.end method

.method public getAlts()Ljava/util/BitSet;
    .registers 4

    .line 192
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 193
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 194
    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public getPredicates()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 202
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    sget-object v4, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v3, v4, :cond_b

    .line 203
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->semanticContext:Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public getStates()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/antlr/v4/runtime/atn/ATNState;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 177
    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATNConfig;->state:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 254
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 255
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 256
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    .line 259
    :cond_13
    iget v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->cachedHashCode:I

    return v0

    .line 262
    :cond_16
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
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
    .registers 5

    .line 212
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    if-nez v0, :cond_29

    .line 213
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 215
    :cond_d
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 217
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    invoke-virtual {p1, v2}, Lorg/antlr/v4/runtime/atn/ATNSimulator;->getCachedContext(Lorg/antlr/v4/runtime/atn/PredictionContext;)Lorg/antlr/v4/runtime/atn/PredictionContext;

    move-result-object v2

    iput-object v2, v1, Lorg/antlr/v4/runtime/atn/ATNConfig;->context:Lorg/antlr/v4/runtime/atn/PredictionContext;

    goto :goto_13

    :cond_28
    return-void

    .line 212
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This set is readonly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 339
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 354
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setReadonly(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->readonly:Z

    .line 311
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    return-void
.end method

.method public size()I
    .registers 2

    .line 267
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->toArray()[Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
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

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Lorg/antlr/v4/runtime/atn/ATNConfig;
    .registers 2

    .line 329
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->configLookup:Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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

    if-eqz v1, :cond_1e

    const-string v1, ",hasSemanticContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->hasSemanticContext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    :cond_1e
    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    if-eqz v1, :cond_2c

    const-string v1, ",uniqueAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->uniqueAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    :cond_2c
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    if-eqz v1, :cond_3a

    const-string v1, ",conflictingAlts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->conflictingAlts:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    :cond_3a
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->dipsIntoOuterContext:Z

    if-eqz v1, :cond_43

    const-string v1, ",dipsIntoOuterContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
