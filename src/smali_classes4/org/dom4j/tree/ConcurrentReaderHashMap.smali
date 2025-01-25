.class Lorg/dom4j/tree/ConcurrentReaderHashMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;
    }
.end annotation


# static fields
.field public static DEFAULT_INITIAL_CAPACITY:I = 0x0

.field public static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4


# instance fields
.field protected final barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

.field protected transient count:I

.field protected transient entrySet:Ljava/util/Set;

.field protected transient keySet:Ljava/util/Set;

.field protected transient lastWrite:Ljava/lang/Object;

.field protected loadFactor:F

.field protected transient table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected threshold:I

.field protected transient values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    sput v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    const/high16 v1, 0x3f400000  # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f400000  # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iput p2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->p2capacity(I)I

    move-result v0

    new-array v1, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static hash(Ljava/lang/Object;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x11

    shl-int/lit8 v2, v0, 0x7

    sub-int/2addr v2, v0

    ushr-int/lit8 v0, v0, 0x9

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private p2capacity(I)I
    .registers 3

    const/high16 v0, 0x40000000  # 2.0f

    if-gt p1, v0, :cond_6

    if-gez p1, :cond_7

    :cond_6
    return v0

    :cond_7
    const/4 v0, 0x4

    :goto_8
    if-ge v0, p1, :cond_6

    shl-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_21

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_15
    if-ltz v1, :cond_2e

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    aget-object v0, v0, v1

    :goto_1b
    if-eqz v0, :cond_2a

    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_30

    goto :goto_1b

    :cond_2a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_15

    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public capacity()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move v1, v0

    :goto_6
    array-length v0, v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_21

    if-ge v1, v0, :cond_19

    aget-object v0, v2, v1

    :goto_b
    if-eqz v0, :cond_13

    const/4 v3, 0x0

    :try_start_e
    iput-object v3, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_21

    goto :goto_b

    :cond_13
    aput-object v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 12

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    iget-object v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v1, v6

    new-array v1, v1, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    const/4 v1, 0x0

    move v5, v1

    :goto_1c
    array-length v1, v6
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_1d} :catch_39
    .catchall {:try_start_2 .. :try_end_1d} :catchall_40

    if-ge v5, v1, :cond_43

    aget-object v1, v6, v5

    move-object v2, v3

    :goto_22
    if-eqz v1, :cond_33

    :try_start_24
    new-instance v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v8, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v9, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v10, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v4, v8, v9, v10, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_31
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_24 .. :try_end_31} :catch_39
    .catchall {:try_start_24 .. :try_end_31} :catchall_40

    move-object v2, v4

    goto :goto_22

    :cond_33
    aput-object v2, v7, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1c

    :catch_39
    move-exception v0

    :try_start_3a
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_43
    monitor-exit p0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v3

    move v0, v1

    :goto_e
    array-length v2, v3

    if-ge v0, v2, :cond_1e

    aget-object v2, v3, v0

    :goto_13
    if-eqz v2, :cond_22

    iget-object v4, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    iget-object v2, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_13

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method protected eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected findAndRemoveEntry(Ljava/util/Map$Entry;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    const/4 v0, 0x1

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v6

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int v3, v6, v1

    aget-object v1, v0, v3

    move-object v2, v1

    move-object v4, v1

    move v5, v3

    :goto_10
    if-nez v4, :cond_29

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    aget-object v0, v0, v5

    if-ne v2, v0, :cond_1e

    const/4 v0, 0x0

    :cond_1d
    return-object v0

    :cond_1e
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int v5, v6, v0

    aget-object v3, v1, v5

    move-object v0, v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_10

    :cond_29
    iget v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v1, v6, :cond_4b

    iget-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v0, :cond_1d

    monitor-enter p0

    :try_start_3a
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_48

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int v3, v6, v1

    aget-object v1, v0, v3

    move-object v2, v1

    move-object v4, v1

    move v5, v3

    goto :goto_10

    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    iget-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v1

    goto :goto_10
.end method

.method protected final getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .registers 3

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public loadFactor()F
    .registers 2

    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    if-nez p2, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    aget-object v2, v4, v5

    move-object v1, v2

    :goto_16
    if-eqz v1, :cond_24

    iget v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v0, v3, :cond_46

    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_24
    monitor-enter p0

    :try_start_25
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_4e

    if-ne v4, v0, :cond_5d

    if-nez v1, :cond_51

    aget-object v0, v4, v5

    if-ne v2, v0, :cond_5d

    :try_start_2f
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v0, v3, p1, p2, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_4e

    aput-object v0, v4, v5

    :try_start_36
    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v1, v2, :cond_4a

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    :goto_43
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4e

    :goto_45
    return-object v0

    :cond_46
    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v1, v0

    goto :goto_16

    :cond_4a
    :try_start_4a
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_43

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_4e

    aget-object v4, v4, v5

    if-ne v2, v4, :cond_5d

    if-eqz v0, :cond_5d

    :try_start_59
    iput-object p2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_45

    :cond_5d
    invoke-virtual {p0, p1, p2, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_4e

    goto :goto_45
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->size()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    monitor-exit p0

    return-void

    :cond_9
    :goto_9
    :try_start_9
    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_9

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_11

    goto :goto_1c
.end method

.method protected final recordModification(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->lastWrite:Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected rehash()V
    .registers 14

    iget-object v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v7, v6

    const/high16 v0, 0x40000000  # 2.0f

    if-lt v7, v0, :cond_d

    const v0, 0x7fffffff

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    :goto_c
    return-void

    :cond_d
    shl-int/lit8 v0, v7, 0x1

    add-int/lit8 v8, v0, -0x1

    int-to-float v1, v0

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    new-array v9, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    const/4 v0, 0x0

    move v5, v0

    :goto_1c
    if-ge v5, v7, :cond_57

    aget-object v4, v6, v5

    if-eqz v4, :cond_2c

    iget v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int v3, v0, v8

    iget-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v1, :cond_30

    aput-object v4, v9, v3

    :cond_2c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1c

    :cond_30
    move-object v0, v4

    :goto_31
    if-eqz v1, :cond_3d

    iget v2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int/2addr v2, v8

    if-eq v2, v3, :cond_5d

    move-object v0, v1

    :goto_39
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move v3, v2

    goto :goto_31

    :cond_3d
    aput-object v0, v9, v3

    move-object v1, v4

    :goto_40
    if-eq v1, v0, :cond_2c

    iget v2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int/2addr v2, v8

    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v4, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v10, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v11, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    aget-object v12, v9, v2

    invoke-direct {v3, v4, v10, v11, v12}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    aput-object v3, v9, v2

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_40

    :cond_57
    iput-object v9, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-virtual {p0, v9}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_c

    :cond_5d
    move v2, v3

    goto :goto_39
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    and-int v6, v3, v1

    aget-object v1, v5, v6

    move-object v4, v1

    :goto_f
    if-eqz v4, :cond_1d

    iget v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v2, v3, :cond_2a

    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_1d
    monitor-enter p0

    :try_start_1e
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_59

    if-ne v5, v2, :cond_5c

    if-nez v4, :cond_2e

    aget-object v2, v5, v6

    if-ne v1, v2, :cond_5c

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_59

    :goto_29
    return-object v0

    :cond_2a
    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v2

    goto :goto_f

    :cond_2e
    :try_start_2e
    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_59

    aget-object v2, v5, v6

    if-ne v1, v2, :cond_5c

    if-eqz v0, :cond_5c

    const/4 v2, 0x0

    :try_start_37
    iput-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    :goto_41
    if-eq v1, v4, :cond_52

    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v7, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v8, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v9, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v3, v7, v8, v9, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_59

    move-object v2, v3

    goto :goto_41

    :cond_52
    aput-object v2, v5, v6

    :try_start_54
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_29

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sremove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    goto :goto_29
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9

    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int v3, p3, v0

    aget-object v0, v2, v3

    move-object v1, v0

    :goto_a
    if-nez v1, :cond_26

    new-instance v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v1, p3, p1, p2, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    aput-object v1, v2, v3

    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v0, v2, :cond_22

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    :goto_20
    const/4 v0, 0x0

    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_20

    :cond_26
    iget v4, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v4, p3, :cond_37

    iget-object v4, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_21

    :cond_37
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_a
.end method

.method protected sremove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13

    const/4 v1, 0x0

    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    aget-object v2, v5, v6

    move-object v4, v2

    :goto_b
    if-eqz v4, :cond_41

    iget v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v0, p2, :cond_3d

    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    iput-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v3, v2

    :goto_26
    if-eq v3, v4, :cond_37

    new-instance v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v7, v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v8, v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v9, v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v2, v7, v8, v9, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    iget-object v3, v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v1, v2

    goto :goto_26

    :cond_37
    aput-object v1, v5, v6

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    :goto_3c
    return-object v0

    :cond_3d
    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v0

    goto :goto_b

    :cond_41
    move-object v0, v1

    goto :goto_3c
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method
