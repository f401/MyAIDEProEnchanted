.class final Lcom/google/common/collect/Synchronized;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Synchronized$SynchronizedAsMap;,
        Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;,
        Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;,
        Lcom/google/common/collect/Synchronized$SynchronizedBiMap;,
        Lcom/google/common/collect/Synchronized$SynchronizedCollection;,
        Lcom/google/common/collect/Synchronized$SynchronizedDeque;,
        Lcom/google/common/collect/Synchronized$SynchronizedEntry;,
        Lcom/google/common/collect/Synchronized$SynchronizedList;,
        Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;,
        Lcom/google/common/collect/Synchronized$SynchronizedMap;,
        Lcom/google/common/collect/Synchronized$SynchronizedMultimap;,
        Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,
        Lcom/google/common/collect/Synchronized$SynchronizedNavigableMap;,
        Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedObject;,
        Lcom/google/common/collect/Synchronized$SynchronizedQueue;,
        Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;,
        Lcom/google/common/collect/Synchronized$SynchronizedSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;,
        Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;,
        Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;,
        Lcom/google/common/collect/Synchronized$SynchronizedTable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static biMap(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Lcom/google/common/collect/BiMap;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1154
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;

    if-nez v0, :cond_9

    instance-of v0, p0, Lcom/google/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_a

    .line 1157
    :cond_9
    :goto_9
    return-object p0

    :cond_a
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/Synchronized$1;)V

    move-object p0, v0

    goto :goto_9
.end method

.method private static collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    return-object v0
.end method

.method static deque(Ljava/util/Deque;Ljava/lang/Object;)Ljava/util/Deque;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation

    .line 1701
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;-><init>(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .line 305
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method static listMultimap(Lcom/google/common/collect/ListMultimap;Ljava/lang/Object;)Lcom/google/common/collect/ListMultimap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 699
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/google/common/collect/BaseImmutableMultimap;

    if-eqz v0, :cond_9

    .line 702
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;-><init>(Lcom/google/common/collect/ListMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_8
.end method

.method static map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .line 961
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method static multimap(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 512
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/google/common/collect/BaseImmutableMultimap;

    if-eqz v0, :cond_9

    .line 515
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_8
.end method

.method static multiset(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Lcom/google/common/collect/Multiset;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .line 416
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_9

    .line 419
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;-><init>(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_8
.end method

.method static navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1399
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method static navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1405
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .line 1394
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method static navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .line 1389
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p0  # Ljava/util/Map$Entry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1590
    if-nez p0, :cond_4

    .line 1591
    const/4 v0, 0x0

    .line 1593
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .line 1648
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedQueue;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_4
.end method

.method static set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static setMultimap(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)Lcom/google/common/collect/SetMultimap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 742
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/google/common/collect/BaseImmutableMultimap;

    if-eqz v0, :cond_9

    .line 745
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_8
.end method

.method static sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1093
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static sortedSetMultimap(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lcom/google/common/collect/SortedSetMultimap;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 797
    instance-of v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;

    if-eqz v0, :cond_5

    .line 800
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;-><init>(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_4
.end method

.method static table(Lcom/google/common/collect/Table;Ljava/lang/Object;)Lcom/google/common/collect/Table;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 1838
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedTable;-><init>(Lcom/google/common/collect/Table;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .line 847
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    .line 848
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 856
    :goto_a
    return-object v0

    .line 850
    :cond_b
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_16

    .line 851
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 853
    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    .line 854
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 856
    :cond_21
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_a
.end method

.method private static typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .line 860
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    .line 861
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 863
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a
.end method
