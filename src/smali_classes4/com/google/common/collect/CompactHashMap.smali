.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$ValuesView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field private transient size:I

.field private transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient threshold:I

.field transient values:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 163
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 164
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 172
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 173
    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    .line 175
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeEntry(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashMap;)I
    .registers 2

    .line 70
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .registers 4

    .line 211
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .registers 4

    .line 216
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, -0x1

    .line 344
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    aget v0, v0, v3

    .line 346
    :goto_e
    if-eq v0, v1, :cond_2a

    .line 347
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v3, v0

    .line 348
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v3

    if-ne v3, v2, :cond_25

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 353
    :goto_24
    return v0

    .line 351
    :cond_25
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v0

    goto :goto_e

    :cond_2a
    move v0, v1

    .line 353
    goto :goto_24
.end method

.method private static newEntries(I)[J
    .registers 5

    .line 201
    new-array v0, p0, [J

    .line 202
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 203
    return-object v0
.end method

.method private static newTable(I)[I
    .registers 3

    .line 195
    new-array v0, p0, [I

    .line 196
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 197
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 789
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 790
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 791
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 792
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    .line 793
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 794
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 795
    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 797
    :cond_1d
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 378
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    and-int v5, v0, p2

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v2, v0, v5

    .line 380
    if-ne v2, v1, :cond_10

    move-object v0, v4

    .line 408
    :goto_f
    return-object v0

    :cond_10
    move v0, v1

    .line 385
    :goto_11
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v3, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v3

    if-ne v3, p2, :cond_59

    .line 386
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 389
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 391
    if-ne v0, v1, :cond_48

    .line 393
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v1

    aput v1, v0, v5

    .line 399
    :goto_37
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 400
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 401
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    move-object v0, v3

    .line 402
    goto :goto_f

    .line 396
    :cond_48
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v1, v0

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v4

    aput-wide v4, v1, v0

    goto :goto_37

    .line 406
    :cond_59
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v0, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v3

    .line 407
    if-ne v3, v1, :cond_65

    move-object v0, v4

    .line 408
    goto :goto_f

    :cond_65
    move v0, v2

    move v2, v3

    .line 407
    goto :goto_11
.end method

.method private removeEntry(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v1, v0

    .line 291
    if-le p1, v1, :cond_17

    .line 292
    const/4 v0, 0x1

    ushr-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 293
    if-gez v0, :cond_12

    .line 294
    const v0, 0x7fffffff

    .line 296
    :cond_12
    if-eq v0, v1, :cond_17

    .line 297
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 300
    :cond_17
    return-void
.end method

.method private resizeTable(I)V
    .registers 14

    .line 319
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 320
    array-length v0, v0

    .line 321
    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_d

    .line 322
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 341
    :goto_c
    return-void

    .line 325
    :cond_d
    int-to-float v0, p1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 326
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 329
    array-length v4, v2

    .line 330
    const/4 v0, 0x0

    :goto_1a
    iget v5, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v5, :cond_3c

    .line 331
    aget-wide v6, v3, v0

    .line 332
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v5

    .line 333
    add-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v5

    .line 334
    aget v7, v2, v6

    .line 335
    aput v0, v2, v6

    .line 336
    int-to-long v8, v5

    int-to-long v6, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v3, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 339
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 340
    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    goto :goto_c
.end method

.method private static swapNext(JI)J
    .registers 9

    .line 221
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 780
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 781
    const/4 v0, 0x0

    :goto_9
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_1e

    .line 782
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 783
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 785
    :cond_1e
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .registers 2

    .line 230
    return-void
.end method

.method adjustAfterRemove(II)I
    .registers 4

    .line 472
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public clear()V
    .registers 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 766
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 767
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 768
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 771
    iput v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 772
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 358
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, 0x0

    .line 691
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v2, :cond_11

    .line 692
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 693
    const/4 v1, 0x1

    .line 696
    :cond_11
    return v1

    .line 691
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method createEntrySet()Ljava/util/Set;
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

    .line 579
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .line 524
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
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

    .line 575
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .line 625
    new-instance v0, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method firstEntryIndex()I
    .registers 2

    .line 459
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 366
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_b
.end method

.method getSuccessor(I)I
    .registers 4

    .line 463
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_9

    add-int/lit8 v0, p1, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method init(IF)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    if-ltz p1, :cond_3a

    move v0, v1

    :goto_5
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_10

    move v2, v1

    :cond_10
    const-string v0, "Illegal load factor"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 183
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 184
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 185
    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    .line 187
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 188
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 191
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 192
    return-void

    :cond_3a
    move v0, v2

    .line 181
    goto :goto_5
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 11
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    int-to-long v2, p4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 286
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 686
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method keySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .line 562
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .registers 10

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 421
    if-ge p1, v2, :cond_49

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v0, v2

    aput-object v1, v0, p1

    .line 424
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    .line 425
    aput-object v4, v0, v2

    .line 426
    aput-object v4, v1, v2

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v0, v2

    .line 430
    aput-wide v4, v0, p1

    .line 431
    aput-wide v6, v0, v2

    .line 435
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v1

    and-int/2addr v1, v0

    .line 436
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v0, v3, v1

    .line 437
    if-ne v0, v2, :cond_36

    .line 439
    aput p1, v3, v1

    .line 456
    :goto_34
    return-void

    :cond_35
    move v0, v1

    .line 446
    :cond_36
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v1

    .line 447
    if-ne v1, v2, :cond_35

    .line 449
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    goto :goto_34

    .line 452
    :cond_49
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v4, v0, p1

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v4, v0, p1

    .line 454
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v6, v0, p1

    goto :goto_34
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v10, -0x1

    .line 236
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 237
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 238
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 241
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    and-int v1, v0, v5

    .line 242
    iget v6, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 243
    iget-object v7, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v0, v7, v1

    .line 244
    if-ne v0, v10, :cond_3f

    .line 245
    aput v6, v7, v1

    .line 265
    :goto_1b
    const v0, 0x7fffffff

    if-eq v6, v0, :cond_65

    .line 268
    add-int/lit8 v0, v6, 0x1

    .line 269
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    .line 270
    invoke-virtual {p0, v6, p1, p2, v5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 271
    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 272
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    if-lt v6, v0, :cond_36

    .line 273
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 275
    :cond_36
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 276
    const/4 v0, 0x0

    :goto_3d
    return-object v0

    :cond_3e
    move v0, v1

    .line 250
    :cond_3f
    aget-wide v8, v2, v0

    .line 252
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v1

    if-ne v1, v5, :cond_58

    aget-object v1, v3, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 255
    aget-object v1, v4, v0

    .line 257
    aput-object p2, v4, v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    move-object v0, v1

    .line 259
    goto :goto_3d

    .line 261
    :cond_58
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v1

    .line 262
    if-ne v1, v10, :cond_3e

    .line 263
    invoke-static {v8, v9, v6}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v8

    aput-wide v8, v2, v0

    goto :goto_1b

    .line 266
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 373
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method resizeEntries(I)V
    .registers 6

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 310
    array-length v1, v0

    .line 311
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 312
    if-le p1, v1, :cond_1e

    .line 313
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 315
    :cond_1e
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 316
    return-void
.end method

.method public size()I
    .registers 2

    .line 681
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public trimToSize()V
    .registers 7

    .line 743
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 744
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 745
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 751
    :cond_a
    const/4 v0, 0x1

    int-to-float v2, v1

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 752
    const/high16 v2, 0x40000000  # 2.0f

    if-ge v0, v2, :cond_2e

    .line 753
    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 754
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2e

    .line 755
    shl-int/lit8 v0, v0, 0x1

    .line 759
    :cond_2e
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 760
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 762
    :cond_36
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .line 729
    new-instance v0, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method
