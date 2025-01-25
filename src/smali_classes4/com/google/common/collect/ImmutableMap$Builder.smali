.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field alternatingKeysAndValues:[Ljava/lang/Object;

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 221
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 222
    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 227
    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 228
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 229
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    array-length v2, v0

    if-le v1, v2, :cond_17

    .line 233
    array-length v1, v0

    .line 236
    mul-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    .line 234
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 240
    :cond_17
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->sortEntries()V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 338
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "valueComparator was already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 311
    const-string v0, "valueComparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 312
    return-object p0

    .line 310
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 249
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    .line 251
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    .line 252
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 253
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 264
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 288
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 289
    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 291
    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_15

    .line 294
    :cond_25
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method sortEntries()V
    .registers 8

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_66

    .line 343
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_15

    .line 344
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 346
    :cond_15
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    new-array v2, v0, [Ljava/util/Map$Entry;

    move v0, v1

    .line 347
    :goto_1a
    iget v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    if-ge v0, v3, :cond_34

    .line 348
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    mul-int/lit8 v5, v0, 0x2

    aget-object v5, v3, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 352
    :cond_34
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 353
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 352
    invoke-static {v2, v1, v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 354
    :goto_45
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v0, :cond_66

    .line 355
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 359
    :cond_66
    return-void
.end method
