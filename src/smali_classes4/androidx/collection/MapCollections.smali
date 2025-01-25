.class abstract Landroidx/collection/MapCollections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/MapCollections$ArrayIterator;,
        Landroidx/collection/MapCollections$EntrySet;,
        Landroidx/collection/MapCollections$KeySet;,
        Landroidx/collection/MapCollections$MapIterator;,
        Landroidx/collection/MapCollections$ValuesCollection;
    }
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
.field mEntrySet:Landroidx/collection/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroidx/collection/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroidx/collection/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_1e

    check-cast p1, Ljava/util/Set;

    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1b

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_18} :catch_20
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_18} :catch_1d

    move-result v2

    if-nez v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4

    :catch_1d
    move-exception v0

    :cond_1e
    :goto_1e
    move v0, v1

    goto :goto_4

    :catch_20
    move-exception v0

    goto :goto_1e
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/collection/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$EntrySet;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Landroidx/collection/MapCollections$EntrySet;

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/collection/MapCollections$KeySet;

    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$KeySet;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Landroidx/collection/MapCollections$KeySet;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/collection/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$ValuesCollection;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    :cond_b
    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Landroidx/collection/MapCollections$ValuesCollection;

    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    return-object v2
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v2

    array-length v0, p1

    if-ge v0, v2, :cond_28

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_15
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1, p2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_21
    array-length v1, v0

    if-le v1, v2, :cond_27

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_27
    return-object v0

    :cond_28
    move-object v0, p1

    goto :goto_15
.end method
